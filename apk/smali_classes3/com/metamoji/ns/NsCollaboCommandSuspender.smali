.class public final Lcom/metamoji/ns/NsCollaboCommandSuspender;
.super Ljava/lang/Object;
.source "NsCollaboCommandSuspender.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0007\u001a\u00020\u0008J\u0006\u0010\t\u001a\u00020\u0008J\u0006\u0010\n\u001a\u00020\u0008J\u000e\u0010\u000b\u001a\u00020\u000cH\u0086@\u00a2\u0006\u0002\u0010\rR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/metamoji/ns/NsCollaboCommandSuspender;",
        "",
        "<init>",
        "()V",
        "signal",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;",
        "forbid",
        "",
        "permit",
        "resign",
        "waitFor",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "SignalState",
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
.field private final signal:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;->PERMITTED:Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboCommandSuspender;->signal:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method


# virtual methods
.method public final forbid()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommandSuspender;->signal:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;->FORBIDDEN:Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final permit()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommandSuspender;->signal:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;->PERMITTED:Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final resign()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommandSuspender;->signal:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;->RESIGNED:Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final waitFor(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/ns/NsCollaboCommandSuspender$waitFor$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/ns/NsCollaboCommandSuspender$waitFor$1;

    iget v1, v0, Lcom/metamoji/ns/NsCollaboCommandSuspender$waitFor$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/ns/NsCollaboCommandSuspender$waitFor$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/ns/NsCollaboCommandSuspender$waitFor$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ns/NsCollaboCommandSuspender$waitFor$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ns/NsCollaboCommandSuspender$waitFor$1;-><init>(Lcom/metamoji/ns/NsCollaboCommandSuspender;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/ns/NsCollaboCommandSuspender$waitFor$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 53
    iget v2, v0, Lcom/metamoji/ns/NsCollaboCommandSuspender$waitFor$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommandSuspender;->signal:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    new-instance v2, Lcom/metamoji/ns/NsCollaboCommandSuspender$waitFor$2;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/metamoji/ns/NsCollaboCommandSuspender$waitFor$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput v3, v0, Lcom/metamoji/ns/NsCollaboCommandSuspender$waitFor$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object v0, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;->PERMITTED:Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
