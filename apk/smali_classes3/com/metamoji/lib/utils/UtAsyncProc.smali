.class public final Lcom/metamoji/lib/utils/UtAsyncProc;
.super Ljava/lang/Object;
.source "UtAsyncProc.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtAsyncProc.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtAsyncProc.kt\ncom/metamoji/lib/utils/UtAsyncProc\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,95:1\n1#2:96\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u001f\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000eJ \u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00110\u0010J \u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00110\u0010J\u001a\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000eJ\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u0006\u0010\u001c\u001a\u00020\u0011R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/UtAsyncProc;",
        "T",
        "",
        "handler",
        "Landroid/os/Handler;",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "<init>",
        "(Landroid/os/Handler;Ljava/util/concurrent/Executor;)V",
        "getHandler",
        "()Landroid/os/Handler;",
        "getExecutor",
        "()Ljava/util/concurrent/Executor;",
        "action",
        "Lkotlin/Function0;",
        "completed",
        "Lkotlin/Function1;",
        "",
        "failed",
        "",
        "finished",
        "lock",
        "Ljava/lang/Object;",
        "thread",
        "Ljava/lang/Thread;",
        "cancelling",
        "",
        "execute",
        "cancel",
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
.field private action:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private cancelling:Z

.field private completed:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private failed:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private finished:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private lock:Ljava/lang/Object;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/metamoji/lib/utils/UtAsyncProc;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->executor:Ljava/util/concurrent/Executor;

    .line 15
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->lock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/utils/UtAsyncProc;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static final execute$lambda$4(Lcom/metamoji/lib/utils/UtAsyncProc;)V
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->action:Lkotlin/jvm/functions/Function0;

    .line 46
    iget-object v1, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    .line 48
    :try_start_0
    iget-object v3, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 49
    :try_start_1
    iget-boolean v4, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->cancelling:Z

    if-nez v4, :cond_4

    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->thread:Ljava/lang/Thread;

    .line 53
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    :try_start_2
    monitor-exit v3

    if-eqz v0, :cond_3

    .line 57
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 58
    iget-object v3, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->completed:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    .line 61
    new-instance v4, Lcom/metamoji/lib/utils/UtAsyncProc$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v0}, Lcom/metamoji/lib/utils/UtAsyncProc$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 65
    :cond_0
    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 78
    :cond_1
    :goto_0
    :try_start_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->finished:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 55
    :cond_3
    :try_start_4
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v3, "no action"

    invoke-direct {v0, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 50
    :cond_4
    :try_start_5
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v4, "not started."

    invoke-direct {v0, v4}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    .line 48
    :try_start_6
    monitor-exit v3

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    .line 69
    :try_start_7
    iget-object v3, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->failed:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_6

    if-eqz v1, :cond_5

    .line 72
    new-instance v4, Lcom/metamoji/lib/utils/UtAsyncProc$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, v0}, Lcom/metamoji/lib/utils/UtAsyncProc$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 74
    :cond_5
    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 78
    :cond_6
    :goto_2
    :try_start_8
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->finished:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_3

    :cond_7
    move-object v0, v2

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    :goto_4
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :goto_5
    iput-object v2, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->completed:Lkotlin/jvm/functions/Function1;

    .line 80
    iput-object v2, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->action:Lkotlin/jvm/functions/Function0;

    .line 81
    iput-object v2, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->failed:Lkotlin/jvm/functions/Function1;

    .line 82
    iput-object v2, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->finished:Lkotlin/jvm/functions/Function0;

    .line 83
    iput-object v2, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->thread:Ljava/lang/Thread;

    return-void

    :catchall_4
    move-exception v0

    .line 78
    :try_start_9
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->finished:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_6

    :cond_8
    move-object v1, v2

    :goto_6
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v1

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :goto_7
    iput-object v2, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->completed:Lkotlin/jvm/functions/Function1;

    .line 80
    iput-object v2, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->action:Lkotlin/jvm/functions/Function0;

    .line 81
    iput-object v2, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->failed:Lkotlin/jvm/functions/Function1;

    .line 82
    iput-object v2, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->finished:Lkotlin/jvm/functions/Function0;

    .line 83
    iput-object v2, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->thread:Ljava/lang/Thread;

    throw v0
.end method

.method static final execute$lambda$4$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 62
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static final execute$lambda$4$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 0

    .line 72
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final action(Lkotlin/jvm/functions/Function0;)Lcom/metamoji/lib/utils/UtAsyncProc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lcom/metamoji/lib/utils/UtAsyncProc<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->action:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final cancel()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 91
    :try_start_0
    iput-boolean v1, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->cancelling:Z

    .line 92
    iget-object v1, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final completed(Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/UtAsyncProc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/UtAsyncProc<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "completed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->completed:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final execute()Lcom/metamoji/lib/utils/UtAsyncProc;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/UtAsyncProc<",
            "TT;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->executor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    sget-object v0, Lcom/metamoji/lib/utils/BCAsyncTask;->Companion:Lcom/metamoji/lib/utils/BCAsyncTask$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/BCAsyncTask$Companion;->getTHREAD_POOL_EXECUTOR()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 41
    :cond_0
    sget-object v1, Lcom/metamoji/lib/utils/UtLog;->Companion:Lcom/metamoji/lib/utils/UtLog$Companion;

    invoke-virtual {v1}, Lcom/metamoji/lib/utils/UtLog$Companion;->getLibLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 42
    const-string v1, "null cannot be cast to non-null type java.util.concurrent.ExecutorService"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Lcom/metamoji/lib/utils/UtLibKt;->utAssert$default(ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 44
    new-instance v1, Lcom/metamoji/lib/utils/UtAsyncProc$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/utils/UtAsyncProc$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/lib/utils/UtAsyncProc;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public final failed(Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/UtAsyncProc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/UtAsyncProc<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "failed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->failed:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final finished(Lkotlin/jvm/functions/Function0;)Lcom/metamoji/lib/utils/UtAsyncProc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/UtAsyncProc<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "finished"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->finished:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncProc;->handler:Landroid/os/Handler;

    return-object v0
.end method
