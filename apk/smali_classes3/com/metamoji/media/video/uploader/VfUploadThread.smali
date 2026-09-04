.class public final Lcom/metamoji/media/video/uploader/VfUploadThread;
.super Ljava/lang/Object;
.source "VfUploadThread.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J)\u0010\u0016\u001a\u00020\u00172!\u0010\u0018\u001a\u001d\u0012\u0013\u0012\u00110\u0000\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0004\u0012\u00020\t0\u0019J\u000e\u0010\u001d\u001a\u00020\u0017H\u0086@\u00a2\u0006\u0002\u0010\u001eJ\u0006\u0010\u001f\u001a\u00020\u0017R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u00020\u0013X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006 "
    }
    d2 = {
        "Lcom/metamoji/media/video/uploader/VfUploadThread;",
        "",
        "executor",
        "Ljava/util/concurrent/ExecutorService;",
        "<init>",
        "(Ljava/util/concurrent/ExecutorService;)V",
        "getExecutor",
        "()Ljava/util/concurrent/ExecutorService;",
        "v",
        "",
        "alive",
        "getAlive",
        "()Z",
        "setAlive",
        "(Z)V",
        "uploadingThreadSwitcher",
        "Lcom/metamoji/cm/ResetableEvent;",
        "stopWatcher",
        "threadCanceller",
        "Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;",
        "getThreadCanceller$app",
        "()Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;",
        "start",
        "",
        "action",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "caller",
        "stopAsync",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kick",
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
.field private alive:Z

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final stopWatcher:Lcom/metamoji/cm/ResetableEvent;

.field private final threadCanceller:Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

.field private final uploadingThreadSwitcher:Lcom/metamoji/cm/ResetableEvent;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploadThread;->executor:Ljava/util/concurrent/ExecutorService;

    .line 18
    new-instance p1, Lcom/metamoji/cm/ResetableEvent;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lcom/metamoji/cm/ResetableEvent;-><init>(ZZ)V

    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploadThread;->uploadingThreadSwitcher:Lcom/metamoji/cm/ResetableEvent;

    .line 19
    new-instance p1, Lcom/metamoji/cm/ResetableEvent;

    invoke-direct {p1, v1, v1}, Lcom/metamoji/cm/ResetableEvent;-><init>(ZZ)V

    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploadThread;->stopWatcher:Lcom/metamoji/cm/ResetableEvent;

    .line 20
    new-instance p1, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    invoke-direct {p1}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploadThread;->threadCanceller:Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    return-void
.end method

.method public static final synthetic access$getStopWatcher$p(Lcom/metamoji/media/video/uploader/VfUploadThread;)Lcom/metamoji/cm/ResetableEvent;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/metamoji/media/video/uploader/VfUploadThread;->stopWatcher:Lcom/metamoji/cm/ResetableEvent;

    return-object p0
.end method

.method public static final synthetic access$getUploadingThreadSwitcher$p(Lcom/metamoji/media/video/uploader/VfUploadThread;)Lcom/metamoji/cm/ResetableEvent;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/metamoji/media/video/uploader/VfUploadThread;->uploadingThreadSwitcher:Lcom/metamoji/cm/ResetableEvent;

    return-object p0
.end method

.method private final setAlive(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/metamoji/media/video/uploader/VfUploadThread;->alive:Z

    return-void
.end method

.method static final start$lambda$0(Lcom/metamoji/media/video/uploader/VfUploadThread;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 27
    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploadThread$start$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/metamoji/media/video/uploader/VfUploadThread$start$1$1;-><init>(Lcom/metamoji/media/video/uploader/VfUploadThread;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAlive()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/metamoji/media/video/uploader/VfUploadThread;->alive:Z

    return v0
.end method

.method public final getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadThread;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public final getThreadCanceller$app()Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadThread;->threadCanceller:Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    return-object v0
.end method

.method public final kick()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadThread;->uploadingThreadSwitcher:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {v0}, Lcom/metamoji/cm/ResetableEvent;->set()V

    return-void
.end method

.method public final start(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/media/video/uploader/VfUploadThread;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 23
    invoke-direct {p0, v0}, Lcom/metamoji/media/video/uploader/VfUploadThread;->setAlive(Z)V

    .line 24
    const-string v0, "VfUploadThread:start"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadThread;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/metamoji/media/video/uploader/VfUploadThread$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/media/video/uploader/VfUploadThread$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/video/uploader/VfUploadThread;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final stopAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 42
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, v2}, Lcom/metamoji/media/video/uploader/VfUploadThread;->setAlive(Z)V

    .line 44
    iget-object v2, p0, Lcom/metamoji/media/video/uploader/VfUploadThread;->uploadingThreadSwitcher:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {v2}, Lcom/metamoji/cm/ResetableEvent;->set()V

    .line 45
    iget-object v2, p0, Lcom/metamoji/media/video/uploader/VfUploadThread;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/metamoji/media/video/uploader/VfUploadThread$stopAsync$2$1;

    invoke-direct {v3, p0, v1}, Lcom/metamoji/media/video/uploader/VfUploadThread$stopAsync$2$1;-><init>(Lcom/metamoji/media/video/uploader/VfUploadThread;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 42
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_1

    return-object v0

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
