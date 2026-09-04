.class public final Lio/github/toyota32k/utils/lifecycle/DisposableMultiFlowObserver;
.super Ljava/lang/Object;
.source "DisposableFlowObserver.kt"

# interfaces
.implements Lio/github/toyota32k/utils/IDisposableEx;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDisposableFlowObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisposableFlowObserver.kt\nio/github/toyota32k/utils/lifecycle/DisposableMultiFlowObserver\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,131:1\n283#2:132\n284#2:135\n37#3,2:133\n105#4:136\n*S KotlinDebug\n*F\n+ 1 DisposableFlowObserver.kt\nio/github/toyota32k/utils/lifecycle/DisposableMultiFlowObserver\n*L\n95#1:132\n95#1:135\n95#1:133,2\n95#1:136\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001BH\u0012\u0010\u0010\u0002\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012%\u0010\u0007\u001a!\u0012\u0017\u0012\u0015\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0008\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0008\u0010\u0013\u001a\u00020\u000cH\u0016R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\u00158VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lio/github/toyota32k/utils/lifecycle/DisposableMultiFlowObserver;",
        "Lio/github/toyota32k/utils/IDisposableEx;",
        "flows",
        "",
        "Lkotlinx/coroutines/flow/Flow;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "callback",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "v",
        "",
        "<init>",
        "([Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;)V",
        "job",
        "Lkotlinx/coroutines/Job;",
        "id",
        "",
        "dispose",
        "disposed",
        "",
        "getDisposed",
        "()Z",
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
.field private final id:I

.field private job:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>([Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/flow/Flow<",
            "*>;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function1<",
            "-[",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "flows"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    sget-object v0, Lio/github/toyota32k/utils/lifecycle/DisposableFlowObserver;->Companion:Lio/github/toyota32k/utils/lifecycle/DisposableFlowObserver$Companion;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/lifecycle/DisposableFlowObserver$Companion;->getIdGenerator()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lio/github/toyota32k/utils/lifecycle/DisposableMultiFlowObserver;->id:I

    .line 94
    sget-object v0, Lio/github/toyota32k/utils/UtLib;->INSTANCE:Lio/github/toyota32k/utils/UtLib;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtLib;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    new-instance v1, Lio/github/toyota32k/utils/lifecycle/DisposableMultiFlowObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/github/toyota32k/utils/lifecycle/DisposableMultiFlowObserver$$ExternalSyntheticLambda0;-><init>(Lio/github/toyota32k/utils/lifecycle/DisposableMultiFlowObserver;)V

    invoke-virtual {v0, v1}, Lio/github/toyota32k/logger/UtLog;->verbose(Lkotlin/jvm/functions/Function0;)V

    .line 95
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 132
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    .line 134
    new-array v0, v0, [Lkotlinx/coroutines/flow/Flow;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 132
    check-cast p1, [Lkotlinx/coroutines/flow/Flow;

    .line 136
    new-instance v0, Lio/github/toyota32k/utils/lifecycle/DisposableMultiFlowObserver$special$$inlined$combine$1;

    invoke-direct {v0, p1, p3}, Lio/github/toyota32k/utils/lifecycle/DisposableMultiFlowObserver$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 96
    new-instance p1, Lio/github/toyota32k/utils/lifecycle/DisposableMultiFlowObserver$3;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lio/github/toyota32k/utils/lifecycle/DisposableMultiFlowObserver$3;-><init>(Lio/github/toyota32k/utils/lifecycle/DisposableMultiFlowObserver;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function3;

    invoke-static {v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->onCompletion(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 98
    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 95
    iput-object p1, p0, Lio/github/toyota32k/utils/lifecycle/DisposableMultiFlowObserver;->job:Lkotlinx/coroutines/Job;

    return-void
.end method

.method static final _init_$lambda$0(Lio/github/toyota32k/utils/lifecycle/DisposableMultiFlowObserver;)Ljava/lang/String;
    .locals 2

    .line 94
    iget p0, p0, Lio/github/toyota32k/utils/lifecycle/DisposableMultiFlowObserver;->id:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "observer started:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getId$p(Lio/github/toyota32k/utils/lifecycle/DisposableMultiFlowObserver;)I
    .locals 0

    .line 89
    iget p0, p0, Lio/github/toyota32k/utils/lifecycle/DisposableMultiFlowObserver;->id:I

    return p0
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .line 102
    sget-object v0, Lio/github/toyota32k/utils/UtLib;->INSTANCE:Lio/github/toyota32k/utils/UtLib;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtLib;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    iget v1, p0, Lio/github/toyota32k/utils/lifecycle/DisposableMultiFlowObserver;->id:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "observer disposing:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/toyota32k/logger/UtLog;->verbose(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/DisposableMultiFlowObserver;->job:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 104
    :cond_0
    iput-object v1, p0, Lio/github/toyota32k/utils/lifecycle/DisposableMultiFlowObserver;->job:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public getDisposed()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/DisposableMultiFlowObserver;->job:Lkotlinx/coroutines/Job;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
