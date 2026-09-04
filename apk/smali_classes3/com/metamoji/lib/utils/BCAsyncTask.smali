.class public abstract Lcom/metamoji/lib/utils/BCAsyncTask;
.super Ljava/lang/Object;
.source "BCAsyncTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/BCAsyncTask$Companion;,
        Lcom/metamoji/lib/utils/BCAsyncTask$Status;,
        Lcom/metamoji/lib/utils/BCAsyncTask$WhenMappings;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBCAsyncTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BCAsyncTask.kt\ncom/metamoji/lib/utils/BCAsyncTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,150:1\n1#2:151\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000 <*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u0002*\u0004\u0008\u0002\u0010\u00032\u00020\u0004:\u0002;<B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J!\u0010\"\u001a\u00028\u00022\u0012\u0010#\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000$\"\u00028\u0000H$\u00a2\u0006\u0002\u0010%J\u0008\u0010&\u001a\u00020\'H\u0014J\u0015\u0010(\u001a\u00020\'2\u0006\u0010)\u001a\u00028\u0002H\u0014\u00a2\u0006\u0002\u0010*J!\u0010+\u001a\u00020\'2\u0012\u0010,\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00010$\"\u00028\u0001H\u0014\u00a2\u0006\u0002\u0010-J\u0008\u0010.\u001a\u00020\'H\u0014J\u000e\u0010/\u001a\u00020\u00132\u0006\u00100\u001a\u00020\u0013J1\u00101\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00002\u0012\u0010#\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000$\"\u00028\u0000\u00a2\u0006\u0002\u00102J\u0016\u00103\u001a\u00020\'2\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020\'05H\u0002J9\u00106\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00002\u0006\u00107\u001a\u0002082\u0012\u0010#\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000$\"\u00028\u0000\u00a2\u0006\u0002\u00109J!\u0010:\u001a\u00020\'2\u0012\u0010,\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00010$\"\u00028\u0001H\u0004\u00a2\u0006\u0002\u0010-R\u001c\u0010\u0007\u001a\u0010\u0012\u000c\u0012\n \n*\u0004\u0018\u00010\t0\t0\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u000c\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t8F@BX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\u00138G@BX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u001a8B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006="
    }
    d2 = {
        "Lcom/metamoji/lib/utils/BCAsyncTask;",
        "Params",
        "Progress",
        "Result",
        "",
        "<init>",
        "()V",
        "mStatus",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Lcom/metamoji/lib/utils/BCAsyncTask$Status;",
        "kotlin.jvm.PlatformType",
        "v",
        "status",
        "getStatus",
        "()Lcom/metamoji/lib/utils/BCAsyncTask$Status;",
        "setStatus",
        "(Lcom/metamoji/lib/utils/BCAsyncTask$Status;)V",
        "mCancelled",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "",
        "cancelled",
        "isCancelled",
        "()Z",
        "setCancelled",
        "(Z)V",
        "mThread",
        "Ljava/lang/Thread;",
        "thread",
        "getThread",
        "()Ljava/lang/Thread;",
        "setThread",
        "(Ljava/lang/Thread;)V",
        "handler",
        "Landroid/os/Handler;",
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
        "([Ljava/lang/Object;)Lcom/metamoji/lib/utils/BCAsyncTask;",
        "call",
        "fn",
        "Lkotlin/Function0;",
        "executeOnExecutor",
        "exec",
        "Ljava/util/concurrent/Executor;",
        "(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/metamoji/lib/utils/BCAsyncTask;",
        "publishProgress",
        "Status",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/lib/utils/BCAsyncTask$Companion;

.field private static final SERIAL_EXECUTOR$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private static final THREAD_POOL_EXECUTOR$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mStatus:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/metamoji/lib/utils/BCAsyncTask$Status;",
            ">;"
        }
    .end annotation
.end field

.field private final mThread:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/BCAsyncTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/BCAsyncTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/BCAsyncTask;->Companion:Lcom/metamoji/lib/utils/BCAsyncTask$Companion;

    .line 139
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/metamoji/lib/utils/BCAsyncTask;->threadIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 141
    new-instance v0, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/utils/BCAsyncTask;->SERIAL_EXECUTOR$delegate:Lkotlin/Lazy;

    .line 145
    new-instance v0, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/utils/BCAsyncTask;->THREAD_POOL_EXECUTOR$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/metamoji/lib/utils/BCAsyncTask$Status;->PENDING:Lcom/metamoji/lib/utils/BCAsyncTask$Status;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/lib/utils/BCAsyncTask;->mStatus:Ljava/util/concurrent/atomic/AtomicReference;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/metamoji/lib/utils/BCAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/lib/utils/BCAsyncTask;->mThread:Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_0
    iput-object v1, p0, Lcom/metamoji/lib/utils/BCAsyncTask;->handler:Landroid/os/Handler;

    return-void
.end method

.method static final SERIAL_EXECUTOR_delegate$lambda$7()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 142
    new-instance v0, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method static final SERIAL_EXECUTOR_delegate$lambda$7$lambda$6(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "BCAsyncTask-S"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method static final THREAD_POOL_EXECUTOR_delegate$lambda$9()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 146
    new-instance v0, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method static final THREAD_POOL_EXECUTOR_delegate$lambda$9$lambda$8(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4

    .line 146
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/metamoji/lib/utils/BCAsyncTask;->threadIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BCAsyncTask#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final synthetic access$getSERIAL_EXECUTOR$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 25
    sget-object v0, Lcom/metamoji/lib/utils/BCAsyncTask;->SERIAL_EXECUTOR$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getTHREAD_POOL_EXECUTOR$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 25
    sget-object v0, Lcom/metamoji/lib/utils/BCAsyncTask;->THREAD_POOL_EXECUTOR$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final call(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/metamoji/lib/utils/BCAsyncTask;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method static final call$lambda$1(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 82
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method static final executeOnExecutor$lambda$4(Lcom/metamoji/lib/utils/BCAsyncTask;[Ljava/lang/Object;)V
    .locals 3

    .line 100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/lib/utils/BCAsyncTask;->setThread(Ljava/lang/Thread;)V

    .line 102
    :try_start_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/BCAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 103
    new-instance v0, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/lib/utils/BCAsyncTask;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/metamoji/lib/utils/BCAsyncTask;->call(Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :goto_0
    sget-object p1, Lcom/metamoji/lib/utils/BCAsyncTask$Status;->FINISHED:Lcom/metamoji/lib/utils/BCAsyncTask$Status;

    invoke-direct {p0, p1}, Lcom/metamoji/lib/utils/BCAsyncTask;->setStatus(Lcom/metamoji/lib/utils/BCAsyncTask$Status;)V

    return-void

    :catchall_0
    move-exception p1

    const/4 v0, 0x1

    .line 111
    :try_start_1
    invoke-direct {p0, v0}, Lcom/metamoji/lib/utils/BCAsyncTask;->setCancelled(Z)V

    .line 113
    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    sget-object v0, Lcom/metamoji/lib/utils/UtLog;->Companion:Lcom/metamoji/lib/utils/UtLog$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/UtLog$Companion;->getLibLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 116
    :cond_1
    :goto_1
    new-instance p1, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/lib/utils/BCAsyncTask;)V

    invoke-direct {p0, p1}, Lcom/metamoji/lib/utils/BCAsyncTask;->call(Lkotlin/jvm/functions/Function0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 120
    sget-object v0, Lcom/metamoji/lib/utils/BCAsyncTask$Status;->FINISHED:Lcom/metamoji/lib/utils/BCAsyncTask$Status;

    invoke-direct {p0, v0}, Lcom/metamoji/lib/utils/BCAsyncTask;->setStatus(Lcom/metamoji/lib/utils/BCAsyncTask$Status;)V

    throw p1
.end method

.method static final executeOnExecutor$lambda$4$lambda$2(Lcom/metamoji/lib/utils/BCAsyncTask;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/BCAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/BCAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/BCAsyncTask;->onCancelled()V

    .line 109
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final executeOnExecutor$lambda$4$lambda$3(Lcom/metamoji/lib/utils/BCAsyncTask;)Lkotlin/Unit;
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/BCAsyncTask;->onCancelled()V

    .line 118
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getThread()Ljava/lang/Thread;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/metamoji/lib/utils/BCAsyncTask;->mThread:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    return-object v0
.end method

.method static final publishProgress$lambda$5(Lcom/metamoji/lib/utils/BCAsyncTask;[Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1

    .line 128
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/BCAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 129
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final setCancelled(Z)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/lib/utils/BCAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private final setStatus(Lcom/metamoji/lib/utils/BCAsyncTask$Status;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/metamoji/lib/utils/BCAsyncTask;->mStatus:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private final setThread(Ljava/lang/Thread;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/metamoji/lib/utils/BCAsyncTask;->mThread:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    const/4 v0, 0x1

    .line 57
    invoke-direct {p0, v0}, Lcom/metamoji/lib/utils/BCAsyncTask;->setCancelled(Z)V

    if-eqz p1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/metamoji/lib/utils/BCAsyncTask;->getThread()Ljava/lang/Thread;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

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

.method public final varargs execute([Ljava/lang/Object;)Lcom/metamoji/lib/utils/BCAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/metamoji/lib/utils/BCAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/metamoji/lib/utils/BCAsyncTask;->Companion:Lcom/metamoji/lib/utils/BCAsyncTask$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/BCAsyncTask$Companion;->getTHREAD_POOL_EXECUTOR()Ljava/util/concurrent/Executor;

    move-result-object v0

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/lib/utils/BCAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/metamoji/lib/utils/BCAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/metamoji/lib/utils/BCAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/metamoji/lib/utils/BCAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    const-string v0, "exec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/BCAsyncTask;->getStatus()Lcom/metamoji/lib/utils/BCAsyncTask$Status;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/utils/BCAsyncTask$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/BCAsyncTask$Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 95
    sget-object v0, Lcom/metamoji/lib/utils/BCAsyncTask$Status;->RUNNING:Lcom/metamoji/lib/utils/BCAsyncTask$Status;

    invoke-direct {p0, v0}, Lcom/metamoji/lib/utils/BCAsyncTask;->setStatus(Lcom/metamoji/lib/utils/BCAsyncTask$Status;)V

    .line 97
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/BCAsyncTask;->onPreExecute()V

    .line 99
    new-instance v0, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/lib/utils/BCAsyncTask;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0

    .line 86
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task is already running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getStatus()Lcom/metamoji/lib/utils/BCAsyncTask$Status;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/metamoji/lib/utils/BCAsyncTask;->mStatus:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/lib/utils/BCAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/lib/utils/BCAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/lib/utils/BCAsyncTask$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/lib/utils/BCAsyncTask;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/metamoji/lib/utils/BCAsyncTask;->call(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
