.class public abstract Lcom/metamoji/lib/utils/CRAsyncTask;
.super Ljava/lang/Object;
.source "CRAsyncTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/CRAsyncTask$Status;,
        Lcom/metamoji/lib/utils/CRAsyncTask$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000e\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u0002*\u0004\u0008\u0002\u0010\u00032\u00020\u0004:\u00016B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J!\u0010$\u001a\u00028\u00022\u0012\u0010%\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000&\"\u00028\u0000H$\u00a2\u0006\u0002\u0010\'J\u0008\u0010(\u001a\u00020)H\u0014J\u0015\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00028\u0002H\u0014\u00a2\u0006\u0002\u0010,J!\u0010-\u001a\u00020)2\u0012\u0010.\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00010&\"\u00028\u0001H\u0014\u00a2\u0006\u0002\u0010/J\u0008\u00100\u001a\u00020)H\u0014J\u000e\u00101\u001a\u00020\u00132\u0006\u00102\u001a\u00020\u0013J1\u00103\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00002\u0012\u0010%\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000&\"\u00028\u0000\u00a2\u0006\u0002\u00104J!\u00105\u001a\u00020)2\u0012\u0010.\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00010&\"\u00028\u0001H\u0004\u00a2\u0006\u0002\u0010/R\u001c\u0010\u0007\u001a\u0010\u0012\u000c\u0012\n \n*\u0004\u0018\u00010\t0\t0\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u000c\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t8F@BX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\u00138G@BX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u001a8B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001b\u0010 \u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008!\u0010\u001d\u00a8\u00067"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/CRAsyncTask;",
        "Params",
        "Progress",
        "Result",
        "",
        "<init>",
        "()V",
        "mStatus",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Lcom/metamoji/lib/utils/CRAsyncTask$Status;",
        "kotlin.jvm.PlatformType",
        "v",
        "status",
        "getStatus",
        "()Lcom/metamoji/lib/utils/CRAsyncTask$Status;",
        "setStatus",
        "(Lcom/metamoji/lib/utils/CRAsyncTask$Status;)V",
        "mCancelled",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "",
        "cancelled",
        "isCancelled",
        "()Z",
        "setCancelled",
        "(Z)V",
        "mScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "scope",
        "getScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "setScope",
        "(Lkotlinx/coroutines/CoroutineScope;)V",
        "mainScope",
        "getMainScope",
        "mainScope$delegate",
        "Lkotlin/Lazy;",
        "doInBackground",
        "params",
        "",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "onPreExecute",
        "",
        "onPostExecute",
        "result",
        "(Ljava/lang/Object;)V",
        "onProgressUpdate",
        "values",
        "([Ljava/lang/Object;)V",
        "onCancelled",
        "cancel",
        "mayInterruptIfRunning",
        "execute",
        "([Ljava/lang/Object;)Lcom/metamoji/lib/utils/CRAsyncTask;",
        "publishProgress",
        "Status",
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
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mScope:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/metamoji/lib/utils/CRAsyncTask$Status;",
            ">;"
        }
    .end annotation
.end field

.field private final mainScope$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/metamoji/lib/utils/CRAsyncTask$Status;->PENDING:Lcom/metamoji/lib/utils/CRAsyncTask$Status;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/lib/utils/CRAsyncTask;->mStatus:Ljava/util/concurrent/atomic/AtomicReference;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/metamoji/lib/utils/CRAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/lib/utils/CRAsyncTask;->mScope:Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    new-instance v0, Lcom/metamoji/lib/utils/CRAsyncTask$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/CRAsyncTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/utils/CRAsyncTask;->mainScope$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getMainScope(Lcom/metamoji/lib/utils/CRAsyncTask;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/metamoji/lib/utils/CRAsyncTask;->getMainScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setStatus(Lcom/metamoji/lib/utils/CRAsyncTask;Lcom/metamoji/lib/utils/CRAsyncTask$Status;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/metamoji/lib/utils/CRAsyncTask;->setStatus(Lcom/metamoji/lib/utils/CRAsyncTask$Status;)V

    return-void
.end method

.method private final getMainScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/metamoji/lib/utils/CRAsyncTask;->mainScope$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method private final getScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/lib/utils/CRAsyncTask;->mScope:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method static final mainScope_delegate$lambda$0()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 39
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method private final setCancelled(Z)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/metamoji/lib/utils/CRAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private final setScope(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/lib/utils/CRAsyncTask;->mScope:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private final setStatus(Lcom/metamoji/lib/utils/CRAsyncTask$Status;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/metamoji/lib/utils/CRAsyncTask;->mStatus:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2

    const/4 v0, 0x1

    .line 53
    invoke-direct {p0, v0}, Lcom/metamoji/lib/utils/CRAsyncTask;->setCancelled(Z)V

    if-eqz p1, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/metamoji/lib/utils/CRAsyncTask;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/metamoji/lib/utils/CRAsyncTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/metamoji/lib/utils/CRAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/CRAsyncTask;->getStatus()Lcom/metamoji/lib/utils/CRAsyncTask$Status;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/utils/CRAsyncTask$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/CRAsyncTask$Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 70
    sget-object v0, Lcom/metamoji/lib/utils/CRAsyncTask$Status;->RUNNING:Lcom/metamoji/lib/utils/CRAsyncTask$Status;

    invoke-direct {p0, v0}, Lcom/metamoji/lib/utils/CRAsyncTask;->setStatus(Lcom/metamoji/lib/utils/CRAsyncTask$Status;)V

    .line 72
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/CRAsyncTask;->onPreExecute()V

    .line 74
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    .line 75
    new-instance v0, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;-><init>(Lcom/metamoji/lib/utils/CRAsyncTask;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 74
    invoke-direct {p0, v1}, Lcom/metamoji/lib/utils/CRAsyncTask;->setScope(Lkotlinx/coroutines/CoroutineScope;)V

    return-object p0

    .line 61
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot execute task: the task is already running."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getStatus()Lcom/metamoji/lib/utils/CRAsyncTask$Status;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/metamoji/lib/utils/CRAsyncTask;->mStatus:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/lib/utils/CRAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/metamoji/lib/utils/CRAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcom/metamoji/lib/utils/CRAsyncTask;->getMainScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/lib/utils/CRAsyncTask$publishProgress$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/metamoji/lib/utils/CRAsyncTask$publishProgress$1;-><init>(Lcom/metamoji/lib/utils/CRAsyncTask;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
