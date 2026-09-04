.class public final Lio/github/toyota32k/utils/lifecycle/ObservableFlow;
.super Ljava/lang/Object;
.source "ObservableFlow.kt"

# interfaces
.implements Lio/github/toyota32k/utils/IDisposable;
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/github/toyota32k/utils/IDisposable;",
        "Lkotlinx/coroutines/flow/Flow<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0015\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\"\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00100\u000fJ\"\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00100\u000fJ\u000e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0002J\u0006\u0010\u0015\u001a\u00020\u0010J\u0008\u0010\u0016\u001a\u00020\u0010H\u0016J\u001c\u0010\u0017\u001a\u00020\u00102\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019H\u0096A\u00a2\u0006\u0002\u0010\u001aR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lio/github/toyota32k/utils/lifecycle/ObservableFlow;",
        "T",
        "Lio/github/toyota32k/utils/IDisposable;",
        "Lkotlinx/coroutines/flow/Flow;",
        "flow",
        "<init>",
        "(Lkotlinx/coroutines/flow/Flow;)V",
        "getFlow",
        "()Lkotlinx/coroutines/flow/Flow;",
        "disposer",
        "Lio/github/toyota32k/utils/Disposer;",
        "observe",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "fn",
        "Lkotlin/Function1;",
        "",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "removeObserver",
        "observer",
        "clean",
        "dispose",
        "collect",
        "collector",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final disposer:Lio/github/toyota32k/utils/Disposer;

.field private final flow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "flow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/utils/lifecycle/ObservableFlow;->flow:Lkotlinx/coroutines/flow/Flow;

    .line 16
    new-instance p1, Lio/github/toyota32k/utils/Disposer;

    invoke-direct {p1}, Lio/github/toyota32k/utils/Disposer;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/utils/lifecycle/ObservableFlow;->disposer:Lio/github/toyota32k/utils/Disposer;

    return-void
.end method


# virtual methods
.method public final clean()V
    .locals 1

    .line 35
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/ObservableFlow;->disposer:Lio/github/toyota32k/utils/Disposer;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/Disposer;->clean()V

    return-void
.end method

.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/ObservableFlow;->flow:Lkotlinx/coroutines/flow/Flow;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 1

    .line 39
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/ObservableFlow;->disposer:Lio/github/toyota32k/utils/Disposer;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/Disposer;->dispose()V

    return-void
.end method

.method public final getFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/ObservableFlow;->flow:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final observe(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/IDisposable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/github/toyota32k/utils/IDisposable;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/ObservableFlow;->disposer:Lio/github/toyota32k/utils/Disposer;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/Disposer;->getDisposed()Z

    .line 19
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/ObservableFlow;->flow:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v0, p1, p2}, Lio/github/toyota32k/utils/lifecycle/DisposableFlowObserverKt;->disposableObserve(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/lifecycle/DisposableFlowObserver;

    move-result-object p1

    .line 20
    iget-object p2, p0, Lio/github/toyota32k/utils/lifecycle/ObservableFlow;->disposer:Lio/github/toyota32k/utils/Disposer;

    const/4 v0, 0x1

    new-array v0, v0, [Lio/github/toyota32k/utils/IDisposable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lio/github/toyota32k/utils/Disposer;->register([Lio/github/toyota32k/utils/IDisposable;)Lio/github/toyota32k/utils/Disposer;

    .line 19
    check-cast p1, Lio/github/toyota32k/utils/IDisposable;

    return-object p1
.end method

.method public final observe(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/IDisposable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/github/toyota32k/utils/IDisposable;"
        }
    .end annotation

    const-string v0, "coroutineContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/ObservableFlow;->disposer:Lio/github/toyota32k/utils/Disposer;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/Disposer;->getDisposed()Z

    .line 25
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/ObservableFlow;->flow:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v0, p1, p2}, Lio/github/toyota32k/utils/lifecycle/DisposableFlowObserverKt;->disposableObserve(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/lifecycle/DisposableFlowObserver;

    move-result-object p1

    .line 26
    iget-object p2, p0, Lio/github/toyota32k/utils/lifecycle/ObservableFlow;->disposer:Lio/github/toyota32k/utils/Disposer;

    const/4 v0, 0x1

    new-array v0, v0, [Lio/github/toyota32k/utils/IDisposable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lio/github/toyota32k/utils/Disposer;->register([Lio/github/toyota32k/utils/IDisposable;)Lio/github/toyota32k/utils/Disposer;

    .line 25
    check-cast p1, Lio/github/toyota32k/utils/IDisposable;

    return-object p1
.end method

.method public final removeObserver(Lio/github/toyota32k/utils/IDisposable;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/ObservableFlow;->disposer:Lio/github/toyota32k/utils/Disposer;

    filled-new-array {p1}, [Lio/github/toyota32k/utils/IDisposable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/github/toyota32k/utils/Disposer;->unregister([Lio/github/toyota32k/utils/IDisposable;)Lio/github/toyota32k/utils/Disposer;

    return-void
.end method
