.class public final Lio/github/toyota32k/utils/android/RefBitmapFlow;
.super Ljava/lang/Object;
.source "RefBitmap.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/MutableStateFlow;
.implements Lio/github/toyota32k/utils/IDisposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/MutableStateFlow<",
        "Lio/github/toyota32k/utils/android/RefBitmap;",
        ">;",
        "Lio/github/toyota32k/utils/IDisposable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u00020\u0003B\u0019\u0008\u0002\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u0015\u0008\u0016\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0008J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u001e\u0010\u0011\u001a\u00020\u00122\u000e\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0014H\u0096A\u00a2\u0006\u0002\u0010\u0015J\u001d\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0002H\u0096\u0001J\u0018\u0010\u001a\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0096A\u00a2\u0006\u0002\u0010\u001bJ\t\u0010\u001c\u001a\u00020\u000cH\u0097\u0001J\u0013\u0010\u001d\u001a\u00020\u00172\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0096\u0001R\u0016\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\r\u001a\u0004\u0018\u00010\u00022\u0008\u0010\r\u001a\u0004\u0018\u00010\u00028V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0008R\u001a\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u001fX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0018\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&\u00a8\u0006\'"
    }
    d2 = {
        "Lio/github/toyota32k/utils/android/RefBitmapFlow;",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lio/github/toyota32k/utils/android/RefBitmap;",
        "Lio/github/toyota32k/utils/IDisposable;",
        "flow",
        "<init>",
        "(Lkotlinx/coroutines/flow/MutableStateFlow;)V",
        "ref",
        "(Lio/github/toyota32k/utils/android/RefBitmap;)V",
        "holder",
        "Lio/github/toyota32k/utils/android/RefBitmapHolder;",
        "dispose",
        "",
        "value",
        "getValue",
        "()Lio/github/toyota32k/utils/android/RefBitmap;",
        "setValue",
        "collect",
        "",
        "collector",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "compareAndSet",
        "",
        "expect",
        "update",
        "emit",
        "(Lio/github/toyota32k/utils/android/RefBitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "resetReplayCache",
        "tryEmit",
        "replayCache",
        "",
        "getReplayCache",
        "()Ljava/util/List;",
        "subscriptionCount",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "",
        "getSubscriptionCount",
        "()Lkotlinx/coroutines/flow/StateFlow;",
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
.field private final flow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lio/github/toyota32k/utils/android/RefBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final holder:Lio/github/toyota32k/utils/android/RefBitmapHolder;


# direct methods
.method public constructor <init>(Lio/github/toyota32k/utils/android/RefBitmap;)V
    .locals 1

    .line 227
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/github/toyota32k/utils/android/RefBitmapFlow;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;)V

    iget-object v0, p0, Lio/github/toyota32k/utils/android/RefBitmapFlow;->holder:Lio/github/toyota32k/utils/android/RefBitmapHolder;

    invoke-virtual {v0, p1}, Lio/github/toyota32k/utils/android/RefBitmapHolder;->set(Lio/github/toyota32k/utils/android/RefBitmap;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/github/toyota32k/utils/android/RefBitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 227
    :cond_0
    invoke-direct {p0, p1}, Lio/github/toyota32k/utils/android/RefBitmapFlow;-><init>(Lio/github/toyota32k/utils/android/RefBitmap;)V

    return-void
.end method

.method private constructor <init>(Lkotlinx/coroutines/flow/MutableStateFlow;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lio/github/toyota32k/utils/android/RefBitmap;",
            ">;)V"
        }
    .end annotation

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lio/github/toyota32k/utils/android/RefBitmapFlow;->flow:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 228
    new-instance p1, Lio/github/toyota32k/utils/android/RefBitmapHolder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lio/github/toyota32k/utils/android/RefBitmapHolder;-><init>(Lio/github/toyota32k/utils/android/RefBitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/github/toyota32k/utils/android/RefBitmapFlow;->holder:Lio/github/toyota32k/utils/android/RefBitmapHolder;

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Lio/github/toyota32k/utils/android/RefBitmap;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lio/github/toyota32k/utils/android/RefBitmapFlow;->flow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public compareAndSet(Lio/github/toyota32k/utils/android/RefBitmap;Lio/github/toyota32k/utils/android/RefBitmap;)Z
    .locals 1

    iget-object v0, p0, Lio/github/toyota32k/utils/android/RefBitmapFlow;->flow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 225
    check-cast p1, Lio/github/toyota32k/utils/android/RefBitmap;

    check-cast p2, Lio/github/toyota32k/utils/android/RefBitmap;

    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/utils/android/RefBitmapFlow;->compareAndSet(Lio/github/toyota32k/utils/android/RefBitmap;Lio/github/toyota32k/utils/android/RefBitmap;)Z

    move-result p1

    return p1
.end method

.method public dispose()V
    .locals 2

    .line 231
    iget-object v0, p0, Lio/github/toyota32k/utils/android/RefBitmapFlow;->flow:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lio/github/toyota32k/utils/android/RefBitmapFlow;->holder:Lio/github/toyota32k/utils/android/RefBitmapHolder;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/android/RefBitmapHolder;->dispose()V

    return-void
.end method

.method public emit(Lio/github/toyota32k/utils/android/RefBitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/toyota32k/utils/android/RefBitmap;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lio/github/toyota32k/utils/android/RefBitmapFlow;->flow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 225
    check-cast p1, Lio/github/toyota32k/utils/android/RefBitmap;

    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/utils/android/RefBitmapFlow;->emit(Lio/github/toyota32k/utils/android/RefBitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getReplayCache()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/toyota32k/utils/android/RefBitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/github/toyota32k/utils/android/RefBitmapFlow;->flow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getReplayCache()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionCount()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/github/toyota32k/utils/android/RefBitmapFlow;->flow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getSubscriptionCount()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lio/github/toyota32k/utils/android/RefBitmap;
    .locals 1

    .line 236
    iget-object v0, p0, Lio/github/toyota32k/utils/android/RefBitmapFlow;->holder:Lio/github/toyota32k/utils/android/RefBitmapHolder;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/android/RefBitmapHolder;->getOrNull()Lio/github/toyota32k/utils/android/RefBitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 225
    invoke-virtual {p0}, Lio/github/toyota32k/utils/android/RefBitmapFlow;->getValue()Lio/github/toyota32k/utils/android/RefBitmap;

    move-result-object v0

    return-object v0
.end method

.method public resetReplayCache()V
    .locals 1

    iget-object v0, p0, Lio/github/toyota32k/utils/android/RefBitmapFlow;->flow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->resetReplayCache()V

    return-void
.end method

.method public setValue(Lio/github/toyota32k/utils/android/RefBitmap;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lio/github/toyota32k/utils/android/RefBitmapFlow;->holder:Lio/github/toyota32k/utils/android/RefBitmapHolder;

    invoke-virtual {v0, p1}, Lio/github/toyota32k/utils/android/RefBitmapHolder;->set(Lio/github/toyota32k/utils/android/RefBitmap;)V

    .line 239
    iget-object v0, p0, Lio/github/toyota32k/utils/android/RefBitmapFlow;->flow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 225
    check-cast p1, Lio/github/toyota32k/utils/android/RefBitmap;

    invoke-virtual {p0, p1}, Lio/github/toyota32k/utils/android/RefBitmapFlow;->setValue(Lio/github/toyota32k/utils/android/RefBitmap;)V

    return-void
.end method

.method public tryEmit(Lio/github/toyota32k/utils/android/RefBitmap;)Z
    .locals 1

    iget-object v0, p0, Lio/github/toyota32k/utils/android/RefBitmapFlow;->flow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->tryEmit(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryEmit(Ljava/lang/Object;)Z
    .locals 0

    .line 225
    check-cast p1, Lio/github/toyota32k/utils/android/RefBitmap;

    invoke-virtual {p0, p1}, Lio/github/toyota32k/utils/android/RefBitmapFlow;->tryEmit(Lio/github/toyota32k/utils/android/RefBitmap;)Z

    move-result p1

    return p1
.end method
