.class public final Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;
.super Ljava/lang/Object;
.source "NtResourceDownloaderBase.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/dl/NtResourceDownloaderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SlowDownloadMonitor"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tH\u0002J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tH\u0002J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tH\u0002J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tH\u0002J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\tJ\u000e\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\tJ\u0008\u0010\u001a\u001a\u00020\u0016H\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;",
        "Ljava/io/Closeable;",
        "canceller",
        "Lcom/metamoji/nt/dl/INtDownloadCanceller;",
        "<init>",
        "(Lcom/metamoji/nt/dl/NtResourceDownloaderBase;Lcom/metamoji/nt/dl/INtDownloadCanceller;)V",
        "getCanceller",
        "()Lcom/metamoji/nt/dl/INtDownloadCanceller;",
        "initialTime",
        "",
        "latestTouch",
        "receivedBytes",
        "totalBytes",
        "criteria_1_duration_remaining",
        "",
        "cur",
        "criteria_2_no_response",
        "criteria_3_ave_bit_rate",
        "criteria_4_absolute_duration",
        "job",
        "Lkotlinx/coroutines/Job;",
        "touch",
        "",
        "recvSize",
        "setContentLength",
        "inBytes",
        "close",
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
.field private final canceller:Lcom/metamoji/nt/dl/INtDownloadCanceller;

.field private final initialTime:J

.field private job:Lkotlinx/coroutines/Job;

.field private latestTouch:J

.field private receivedBytes:J

.field final synthetic this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase;

.field private totalBytes:J


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/dl/NtResourceDownloaderBase;Lcom/metamoji/nt/dl/INtDownloadCanceller;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/dl/INtDownloadCanceller;",
            ")V"
        }
    .end annotation

    .line 299
    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->canceller:Lcom/metamoji/nt/dl/INtDownloadCanceller;

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->initialTime:J

    .line 329
    iput-wide v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->latestTouch:J

    .line 370
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p2, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v1}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;-><init>(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;Lcom/metamoji/nt/dl/NtResourceDownloaderBase;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->job:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$criteria_1_duration_remaining(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;J)Z
    .locals 0

    .line 299
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->criteria_1_duration_remaining(J)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$criteria_2_no_response(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;J)Z
    .locals 0

    .line 299
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->criteria_2_no_response(J)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$criteria_3_ave_bit_rate(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;J)Z
    .locals 0

    .line 299
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->criteria_3_ave_bit_rate(J)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$criteria_4_absolute_duration(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;J)Z
    .locals 0

    .line 299
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->criteria_4_absolute_duration(J)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getInitialTime$p(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;)J
    .locals 2

    .line 299
    iget-wide v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->initialTime:J

    return-wide v0
.end method

.method public static final synthetic access$getLatestTouch$p(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;)J
    .locals 2

    .line 299
    iget-wide v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->latestTouch:J

    return-wide v0
.end method

.method public static final synthetic access$getReceivedBytes$p(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;)J
    .locals 2

    .line 299
    iget-wide v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->receivedBytes:J

    return-wide v0
.end method

.method public static final synthetic access$getTotalBytes$p(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;)J
    .locals 2

    .line 299
    iget-wide v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->totalBytes:J

    return-wide v0
.end method

.method public static final synthetic access$setJob$p(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->job:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final criteria_1_duration_remaining(J)Z
    .locals 6

    .line 333
    iget-wide v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->totalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/16 v2, 0x1f40

    int-to-long v4, v2

    mul-long/2addr v0, v4

    .line 337
    sget-object v2, Lcom/metamoji/nt/dl/NtDLEnv;->INSTANCE:Lcom/metamoji/nt/dl/NtDLEnv;

    invoke-virtual {v2}, Lcom/metamoji/nt/dl/NtDLEnv;->getE()Lcom/metamoji/nt/dl/INtDLEnv;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/nt/dl/INtDLEnv;->getSLOW_BIT_RATE()J

    move-result-wide v4

    div-long/2addr v0, v4

    .line 338
    iget-wide v4, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->initialTime:J

    sub-long/2addr p1, v4

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    .line 340
    iget-wide p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->receivedBytes:J

    long-to-double p1, p1

    iget-wide v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->totalBytes:J

    long-to-double v0, v0

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    .line 341
    sget-object p1, Lcom/metamoji/nt/dl/NtDLEnv;->INSTANCE:Lcom/metamoji/nt/dl/NtDLEnv;

    invoke-virtual {p1}, Lcom/metamoji/nt/dl/NtDLEnv;->getE()Lcom/metamoji/nt/dl/INtDLEnv;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/nt/dl/INtDLEnv;->getREMAINING_THRESHOLD()D

    move-result-wide p1

    cmpl-double p1, v0, p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v3
.end method

.method private final criteria_2_no_response(J)Z
    .locals 2

    .line 350
    iget-wide v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->latestTouch:J

    sub-long/2addr p1, v0

    sget-object v0, Lcom/metamoji/nt/dl/NtDLEnv;->INSTANCE:Lcom/metamoji/nt/dl/NtDLEnv;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtDLEnv;->getE()Lcom/metamoji/nt/dl/INtDLEnv;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/dl/INtDLEnv;->getNO_RESPONSE_LIMIT()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final criteria_3_ave_bit_rate(J)Z
    .locals 6

    .line 354
    iget-wide v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->initialTime:J

    sub-long/2addr p1, v0

    .line 355
    sget-object v0, Lcom/metamoji/nt/dl/NtDLEnv;->INSTANCE:Lcom/metamoji/nt/dl/NtDLEnv;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtDLEnv;->getE()Lcom/metamoji/nt/dl/INtDLEnv;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/dl/INtDLEnv;->getMIN_AVE_DURATION()J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 356
    iget-wide v2, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->receivedBytes:J

    const/16 v0, 0x8

    int-to-long v4, v0

    mul-long/2addr v2, v4

    const/16 v0, 0x3e8

    int-to-long v4, v0

    mul-long/2addr v2, v4

    div-long/2addr v2, p1

    .line 357
    sget-object p1, Lcom/metamoji/nt/dl/NtDLEnv;->INSTANCE:Lcom/metamoji/nt/dl/NtDLEnv;

    invoke-virtual {p1}, Lcom/metamoji/nt/dl/NtDLEnv;->getE()Lcom/metamoji/nt/dl/INtDLEnv;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/nt/dl/INtDLEnv;->getSLOWEST_AVE_BIT_RATE()J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method private final criteria_4_absolute_duration(J)Z
    .locals 4

    .line 364
    sget-object v0, Lcom/metamoji/nt/dl/NtDLEnv;->INSTANCE:Lcom/metamoji/nt/dl/NtDLEnv;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtDLEnv;->getE()Lcom/metamoji/nt/dl/INtDLEnv;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/dl/INtDLEnv;->getLONGEST_DURATION()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->initialTime:J

    sub-long/2addr p1, v0

    sget-object v0, Lcom/metamoji/nt/dl/NtDLEnv;->INSTANCE:Lcom/metamoji/nt/dl/NtDLEnv;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtDLEnv;->getE()Lcom/metamoji/nt/dl/INtDLEnv;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/dl/INtDLEnv;->getLONGEST_DURATION()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 440
    monitor-enter p0

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->job:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 442
    :cond_0
    iput-object v1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->job:Lkotlinx/coroutines/Job;

    .line 443
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getCanceller()Lcom/metamoji/nt/dl/INtDownloadCanceller;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->canceller:Lcom/metamoji/nt/dl/INtDownloadCanceller;

    return-object v0
.end method

.method public final setContentLength(J)V
    .locals 0

    .line 430
    iput-wide p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->totalBytes:J

    const-wide/16 p1, 0x0

    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->touch(J)V

    return-void
.end method

.method public final touch(J)V
    .locals 2

    .line 422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->latestTouch:J

    .line 423
    iput-wide p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->receivedBytes:J

    return-void
.end method
