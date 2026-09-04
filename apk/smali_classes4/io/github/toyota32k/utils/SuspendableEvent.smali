.class public final Lio/github/toyota32k/utils/SuspendableEvent;
.super Ljava/lang/Object;
.source "SuspendableEvent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuspendableEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuspendableEvent.kt\nio/github/toyota32k/utils/SuspendableEvent\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,79:1\n116#2,11:80\n116#2,11:91\n116#2,11:102\n116#2,11:113\n*S KotlinDebug\n*F\n+ 1 SuspendableEvent.kt\nio/github/toyota32k/utils/SuspendableEvent\n*L\n32#1:80,11\n42#1:91,11\n52#1:102,11\n64#1:113,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "use FlowableEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000e\u0010\u000c\u001a\u00020\tH\u0086@\u00a2\u0006\u0002\u0010\rJ\u000e\u0010\u000e\u001a\u00020\tH\u0086@\u00a2\u0006\u0002\u0010\rJ\u000e\u0010\u000f\u001a\u00020\tH\u0086@\u00a2\u0006\u0002\u0010\rJ\"\u0010\u0010\u001a\u0002H\u0011\"\u0004\u0008\u0000\u0010\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u0013H\u0086@\u00a2\u0006\u0002\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lio/github/toyota32k/utils/SuspendableEvent;",
        "",
        "signal",
        "",
        "autoReset",
        "<init>",
        "(ZZ)V",
        "channel",
        "Lkotlinx/coroutines/channels/Channel;",
        "",
        "mutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "set",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "reset",
        "waitOne",
        "withLock",
        "T",
        "action",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final autoReset:Z

.field private final channel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final mutex:Lkotlinx/coroutines/sync/Mutex;

.field private signal:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p1, p0, Lio/github/toyota32k/utils/SuspendableEvent;->signal:Z

    iput-boolean p2, p0, Lio/github/toyota32k/utils/SuspendableEvent;->autoReset:Z

    const/4 p1, 0x6

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 19
    invoke-static {p2, v0, v0, p1, v0}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    iput-object p1, p0, Lio/github/toyota32k/utils/SuspendableEvent;->channel:Lkotlinx/coroutines/channels/Channel;

    const/4 p1, 0x0

    .line 20
    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lio/github/toyota32k/utils/SuspendableEvent;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 23
    iget-boolean p1, p0, Lio/github/toyota32k/utils/SuspendableEvent;->signal:Z

    if-nez p1, :cond_0

    .line 24
    new-instance p1, Lio/github/toyota32k/utils/SuspendableEvent$1;

    invoke-direct {p1, p0, v0}, Lio/github/toyota32k/utils/SuspendableEvent$1;-><init>(Lio/github/toyota32k/utils/SuspendableEvent;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p1, p2, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static final synthetic access$getChannel$p(Lio/github/toyota32k/utils/SuspendableEvent;)Lkotlinx/coroutines/channels/Channel;
    .locals 0

    .line 17
    iget-object p0, p0, Lio/github/toyota32k/utils/SuspendableEvent;->channel:Lkotlinx/coroutines/channels/Channel;

    return-object p0
.end method

.method public static final synthetic access$setSignal$p(Lio/github/toyota32k/utils/SuspendableEvent;Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lio/github/toyota32k/utils/SuspendableEvent;->signal:Z

    return-void
.end method


# virtual methods
.method public final reset(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/github/toyota32k/utils/SuspendableEvent$reset$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/github/toyota32k/utils/SuspendableEvent$reset$1;

    iget v1, v0, Lio/github/toyota32k/utils/SuspendableEvent$reset$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/github/toyota32k/utils/SuspendableEvent$reset$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/github/toyota32k/utils/SuspendableEvent$reset$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/github/toyota32k/utils/SuspendableEvent$reset$1;

    invoke-direct {v0, p0, p1}, Lio/github/toyota32k/utils/SuspendableEvent$reset$1;-><init>(Lio/github/toyota32k/utils/SuspendableEvent;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lio/github/toyota32k/utils/SuspendableEvent$reset$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 41
    iget v2, v0, Lio/github/toyota32k/utils/SuspendableEvent$reset$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget v1, v0, Lio/github/toyota32k/utils/SuspendableEvent$reset$1;->I$1:I

    iget v1, v0, Lio/github/toyota32k/utils/SuspendableEvent$reset$1;->I$0:I

    iget-object v0, v0, Lio/github/toyota32k/utils/SuspendableEvent$reset$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget v2, v0, Lio/github/toyota32k/utils/SuspendableEvent$reset$1;->I$0:I

    iget-object v4, v0, Lio/github/toyota32k/utils/SuspendableEvent$reset$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v4

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lio/github/toyota32k/utils/SuspendableEvent;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 96
    iput-object p1, v0, Lio/github/toyota32k/utils/SuspendableEvent$reset$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lio/github/toyota32k/utils/SuspendableEvent$reset$1;->I$0:I

    iput v4, v0, Lio/github/toyota32k/utils/SuspendableEvent$reset$1;->label:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v5

    .line 43
    :goto_1
    :try_start_1
    iget-boolean v4, p0, Lio/github/toyota32k/utils/SuspendableEvent;->signal:Z

    if-eqz v4, :cond_5

    .line 45
    iput-boolean v5, p0, Lio/github/toyota32k/utils/SuspendableEvent;->signal:Z

    .line 46
    iget-object v4, p0, Lio/github/toyota32k/utils/SuspendableEvent;->channel:Lkotlinx/coroutines/channels/Channel;

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object p1, v0, Lio/github/toyota32k/utils/SuspendableEvent$reset$1;->L$0:Ljava/lang/Object;

    iput v2, v0, Lio/github/toyota32k/utils/SuspendableEvent$reset$1;->I$0:I

    iput v5, v0, Lio/github/toyota32k/utils/SuspendableEvent$reset$1;->I$1:I

    iput v3, v0, Lio/github/toyota32k/utils/SuspendableEvent$reset$1;->label:I

    invoke-interface {v4, v7, v0}, Lkotlinx/coroutines/channels/Channel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object v0, p1

    .line 48
    :goto_3
    :try_start_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    invoke-interface {v0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 49
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception v0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    .line 100
    :goto_4
    invoke-interface {v0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final set(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/github/toyota32k/utils/SuspendableEvent$set$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/github/toyota32k/utils/SuspendableEvent$set$1;

    iget v1, v0, Lio/github/toyota32k/utils/SuspendableEvent$set$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/github/toyota32k/utils/SuspendableEvent$set$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/github/toyota32k/utils/SuspendableEvent$set$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/github/toyota32k/utils/SuspendableEvent$set$1;

    invoke-direct {v0, p0, p1}, Lio/github/toyota32k/utils/SuspendableEvent$set$1;-><init>(Lio/github/toyota32k/utils/SuspendableEvent;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lio/github/toyota32k/utils/SuspendableEvent$set$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 31
    iget v2, v0, Lio/github/toyota32k/utils/SuspendableEvent$set$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v4, :cond_1

    iget v1, v0, Lio/github/toyota32k/utils/SuspendableEvent$set$1;->I$1:I

    iget v1, v0, Lio/github/toyota32k/utils/SuspendableEvent$set$1;->I$0:I

    iget-object v0, v0, Lio/github/toyota32k/utils/SuspendableEvent$set$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget v2, v0, Lio/github/toyota32k/utils/SuspendableEvent$set$1;->I$0:I

    iget-object v7, v0, Lio/github/toyota32k/utils/SuspendableEvent$set$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v7

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    iget-object p1, p0, Lio/github/toyota32k/utils/SuspendableEvent;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 85
    iput-object p1, v0, Lio/github/toyota32k/utils/SuspendableEvent$set$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lio/github/toyota32k/utils/SuspendableEvent$set$1;->I$0:I

    iput v6, v0, Lio/github/toyota32k/utils/SuspendableEvent$set$1;->label:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    .line 33
    :goto_1
    :try_start_1
    iget-boolean v7, p0, Lio/github/toyota32k/utils/SuspendableEvent;->signal:Z

    if-nez v7, :cond_5

    .line 35
    iput-boolean v6, p0, Lio/github/toyota32k/utils/SuspendableEvent;->signal:Z

    .line 36
    iget-object v6, p0, Lio/github/toyota32k/utils/SuspendableEvent;->channel:Lkotlinx/coroutines/channels/Channel;

    iput-object p1, v0, Lio/github/toyota32k/utils/SuspendableEvent$set$1;->L$0:Ljava/lang/Object;

    iput v2, v0, Lio/github/toyota32k/utils/SuspendableEvent$set$1;->I$0:I

    iput v3, v0, Lio/github/toyota32k/utils/SuspendableEvent$set$1;->I$1:I

    iput v4, v0, Lio/github/toyota32k/utils/SuspendableEvent$set$1;->label:I

    invoke-interface {v6, v0}, Lkotlinx/coroutines/channels/Channel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object v0, p1

    .line 38
    :goto_3
    :try_start_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    invoke-interface {v0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 39
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception v0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    .line 89
    :goto_4
    invoke-interface {v0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final waitOne(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;

    iget v1, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;

    invoke-direct {v0, p0, p1}, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;-><init>(Lio/github/toyota32k/utils/SuspendableEvent;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 51
    iget v2, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->label:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_6

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget v1, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->I$1:I

    iget v1, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->I$0:I

    iget-object v1, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lio/github/toyota32k/utils/SuspendableEvent;

    iget-object v0, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget v2, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->I$0:I

    iget-object v4, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v4

    goto/16 :goto_5

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    iget v1, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->I$1:I

    iget v1, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->I$0:I

    iget-object v0, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto/16 :goto_9

    :cond_5
    iget v2, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->I$0:I

    iget-object v10, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v10

    goto :goto_1

    :cond_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    iget-object p1, p0, Lio/github/toyota32k/utils/SuspendableEvent;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 107
    iput-object p1, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->L$0:Ljava/lang/Object;

    iput v8, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->I$0:I

    iput v7, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->label:I

    invoke-interface {p1, v9, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    goto/16 :goto_6

    :cond_7
    move v2, v8

    .line 53
    :goto_1
    :try_start_2
    iget-boolean v10, p0, Lio/github/toyota32k/utils/SuspendableEvent;->signal:Z

    if-eqz v10, :cond_a

    .line 55
    iget-boolean v3, p0, Lio/github/toyota32k/utils/SuspendableEvent;->autoReset:Z

    if-eqz v3, :cond_9

    .line 56
    iget-object v3, p0, Lio/github/toyota32k/utils/SuspendableEvent;->channel:Lkotlinx/coroutines/channels/Channel;

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object p1, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->L$0:Ljava/lang/Object;

    iput v2, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->I$0:I

    iput v8, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->I$1:I

    iput v6, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->label:I

    invoke-interface {v3, v4, v0}, Lkotlinx/coroutines/channels/Channel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne v0, v1, :cond_8

    goto :goto_6

    :cond_8
    move-object v0, p1

    .line 57
    :goto_2
    :try_start_3
    iput-boolean v8, p0, Lio/github/toyota32k/utils/SuspendableEvent;->signal:Z

    goto :goto_3

    :cond_9
    move-object v0, p1

    .line 59
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 111
    invoke-interface {v0, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 61
    :cond_a
    :try_start_4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 111
    invoke-interface {p1, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 63
    iget-object p1, p0, Lio/github/toyota32k/utils/SuspendableEvent;->channel:Lkotlinx/coroutines/channels/Channel;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object v9, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->label:I

    invoke-interface {p1, v2, v0}, Lkotlinx/coroutines/channels/Channel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    goto :goto_6

    .line 64
    :cond_b
    :goto_4
    iget-object p1, p0, Lio/github/toyota32k/utils/SuspendableEvent;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 118
    iput-object p1, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->L$0:Ljava/lang/Object;

    iput v8, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->I$0:I

    iput v4, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->label:I

    invoke-interface {p1, v9, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_c

    goto :goto_6

    :cond_c
    move v2, v8

    .line 65
    :goto_5
    :try_start_5
    iget-boolean v4, p0, Lio/github/toyota32k/utils/SuspendableEvent;->autoReset:Z

    if-eqz v4, :cond_d

    move-object v1, p0

    move-object v0, p1

    move v7, v8

    goto :goto_7

    .line 69
    :cond_d
    iget-object v4, p0, Lio/github/toyota32k/utils/SuspendableEvent;->channel:Lkotlinx/coroutines/channels/Channel;

    iput-object p1, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->L$1:Ljava/lang/Object;

    iput v2, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->I$0:I

    iput v8, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->I$1:I

    iput v3, v0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->label:I

    invoke-interface {v4, v0}, Lkotlinx/coroutines/channels/Channel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ne v0, v1, :cond_e

    :goto_6
    return-object v1

    :cond_e
    move-object v1, p0

    move-object v0, p1

    .line 65
    :goto_7
    :try_start_6
    iput-boolean v7, v1, Lio/github/toyota32k/utils/SuspendableEvent;->signal:Z

    .line 72
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 122
    invoke-interface {v0, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 73
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_2
    move-exception v0

    move-object v11, v0

    move-object v0, p1

    move-object p1, v11

    .line 122
    :goto_8
    invoke-interface {v0, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :catchall_3
    move-exception v0

    move-object v11, v0

    move-object v0, p1

    move-object p1, v11

    .line 111
    :goto_9
    invoke-interface {v0, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final withLock(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/github/toyota32k/utils/SuspendableEvent$withLock$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/github/toyota32k/utils/SuspendableEvent$withLock$1;

    iget v1, v0, Lio/github/toyota32k/utils/SuspendableEvent$withLock$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/github/toyota32k/utils/SuspendableEvent$withLock$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/github/toyota32k/utils/SuspendableEvent$withLock$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/github/toyota32k/utils/SuspendableEvent$withLock$1;

    invoke-direct {v0, p0, p2}, Lio/github/toyota32k/utils/SuspendableEvent$withLock$1;-><init>(Lio/github/toyota32k/utils/SuspendableEvent;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lio/github/toyota32k/utils/SuspendableEvent$withLock$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 75
    iget v2, v0, Lio/github/toyota32k/utils/SuspendableEvent$withLock$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lio/github/toyota32k/utils/SuspendableEvent$withLock$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    iput-object p1, v0, Lio/github/toyota32k/utils/SuspendableEvent$withLock$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lio/github/toyota32k/utils/SuspendableEvent$withLock$1;->label:I

    invoke-virtual {p0, v0}, Lio/github/toyota32k/utils/SuspendableEvent;->waitOne(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 77
    :cond_3
    :goto_1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
