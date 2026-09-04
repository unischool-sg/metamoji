.class public Lcom/metamoji/li/task/UtAwaitable;
.super Ljava/lang/Object;
.source "UtAwaitable.kt"

# interfaces
.implements Lcom/metamoji/li/task/IUtAwaitable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/metamoji/li/task/IUtAwaitable<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtAwaitable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtAwaitable.kt\ncom/metamoji/li/task/UtAwaitable\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,43:1\n17#2:44\n19#2:48\n46#3:45\n51#3:47\n105#4:46\n*S KotlinDebug\n*F\n+ 1 UtAwaitable.kt\ncom/metamoji/li/task/UtAwaitable\n*L\n35#1:44\n35#1:48\n35#1:45\n35#1:47\n35#1:46\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0013\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0011J\u000e\u0010\u0012\u001a\u00028\u0000H\u0096@\u00a2\u0006\u0002\u0010\u0013R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR$\u0010\u000b\u001a\u0004\u0018\u00018\u00002\u0008\u0010\n\u001a\u0004\u0018\u00018\u0000@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/metamoji/li/task/UtAwaitable;",
        "T",
        "Lcom/metamoji/li/task/IUtAwaitable;",
        "<init>",
        "()V",
        "completion",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "getCompletion",
        "()Lkotlinx/coroutines/flow/MutableStateFlow;",
        "value",
        "result",
        "getResult",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "complete",
        "",
        "(Ljava/lang/Object;)V",
        "await",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final completion:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/li/task/UtAwaitable;->completion:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method

.method static synthetic await$suspendImpl(Lcom/metamoji/li/task/UtAwaitable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/li/task/UtAwaitable<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/li/task/UtAwaitable$await$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/li/task/UtAwaitable$await$1;

    iget v1, v0, Lcom/metamoji/li/task/UtAwaitable$await$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/li/task/UtAwaitable$await$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/li/task/UtAwaitable$await$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/li/task/UtAwaitable$await$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/li/task/UtAwaitable$await$1;-><init>(Lcom/metamoji/li/task/UtAwaitable;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/li/task/UtAwaitable$await$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 34
    iget v2, v0, Lcom/metamoji/li/task/UtAwaitable$await$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/metamoji/li/task/UtAwaitable$await$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/metamoji/li/task/UtAwaitable;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    iget-object p1, p0, Lcom/metamoji/li/task/UtAwaitable;->completion:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    .line 46
    new-instance v2, Lcom/metamoji/li/task/UtAwaitable$await$suspendImpl$$inlined$filter$1;

    invoke-direct {v2, p1}, Lcom/metamoji/li/task/UtAwaitable$await$suspendImpl$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    .line 35
    iput-object p0, v0, Lcom/metamoji/li/task/UtAwaitable$await$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/li/task/UtAwaitable$await$1;->label:I

    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 36
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/metamoji/li/task/UtAwaitable;->result:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/metamoji/li/task/UtAwaitable;->await$suspendImpl(Lcom/metamoji/li/task/UtAwaitable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public await(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-super {p0, p1}, Lcom/metamoji/li/task/IUtAwaitable;->await(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public await(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-super {p0, p1}, Lcom/metamoji/li/task/IUtAwaitable;->await(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final complete(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/metamoji/li/task/UtAwaitable;->result:Ljava/lang/Object;

    .line 31
    iget-object p1, p0, Lcom/metamoji/li/task/UtAwaitable;->completion:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final getCompletion()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/metamoji/li/task/UtAwaitable;->completion:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/metamoji/li/task/UtAwaitable;->result:Ljava/lang/Object;

    return-object v0
.end method
