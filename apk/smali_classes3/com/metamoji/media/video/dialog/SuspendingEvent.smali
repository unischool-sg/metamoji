.class public final Lcom/metamoji/media/video/dialog/SuspendingEvent;
.super Ljava/lang/Object;
.source "SuspendingEvent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuspendingEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuspendingEvent.kt\ncom/metamoji/media/video/dialog/SuspendingEvent\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,51:1\n116#2,11:52\n116#2,11:63\n116#2,11:74\n116#2,11:85\n116#2,11:96\n116#2,11:107\n*S KotlinDebug\n*F\n+ 1 SuspendingEvent.kt\ncom/metamoji/media/video/dialog/SuspendingEvent\n*L\n22#1:52,11\n26#1:63,11\n30#1:74,11\n34#1:85,11\n38#1:96,11\n42#1:107,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000e\u0010\u000c\u001a\u00020\tH\u0086@\u00a2\u0006\u0002\u0010\rJ\u000e\u0010\u000e\u001a\u00020\tH\u0086@\u00a2\u0006\u0002\u0010\rJ\u000e\u0010\u000f\u001a\u00020\tH\u0086@\u00a2\u0006\u0002\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/SuspendingEvent;",
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
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
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

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/metamoji/media/video/dialog/SuspendingEvent;->signal:Z

    iput-boolean p2, p0, Lcom/metamoji/media/video/dialog/SuspendingEvent;->autoReset:Z

    const/4 p1, 0x6

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 9
    invoke-static {p2, v0, v0, p1, v0}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/SuspendingEvent;->channel:Lkotlinx/coroutines/channels/Channel;

    const/4 p1, 0x0

    .line 10
    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/SuspendingEvent;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 13
    iget-boolean p1, p0, Lcom/metamoji/media/video/dialog/SuspendingEvent;->signal:Z

    if-nez p1, :cond_0

    .line 14
    new-instance p1, Lcom/metamoji/media/video/dialog/SuspendingEvent$1;

    invoke-direct {p1, p0, v0}, Lcom/metamoji/media/video/dialog/SuspendingEvent$1;-><init>(Lcom/metamoji/media/video/dialog/SuspendingEvent;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p1, p2, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static final synthetic access$getChannel$p(Lcom/metamoji/media/video/dialog/SuspendingEvent;)Lkotlinx/coroutines/channels/Channel;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/SuspendingEvent;->channel:Lkotlinx/coroutines/channels/Channel;

    return-object p0
.end method

.method public static final synthetic access$setSignal$p(Lcom/metamoji/media/video/dialog/SuspendingEvent;Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/metamoji/media/video/dialog/SuspendingEvent;->signal:Z

    return-void
.end method


# virtual methods
.method public final reset(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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

    instance-of v0, p1, Lcom/metamoji/media/video/dialog/SuspendingEvent$reset$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$reset$1;

    iget v1, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$reset$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$reset$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$reset$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$reset$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/media/video/dialog/SuspendingEvent$reset$1;-><init>(Lcom/metamoji/media/video/dialog/SuspendingEvent;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$reset$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 29
    iget v2, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$reset$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget v1, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$reset$1;->I$0:I

    iget-object v0, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$reset$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget v2, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$reset$1;->I$0:I

    iget-object v2, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$reset$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    iget-object v2, p0, Lcom/metamoji/media/video/dialog/SuspendingEvent;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 79
    iput-object v2, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$reset$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$reset$1;->I$0:I

    iput v5, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$reset$1;->label:I

    invoke-interface {v2, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_3

    .line 30
    :cond_5
    :goto_1
    :try_start_0
    iget-boolean p1, p0, Lcom/metamoji/media/video/dialog/SuspendingEvent;->signal:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-nez p1, :cond_6

    .line 31
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 33
    :cond_6
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/SuspendingEvent;->channel:Lkotlinx/coroutines/channels/Channel;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object v7, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$reset$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$reset$1;->label:I

    invoke-interface {p1, v2, v0}, Lkotlinx/coroutines/channels/Channel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto :goto_3

    .line 34
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/SuspendingEvent;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 90
    iput-object p1, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$reset$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$reset$1;->I$0:I

    iput v3, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$reset$1;->label:I

    invoke-interface {p1, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_8

    :goto_3
    return-object v1

    :cond_8
    move-object v0, p1

    .line 34
    :goto_4
    :try_start_1
    iput-boolean v6, p0, Lcom/metamoji/media/video/dialog/SuspendingEvent;->signal:Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    invoke-interface {v0, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 35
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 94
    invoke-interface {v0, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 83
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final set(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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

    instance-of v0, p1, Lcom/metamoji/media/video/dialog/SuspendingEvent$set$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$set$1;

    iget v1, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$set$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$set$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$set$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$set$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/media/video/dialog/SuspendingEvent$set$1;-><init>(Lcom/metamoji/media/video/dialog/SuspendingEvent;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$set$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 21
    iget v2, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$set$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget v1, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$set$1;->I$0:I

    iget-object v0, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$set$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget v2, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$set$1;->I$0:I

    iget-object v2, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$set$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    iget-object v2, p0, Lcom/metamoji/media/video/dialog/SuspendingEvent;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 57
    iput-object v2, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$set$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$set$1;->I$0:I

    iput v6, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$set$1;->label:I

    invoke-interface {v2, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_3

    .line 22
    :cond_5
    :goto_1
    :try_start_0
    iget-boolean p1, p0, Lcom/metamoji/media/video/dialog/SuspendingEvent;->signal:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    .line 23
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 25
    :cond_6
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/SuspendingEvent;->channel:Lkotlinx/coroutines/channels/Channel;

    iput-object v7, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$set$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$set$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/Channel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto :goto_3

    .line 26
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/SuspendingEvent;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 68
    iput-object p1, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$set$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$set$1;->I$0:I

    iput v4, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$set$1;->label:I

    invoke-interface {p1, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_8

    :goto_3
    return-object v1

    :cond_8
    move-object v0, p1

    .line 26
    :goto_4
    :try_start_1
    iput-boolean v6, p0, Lcom/metamoji/media/video/dialog/SuspendingEvent;->signal:Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    invoke-interface {v0, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 27
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 72
    invoke-interface {v0, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 61
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final waitOne(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
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

    instance-of v0, p1, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;

    iget v1, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;-><init>(Lcom/metamoji/media/video/dialog/SuspendingEvent;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 37
    iget v2, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget v1, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->I$1:I

    iget v1, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->I$0:I

    iget-object v1, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/media/video/dialog/SuspendingEvent;

    iget-object v0, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget v2, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->I$0:I

    iget-object v4, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v4

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget v2, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->I$0:I

    iget-object v2, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    iget-object v2, p0, Lcom/metamoji/media/video/dialog/SuspendingEvent;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 101
    iput-object v2, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->L$0:Ljava/lang/Object;

    iput v7, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->I$0:I

    iput v6, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->label:I

    invoke-interface {v2, v8, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_4

    .line 38
    :cond_6
    :goto_1
    :try_start_1
    iget-boolean p1, p0, Lcom/metamoji/media/video/dialog/SuspendingEvent;->signal:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 105
    invoke-interface {v2, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz p1, :cond_7

    .line 39
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 41
    :cond_7
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/SuspendingEvent;->channel:Lkotlinx/coroutines/channels/Channel;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object v8, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->label:I

    invoke-interface {p1, v2, v0}, Lkotlinx/coroutines/channels/Channel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    goto :goto_4

    .line 42
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/SuspendingEvent;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 112
    iput-object p1, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->L$0:Ljava/lang/Object;

    iput v7, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->I$0:I

    iput v4, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->label:I

    invoke-interface {p1, v8, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_9

    goto :goto_4

    :cond_9
    move v2, v7

    .line 43
    :goto_3
    :try_start_2
    iget-boolean v4, p0, Lcom/metamoji/media/video/dialog/SuspendingEvent;->autoReset:Z

    if-eqz v4, :cond_a

    move-object v1, p0

    move-object v0, p1

    move v6, v7

    goto :goto_5

    .line 46
    :cond_a
    iget-object v4, p0, Lcom/metamoji/media/video/dialog/SuspendingEvent;->channel:Lkotlinx/coroutines/channels/Channel;

    iput-object p1, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->L$1:Ljava/lang/Object;

    iput v2, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->I$0:I

    iput v7, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->I$1:I

    iput v3, v0, Lcom/metamoji/media/video/dialog/SuspendingEvent$waitOne$1;->label:I

    invoke-interface {v4, v0}, Lkotlinx/coroutines/channels/Channel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v1, :cond_b

    :goto_4
    return-object v1

    :cond_b
    move-object v1, p0

    move-object v0, p1

    .line 43
    :goto_5
    :try_start_3
    iput-boolean v6, v1, Lcom/metamoji/media/video/dialog/SuspendingEvent;->signal:Z

    .line 49
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    invoke-interface {v0, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 50
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception v0

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    .line 116
    :goto_6
    invoke-interface {v0, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :catchall_2
    move-exception p1

    .line 105
    invoke-interface {v2, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
