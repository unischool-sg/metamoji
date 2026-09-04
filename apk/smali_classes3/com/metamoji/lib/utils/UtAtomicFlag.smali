.class public final Lcom/metamoji/lib/utils/UtAtomicFlag;
.super Ljava/lang/Object;
.source "UtAtomicFlag.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtAtomicFlag.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtAtomicFlag.kt\ncom/metamoji/lib/utils/UtAtomicFlag\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,26:1\n116#2,11:27\n116#2,11:38\n*S KotlinDebug\n*F\n+ 1 UtAtomicFlag.kt\ncom/metamoji/lib/utils/UtAtomicFlag\n*L\n11#1:27,11\n22#1:38,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0003H\u0086@\u00a2\u0006\u0002\u0010\u000cJ8\u0010\r\u001a\u0002H\u000e\"\u0004\u0008\u0000\u0010\u000e2\"\u0010\u000f\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000e0\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0010H\u0086@\u00a2\u0006\u0002\u0010\u0012R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/UtAtomicFlag;",
        "",
        "initialFlag",
        "",
        "<init>",
        "(Z)V",
        "flag",
        "mutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "setFlag",
        "",
        "v",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "withFlag",
        "T",
        "fn",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private flag:Z

.field private final mutex:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lcom/metamoji/lib/utils/UtAtomicFlag;->flag:Z

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8
    invoke-static {v1, p1, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lib/utils/UtAtomicFlag;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method


# virtual methods
.method public final setFlag(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/metamoji/lib/utils/UtAtomicFlag$setFlag$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/lib/utils/UtAtomicFlag$setFlag$1;

    iget v1, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$setFlag$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$setFlag$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$setFlag$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/lib/utils/UtAtomicFlag$setFlag$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/lib/utils/UtAtomicFlag$setFlag$1;-><init>(Lcom/metamoji/lib/utils/UtAtomicFlag;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$setFlag$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 10
    iget v2, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$setFlag$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget p1, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$setFlag$1;->I$0:I

    iget-boolean p1, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$setFlag$1;->Z$0:Z

    iget-object v0, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$setFlag$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    iget-object p2, p0, Lcom/metamoji/lib/utils/UtAtomicFlag;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 32
    iput-object p2, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$setFlag$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$setFlag$1;->Z$0:Z

    const/4 v2, 0x0

    iput v2, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$setFlag$1;->I$0:I

    iput v4, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$setFlag$1;->label:I

    invoke-interface {p2, v3, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p2

    .line 12
    :goto_1
    :try_start_0
    iput-boolean p1, p0, Lcom/metamoji/lib/utils/UtAtomicFlag;->flag:Z

    .line 13
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-interface {v0, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 14
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 36
    invoke-interface {v0, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final withFlag(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;

    iget v1, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;-><init>(Lcom/metamoji/lib/utils/UtAtomicFlag;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 21
    iget v2, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget p1, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;->I$1:I

    iget p1, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;->I$0:I

    iget-object p1, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;->I$0:I

    iget-object v2, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, v2

    move v2, p1

    move-object p1, v5

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    iget-object p2, p0, Lcom/metamoji/lib/utils/UtAtomicFlag;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 43
    iput-object p1, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;->I$0:I

    iput v5, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;->label:I

    invoke-interface {p2, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    .line 23
    :goto_1
    :try_start_1
    iget-boolean v5, p0, Lcom/metamoji/lib/utils/UtAtomicFlag;->flag:Z

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;->L$1:Ljava/lang/Object;

    iput v2, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;->I$0:I

    iput v3, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;->I$1:I

    iput v4, v0, Lcom/metamoji/lib/utils/UtAtomicFlag$withFlag$1;->label:I

    invoke-interface {p1, v5, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    .line 47
    :goto_3
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    :catchall_1
    move-exception p1

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    :goto_4
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method
