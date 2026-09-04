.class public abstract Lcom/metamoji/lib/utils/UtAsyncTaskA;
.super Lcom/metamoji/lib/utils/BCAsyncTask;
.source "UtAsyncTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion;,
        Lcom/metamoji/lib/utils/UtAsyncTaskA$ExecutorType;,
        Lcom/metamoji/lib/utils/UtAsyncTaskA$IHandler;,
        Lcom/metamoji/lib/utils/UtAsyncTaskA$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/lib/utils/BCAsyncTask<",
        "Lkotlin/Unit;",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u000c\u0008&\u0018\u0000 C2\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0003ABCB\u001b\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u000e\u001a\u00020\u0002H$J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0007H\u0014J\u000e\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u001aJ\u0008\u0010#\u001a\u00020\u0002H\u0016J\u0008\u0010$\u001a\u00020\u0002H\u0016J\u000e\u0010%\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u0016J\u0014\u0010\'\u001a\u00020\u00022\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00020)J-\u0010\'\u001a\u00020\u0002\"\u0004\u0008\u0000\u0010*2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u0002H*\u0012\u0004\u0012\u00020\u00020+2\u0006\u0010,\u001a\u0002H*\u00a2\u0006\u0002\u0010-JA\u0010\'\u001a\u00020\u0002\"\u0004\u0008\u0000\u0010*\"\u0004\u0008\u0001\u0010.2\u0018\u0010(\u001a\u0014\u0012\u0004\u0012\u0002H*\u0012\u0004\u0012\u0002H.\u0012\u0004\u0012\u00020\u00020/2\u0006\u0010,\u001a\u0002H*2\u0006\u00100\u001a\u0002H.\u00a2\u0006\u0002\u00101JU\u0010\'\u001a\u00020\u0002\"\u0004\u0008\u0000\u0010*\"\u0004\u0008\u0001\u0010.\"\u0004\u0008\u0002\u001022\u001e\u0010(\u001a\u001a\u0012\u0004\u0012\u0002H*\u0012\u0004\u0012\u0002H.\u0012\u0004\u0012\u0002H2\u0012\u0004\u0012\u00020\u0002032\u0006\u0010,\u001a\u0002H*2\u0006\u00100\u001a\u0002H.2\u0006\u00104\u001a\u0002H2\u00a2\u0006\u0002\u00105J%\u00106\u001a\u00020\u00022\u0016\u00107\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u000208\"\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0002\u00109J\u0008\u0010:\u001a\u00020\u0002H\u0014J\u0017\u0010;\u001a\u00020\u00022\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0002\u0010<J%\u0010=\u001a\u00020\u00022\u0016\u0010>\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u000308\"\u0004\u0018\u00010\u0003H\u0014\u00a2\u0006\u0002\u0010?J\u0006\u0010@\u001a\u00020\u0002R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR#\u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R#\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u0011\u0010!\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\r\u00a8\u0006D"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/UtAsyncTaskA;",
        "Lcom/metamoji/lib/utils/BCAsyncTask;",
        "",
        "",
        "executorType",
        "Lcom/metamoji/lib/utils/UtAsyncTaskA$ExecutorType;",
        "autoDispose",
        "",
        "<init>",
        "(Lcom/metamoji/lib/utils/UtAsyncTaskA$ExecutorType;Z)V",
        "getExecutorType",
        "()Lcom/metamoji/lib/utils/UtAsyncTaskA$ExecutorType;",
        "getAutoDispose",
        "()Z",
        "task",
        "onFinished",
        "result",
        "onFinishedListener",
        "Lcom/metamoji/lib/utils/Funcies2;",
        "getOnFinishedListener",
        "()Lcom/metamoji/lib/utils/Funcies2;",
        "onProgressListener",
        "",
        "getOnProgressListener",
        "setListener",
        "listener",
        "Lcom/metamoji/lib/utils/UtAsyncTaskA$IHandler;",
        "exception",
        "",
        "getException",
        "()Ljava/lang/Throwable;",
        "setException",
        "(Ljava/lang/Throwable;)V",
        "hasError",
        "getHasError",
        "cancel",
        "dispose",
        "updateProgress",
        "percent",
        "runOnUiThread",
        "f",
        "Lcom/metamoji/lib/utils/IFuncy0;",
        "T1",
        "Lcom/metamoji/lib/utils/IFuncy1;",
        "a1",
        "(Lcom/metamoji/lib/utils/IFuncy1;Ljava/lang/Object;)V",
        "T2",
        "Lcom/metamoji/lib/utils/IFuncy2;",
        "a2",
        "(Lcom/metamoji/lib/utils/IFuncy2;Ljava/lang/Object;Ljava/lang/Object;)V",
        "T3",
        "Lcom/metamoji/lib/utils/IFuncy3;",
        "a3",
        "(Lcom/metamoji/lib/utils/IFuncy3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V",
        "doInBackground",
        "params",
        "",
        "([Lkotlin/Unit;)V",
        "onCancelled",
        "onPostExecute",
        "(Lkotlin/Unit;)V",
        "onProgressUpdate",
        "values",
        "([Ljava/lang/Object;)V",
        "execute",
        "ExecutorType",
        "IHandler",
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
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion;

.field private static final KEEP_ALIVE_SECONDS:J = 0x1eL

.field private static final LocalParallelExecutor$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final sPoolWorkQueue$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion$sThreadFactory$1;


# instance fields
.field private final autoDispose:Z

.field private exception:Ljava/lang/Throwable;

.field private final executorType:Lcom/metamoji/lib/utils/UtAsyncTaskA$ExecutorType;

.field private final onFinishedListener:Lcom/metamoji/lib/utils/Funcies2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/Funcies2<",
            "Lcom/metamoji/lib/utils/UtAsyncTaskA;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onProgressListener:Lcom/metamoji/lib/utils/Funcies2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/Funcies2<",
            "Lcom/metamoji/lib/utils/UtAsyncTaskA;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->Companion:Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion;

    .line 183
    new-instance v1, Lcom/metamoji/lib/utils/UtAsyncTaskA$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/metamoji/lib/utils/UtAsyncTaskA$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    sput-object v1, Lcom/metamoji/lib/utils/UtAsyncTaskA;->CPU_COUNT$delegate:Lkotlin/Lazy;

    .line 186
    invoke-static {v0}, Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion;->access$getCPU_COUNT(Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lcom/metamoji/lib/utils/UtAsyncTaskA;->CORE_POOL_SIZE:I

    .line 187
    invoke-static {v0}, Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion;->access$getCPU_COUNT(Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion;)I

    move-result v0

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->MAXIMUM_POOL_SIZE:I

    .line 189
    new-instance v0, Lcom/metamoji/lib/utils/UtAsyncTaskA$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/UtAsyncTaskA$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->sPoolWorkQueue$delegate:Lkotlin/Lazy;

    .line 193
    new-instance v0, Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion$sThreadFactory$1;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion$sThreadFactory$1;-><init>()V

    sput-object v0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->sThreadFactory:Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion$sThreadFactory$1;

    .line 200
    new-instance v0, Lcom/metamoji/lib/utils/UtAsyncTaskA$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/UtAsyncTaskA$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->LocalParallelExecutor$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lcom/metamoji/lib/utils/UtAsyncTaskA;-><init>(Lcom/metamoji/lib/utils/UtAsyncTaskA$ExecutorType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/lib/utils/UtAsyncTaskA$ExecutorType;Z)V
    .locals 1

    const-string v0, "executorType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/metamoji/lib/utils/BCAsyncTask;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->executorType:Lcom/metamoji/lib/utils/UtAsyncTaskA$ExecutorType;

    iput-boolean p2, p0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->autoDispose:Z

    .line 44
    new-instance p1, Lcom/metamoji/lib/utils/Funcies2;

    invoke-direct {p1}, Lcom/metamoji/lib/utils/Funcies2;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->onFinishedListener:Lcom/metamoji/lib/utils/Funcies2;

    .line 49
    new-instance p1, Lcom/metamoji/lib/utils/Funcies2;

    invoke-direct {p1}, Lcom/metamoji/lib/utils/Funcies2;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->onProgressListener:Lcom/metamoji/lib/utils/Funcies2;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/metamoji/lib/utils/UtAsyncTaskA$ExecutorType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 16
    sget-object p1, Lcom/metamoji/lib/utils/UtAsyncTaskA$ExecutorType;->LOCAL_PARALLEL:Lcom/metamoji/lib/utils/UtAsyncTaskA$ExecutorType;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/utils/UtAsyncTaskA;-><init>(Lcom/metamoji/lib/utils/UtAsyncTaskA$ExecutorType;Z)V

    return-void
.end method

.method static final CPU_COUNT_delegate$lambda$0()I
    .locals 1

    .line 184
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method

.method static final LocalParallelExecutor_delegate$lambda$3()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 8

    .line 201
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lcom/metamoji/lib/utils/UtAsyncTaskA;->CORE_POOL_SIZE:I

    sget v2, Lcom/metamoji/lib/utils/UtAsyncTaskA;->MAXIMUM_POOL_SIZE:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 202
    sget-object v3, Lcom/metamoji/lib/utils/UtAsyncTaskA;->Companion:Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion;

    invoke-static {v3}, Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion;->access$getSPoolWorkQueue(Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/util/concurrent/BlockingQueue;

    sget-object v3, Lcom/metamoji/lib/utils/UtAsyncTaskA;->sThreadFactory:Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion$sThreadFactory$1;

    move-object v7, v3

    check-cast v7, Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v3, 0x1e

    .line 201
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x1

    .line 203
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-object v0
.end method

.method public static final synthetic access$getCPU_COUNT$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 15
    sget-object v0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->CPU_COUNT$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getLocalParallelExecutor$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 15
    sget-object v0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->LocalParallelExecutor$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getSPoolWorkQueue$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 15
    sget-object v0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->sPoolWorkQueue$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method static final sPoolWorkQueue_delegate$lambda$1()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 2

    .line 190
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/UtAsyncTaskA;->cancel(Z)Z

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->onFinishedListener:Lcom/metamoji/lib/utils/Funcies2;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/Funcies2;->clear()V

    .line 91
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->onProgressListener:Lcom/metamoji/lib/utils/Funcies2;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/Funcies2;->clear()V

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/UtAsyncTaskA;->cancel(Z)Z

    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, [Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtAsyncTaskA;->doInBackground([Lkotlin/Unit;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method protected varargs doInBackground([Lkotlin/Unit;)V
    .locals 2

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 134
    :try_start_0
    iput-object p1, p0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->exception:Ljava/lang/Throwable;

    .line 135
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/UtAsyncTaskA;->task()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 137
    sget-object v0, Lcom/metamoji/lib/utils/UtLog;->Companion:Lcom/metamoji/lib/utils/UtLog$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/UtLog$Companion;->getLibLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    .line 138
    iput-object p1, p0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->exception:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 139
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtAsyncTaskA;->cancel(Z)Z

    return-void
.end method

.method public final execute()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->executorType:Lcom/metamoji/lib/utils/UtAsyncTaskA$ExecutorType;

    sget-object v1, Lcom/metamoji/lib/utils/UtAsyncTaskA$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/UtAsyncTaskA$ExecutorType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 173
    sget-object v0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->Companion:Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion;->getLocalParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-super {p0, v0, v1}, Lcom/metamoji/lib/utils/BCAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/metamoji/lib/utils/BCAsyncTask;

    return-void

    .line 172
    :cond_0
    sget-object v0, Lcom/metamoji/lib/utils/BCAsyncTask;->Companion:Lcom/metamoji/lib/utils/BCAsyncTask$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/BCAsyncTask$Companion;->getTHREAD_POOL_EXECUTOR()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-super {p0, v0, v1}, Lcom/metamoji/lib/utils/BCAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/metamoji/lib/utils/BCAsyncTask;

    return-void

    .line 170
    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    .line 171
    invoke-super {p0, v0}, Lcom/metamoji/lib/utils/BCAsyncTask;->execute([Ljava/lang/Object;)Lcom/metamoji/lib/utils/BCAsyncTask;

    return-void
.end method

.method public final getAutoDispose()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->autoDispose:Z

    return v0
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getExecutorType()Lcom/metamoji/lib/utils/UtAsyncTaskA$ExecutorType;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->executorType:Lcom/metamoji/lib/utils/UtAsyncTaskA$ExecutorType;

    return-object v0
.end method

.method public final getHasError()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getOnFinishedListener()Lcom/metamoji/lib/utils/Funcies2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/Funcies2<",
            "Lcom/metamoji/lib/utils/UtAsyncTaskA;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->onFinishedListener:Lcom/metamoji/lib/utils/Funcies2;

    return-object v0
.end method

.method public final getOnProgressListener()Lcom/metamoji/lib/utils/Funcies2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/Funcies2<",
            "Lcom/metamoji/lib/utils/UtAsyncTaskA;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->onProgressListener:Lcom/metamoji/lib/utils/Funcies2;

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .line 144
    invoke-super {p0}, Lcom/metamoji/lib/utils/BCAsyncTask;->onCancelled()V

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/UtAsyncTaskA;->onFinished(Z)V

    return-void
.end method

.method protected onFinished(Z)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->onFinishedListener:Lcom/metamoji/lib/utils/Funcies2;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/lib/utils/Funcies2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    iget-boolean p1, p0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->autoDispose:Z

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/UtAsyncTaskA;->dispose()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtAsyncTaskA;->onPostExecute(Lkotlin/Unit;)V

    return-void
.end method

.method protected onPostExecute(Lkotlin/Unit;)V
    .locals 0

    .line 149
    invoke-super {p0, p1}, Lcom/metamoji/lib/utils/BCAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 150
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtAsyncTaskA;->onFinished(Z)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 3

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/metamoji/lib/utils/BCAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 155
    aget-object v0, p1, v0

    if-eqz v0, :cond_0

    .line 157
    instance-of p1, v0, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 158
    iget-object p1, p0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->onProgressListener:Lcom/metamoji/lib/utils/Funcies2;

    invoke-virtual {p1, p0, v0}, Lcom/metamoji/lib/utils/Funcies2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 161
    aget-object v0, p1, v0

    if-eqz v0, :cond_1

    .line 162
    instance-of v1, v0, Lcom/metamoji/lib/utils/IFuncy;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 163
    array-length v2, p1

    invoke-static {p1, v1, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    .line 164
    check-cast v0, Lcom/metamoji/lib/utils/IFuncy;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/metamoji/lib/utils/IFuncy;->invoke_([Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final runOnUiThread(Lcom/metamoji/lib/utils/IFuncy0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/IFuncy0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 109
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtAsyncTaskA;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method public final runOnUiThread(Lcom/metamoji/lib/utils/IFuncy1;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/lib/utils/IFuncy1<",
            "TT1;",
            "Lkotlin/Unit;",
            ">;TT1;)V"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 115
    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtAsyncTaskA;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method public final runOnUiThread(Lcom/metamoji/lib/utils/IFuncy2;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/lib/utils/IFuncy2<",
            "TT1;TT2;",
            "Lkotlin/Unit;",
            ">;TT1;TT2;)V"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 121
    filled-new-array {v0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtAsyncTaskA;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method public final runOnUiThread(Lcom/metamoji/lib/utils/IFuncy3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/lib/utils/IFuncy3<",
            "TT1;TT2;TT3;",
            "Lkotlin/Unit;",
            ">;TT1;TT2;TT3;)V"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 127
    filled-new-array {v0, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtAsyncTaskA;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method public final setException(Ljava/lang/Throwable;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->exception:Ljava/lang/Throwable;

    return-void
.end method

.method public final setListener(Lcom/metamoji/lib/utils/UtAsyncTaskA$IHandler;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->onFinishedListener:Lcom/metamoji/lib/utils/Funcies2;

    new-instance v1, Lcom/metamoji/lib/utils/UtAsyncTaskA$setListener$1;

    invoke-direct {v1, p1}, Lcom/metamoji/lib/utils/UtAsyncTaskA$setListener$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const-string/jumbo v2, "single"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/lib/utils/Funcies2;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    .line 65
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncTaskA;->onProgressListener:Lcom/metamoji/lib/utils/Funcies2;

    new-instance v1, Lcom/metamoji/lib/utils/UtAsyncTaskA$setListener$2;

    invoke-direct {v1, p1}, Lcom/metamoji/lib/utils/UtAsyncTaskA$setListener$2;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/lib/utils/Funcies2;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    return-void
.end method

.method protected abstract task()V
.end method

.method public final updateProgress(I)V
    .locals 0

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtAsyncTaskA;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method
