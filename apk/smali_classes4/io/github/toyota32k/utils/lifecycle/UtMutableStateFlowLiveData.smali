.class public final Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;
.super Landroidx/lifecycle/MutableLiveData;
.source "UtMutableStateFlowLiveData.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/MutableLiveData<",
        "TT;>;",
        "Landroidx/lifecycle/Observer<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B!\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u0007J\u0015\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0010R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001e\u0010\u000c\u001a\u0004\u0018\u00018\u0000X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;",
        "T",
        "Landroidx/lifecycle/MutableLiveData;",
        "Landroidx/lifecycle/Observer;",
        "flow",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "<init>",
        "(Lkotlinx/coroutines/flow/MutableStateFlow;Landroidx/lifecycle/LifecycleOwner;)V",
        "getFlow",
        "()Lkotlinx/coroutines/flow/MutableStateFlow;",
        "prevLiveDataValue",
        "getPrevLiveDataValue",
        "()Ljava/lang/Object;",
        "setPrevLiveDataValue",
        "(Ljava/lang/Object;)V",
        "Ljava/lang/Object;",
        "attachToLifecycle",
        "",
        "onChanged",
        "value",
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
            "TT;>;"
        }
    .end annotation
.end field

.field private prevLiveDataValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/MutableStateFlow;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "TT;>;",
            "Landroidx/lifecycle/LifecycleOwner;",
            ")V"
        }
    .end annotation

    const-string v0, "flow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;->flow:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 16
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;->setValue(Ljava/lang/Object;)V

    .line 17
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;->prevLiveDataValue:Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 19
    invoke-virtual {p0, p2}, Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;->attachToLifecycle(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/MutableStateFlow;Landroidx/lifecycle/LifecycleOwner;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 13
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method


# virtual methods
.method public final attachToLifecycle(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 7

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/Observer;

    invoke-virtual {p0, p1, v0}, Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 26
    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData$attachToLifecycle$1;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v2}, Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData$attachToLifecycle$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getFlow()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "TT;>;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;->flow:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getPrevLiveDataValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;->prevLiveDataValue:Ljava/lang/Object;

    return-object v0
.end method

.method public onChanged(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;->prevLiveDataValue:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iput-object p1, p0, Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;->prevLiveDataValue:Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;->flow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setPrevLiveDataValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;->prevLiveDataValue:Ljava/lang/Object;

    return-void
.end method
