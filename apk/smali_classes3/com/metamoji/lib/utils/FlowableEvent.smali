.class public final Lcom/metamoji/lib/utils/FlowableEvent;
.super Ljava/lang/Object;
.source "FlowableEvent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlowableEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowableEvent.kt\ncom/metamoji/lib/utils/FlowableEvent\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,73:1\n17#2:74\n19#2:78\n17#2:87\n19#2:91\n46#3:75\n51#3:77\n46#3:88\n51#3:90\n105#4:76\n105#4:89\n116#5,8:79\n125#5,2:92\n*S KotlinDebug\n*F\n+ 1 FlowableEvent.kt\ncom/metamoji/lib/utils/FlowableEvent\n*L\n36#1:74\n36#1:78\n40#1:87\n40#1:91\n36#1:75\n36#1:77\n40#1:88\n40#1:90\n36#1:76\n40#1:89\n39#1:79,8\n39#1:92,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0012\u001a\u00020\u0010H\u0086@\u00a2\u0006\u0002\u0010\u0013J\u0016\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H\u0086@\u00a2\u0006\u0002\u0010\u0016J\u0018\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0017H\u0086@\u00a2\u0006\u0004\u0008\u0018\u0010\u0016J\"\u0010\u0019\u001a\u0002H\u001a\"\u0004\u0008\u0000\u0010\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u0002H\u001a0\u001cH\u0086@\u00a2\u0006\u0002\u0010\u001dJ2\u0010\u0019\u001a\u0002H\u001a\"\u0004\u0008\u0000\u0010\u001a2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u0002H\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u0002H\u001a0\u001cH\u0086@\u00a2\u0006\u0002\u0010\u001fJ4\u0010\u0019\u001a\u0002H\u001a\"\u0004\u0008\u0000\u0010\u001a2\u0006\u0010\u0014\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u0002H\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u0002H\u001a0\u001cH\u0086@\u00a2\u0006\u0004\u0008 \u0010\u001fR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/FlowableEvent;",
        "",
        "initial",
        "",
        "autoReset",
        "<init>",
        "(ZZ)V",
        "getAutoReset",
        "()Z",
        "flag",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "flow",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "mutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "set",
        "",
        "reset",
        "waitOne",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "timeout",
        "",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlin/time/Duration;",
        "waitOne-VtjQ1oo",
        "withLock",
        "T",
        "fn",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "defOnTimeout",
        "(JLjava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "withLock-rnQQ1Ag",
        "utils"
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

.field private final flag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final flow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mutex:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/metamoji/lib/utils/FlowableEvent;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/metamoji/lib/utils/FlowableEvent;->autoReset:Z

    .line 19
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/metamoji/lib/utils/FlowableEvent;->flag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lib/utils/FlowableEvent;->flow:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 21
    invoke-static {v0, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lib/utils/FlowableEvent;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public synthetic constructor <init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 18
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/utils/FlowableEvent;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public final getAutoReset()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/metamoji/lib/utils/FlowableEvent;->autoReset:Z

    return v0
.end method

.method public final reset()V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/metamoji/lib/utils/FlowableEvent;->flag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/metamoji/lib/utils/FlowableEvent;->flow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final set()V
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/metamoji/lib/utils/FlowableEvent;->flag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/metamoji/lib/utils/FlowableEvent;->flow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final waitOne(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$4;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$4;

    iget v1, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$4;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$4;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$4;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$4;

    invoke-direct {v0, p0, p3}, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$4;-><init>(Lcom/metamoji/lib/utils/FlowableEvent;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$4;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 46
    iget v2, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$4;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p1, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$4;->J$0:J

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    :try_start_1
    new-instance p3, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$5;

    const/4 v2, 0x0

    invoke-direct {p3, p0, v2}, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$5;-><init>(Lcom/metamoji/lib/utils/FlowableEvent;Lkotlin/coroutines/Continuation;)V

    check-cast p3, Lkotlin/jvm/functions/Function2;

    iput-wide p1, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$4;->J$0:J

    iput v3, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$4;->label:I

    invoke-static {p1, p2, p3, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    const/4 p1, 0x0

    .line 53
    :goto_2
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final waitOne(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    instance-of v0, p1, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$1;

    iget v1, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$1;-><init>(Lcom/metamoji/lib/utils/FlowableEvent;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 33
    iget v2, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget v1, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$1;->I$1:I

    iget v1, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$1;->I$0:I

    iget-object v0, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget v2, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$1;->I$0:I

    iget-object v5, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v5

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    iget-boolean p1, p0, Lcom/metamoji/lib/utils/FlowableEvent;->autoReset:Z

    if-nez p1, :cond_6

    .line 36
    iget-object p1, p0, Lcom/metamoji/lib/utils/FlowableEvent;->flow:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    .line 76
    new-instance v2, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$$inlined$filter$1;

    invoke-direct {v2, p1}, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    .line 36
    iput v6, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$1;->label:I

    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_3

    .line 44
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 39
    :cond_6
    iget-object p1, p0, Lcom/metamoji/lib/utils/FlowableEvent;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 84
    iput-object p1, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$1;->I$0:I

    iput v5, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$1;->label:I

    invoke-interface {p1, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    goto :goto_3

    :cond_7
    move v2, v3

    .line 40
    :goto_2
    :try_start_1
    iget-object v5, p0, Lcom/metamoji/lib/utils/FlowableEvent;->flow:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 89
    new-instance v6, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$lambda$2$$inlined$filter$1;

    invoke-direct {v6, v5}, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$lambda$2$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 40
    iput-object p1, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$1;->L$0:Ljava/lang/Object;

    iput v2, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$1;->I$0:I

    iput v3, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$1;->I$1:I

    iput v4, v0, Lcom/metamoji/lib/utils/FlowableEvent$waitOne$1;->label:I

    invoke-static {v6, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v1, :cond_8

    :goto_3
    return-object v1

    :cond_8
    move-object v0, p1

    .line 41
    :goto_4
    :try_start_2
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/FlowableEvent;->reset()V

    .line 42
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    invoke-interface {v0, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 44
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception v0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    .line 92
    :goto_5
    invoke-interface {v0, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final waitOne-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 57
    invoke-static {p1, p2}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide p1

    const-wide/16 v0, 0x1

    invoke-static {p1, p2, v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/FlowableEvent;->waitOne(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final withLock(JLjava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(JTT;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lcom/metamoji/lib/utils/FlowableEvent$withLock$2;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$2;

    iget v1, v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$2;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p5, v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$2;->label:I

    sub-int/2addr p5, v2

    iput p5, v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$2;

    invoke-direct {v0, p0, p5}, Lcom/metamoji/lib/utils/FlowableEvent$withLock$2;-><init>(Lcom/metamoji/lib/utils/FlowableEvent;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$2;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 63
    iget v2, v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p1, v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$2;->J$0:J

    iget-object p1, v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$2;->L$1:Ljava/lang/Object;

    move-object p4, p1

    check-cast p4, Lkotlin/jvm/functions/Function0;

    iget-object p3, v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$2;->L$0:Ljava/lang/Object;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    iput-object p3, v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$2;->L$0:Ljava/lang/Object;

    iput-object p4, v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$2;->L$1:Ljava/lang/Object;

    iput-wide p1, v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$2;->J$0:J

    iput v3, v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$2;->label:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/lib/utils/FlowableEvent;->waitOne(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 65
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p3
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

    instance-of v0, p2, Lcom/metamoji/lib/utils/FlowableEvent$withLock$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$1;

    iget v1, v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/lib/utils/FlowableEvent$withLock$1;-><init>(Lcom/metamoji/lib/utils/FlowableEvent;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 59
    iget v2, v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$1;->L$0:Ljava/lang/Object;

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

    .line 60
    iput-object p1, v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$1;->label:I

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/FlowableEvent;->waitOne(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 61
    :cond_3
    :goto_1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final withLock-rnQQ1Ag(JLjava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(JTT;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 71
    invoke-static {p1, p2}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide p1

    const-wide/16 v0, 0x1

    invoke-static {p1, p2, v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/lib/utils/FlowableEvent;->withLock(JLjava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
