.class public final Lcom/metamoji/cm/CmTaskManagerKotlinKt;
.super Ljava/lang/Object;
.source "CmTaskManagerKotlin.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001c\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086@\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "ensureRunOnBackgroundSuspend",
        "",
        "Lcom/metamoji/cm/CmTaskManager;",
        "runnable",
        "Ljava/lang/Runnable;",
        "(Lcom/metamoji/cm/CmTaskManager;Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cm"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final ensureRunOnBackgroundSuspend(Lcom/metamoji/cm/CmTaskManager;Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/CmTaskManager;",
            "Ljava/lang/Runnable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 13
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 14
    new-instance v2, Lcom/metamoji/cm/CmTaskManagerKotlinKt$ensureRunOnBackgroundSuspend$2$1;

    invoke-direct {v2, p1}, Lcom/metamoji/cm/CmTaskManagerKotlinKt$ensureRunOnBackgroundSuspend$2$1;-><init>(Ljava/lang/Runnable;)V

    check-cast v2, Ljava/lang/Runnable;

    new-instance p1, Lcom/metamoji/cm/CmTaskManagerKotlinKt$ensureRunOnBackgroundSuspend$2$2;

    invoke-direct {p1, v1}, Lcom/metamoji/cm/CmTaskManagerKotlinKt$ensureRunOnBackgroundSuspend$2$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lcom/metamoji/cm/CmTaskManager$IOnCompleted;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, p1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    .line 13
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p0
.end method
