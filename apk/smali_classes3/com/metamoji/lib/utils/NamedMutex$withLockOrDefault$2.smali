.class public final Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NamedMutex.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/utils/NamedMutex;->withLockOrDefault(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-TR;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNamedMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NamedMutex.kt\ncom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,107:1\n121#2,6:108\n*S KotlinDebug\n*F\n+ 1 NamedMutex.kt\ncom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2\n*L\n90#1:108,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "R",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0xb0
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.metamoji.lib.utils.NamedMutex$withLockOrDefault$2"
    f = "NamedMutex.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x6c
    }
    m = "invokeSuspend"
    n = {
        "$this$withLock$iv",
        "owner$iv",
        "action$iv",
        "$i$f$withLock"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $action:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic $mutex:Lkotlinx/coroutines/sync/Mutex;

.field final synthetic $owner:Ljava/lang/Object;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/sync/Mutex;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->$mutex:Lkotlinx/coroutines/sync/Mutex;

    iput-object p2, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->$owner:Ljava/lang/Object;

    iput-object p3, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->$action:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;

    iget-object v0, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->$mutex:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->$owner:Ljava/lang/Object;

    iget-object v2, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->$action:Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;-><init>(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 89
    iget v1, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->L$2:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->L$1:Ljava/lang/Object;

    iget-object v2, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 90
    iget-object p1, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->$mutex:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->$owner:Ljava/lang/Object;

    iget-object v3, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->$action:Lkotlin/jvm/functions/Function0;

    .line 108
    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->L$1:Ljava/lang/Object;

    iput-object v3, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->L$2:Ljava/lang/Object;

    const/4 v5, 0x0

    iput v5, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->I$0:I

    iput v2, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->label:I

    invoke-interface {p1, v1, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    move-object v2, p1

    move-object v0, v3

    .line 110
    :goto_0
    :try_start_0
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-interface {v2, v1}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v2, v1}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final invokeSuspend$$forInline(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 90
    iget-object p1, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->$mutex:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->$owner:Ljava/lang/Object;

    iget-object v1, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$2;->$action:Lkotlin/jvm/functions/Function0;

    .line 108
    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-interface {p1, v0, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 110
    :try_start_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-interface {p1, v0}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {p1, v0}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v1
.end method
