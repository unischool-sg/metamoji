.class public final Lcom/metamoji/media/video/uploader/VfUploader;
.super Ljava/lang/Object;
.source "VfUploader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;,
        Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;,
        Lcom/metamoji/media/video/uploader/VfUploader$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0002QRB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u001c\u001a\u00020\u001dJ\u000e\u0010\u001e\u001a\u00020\u001dH\u0086@\u00a2\u0006\u0002\u0010\u001fJ\u0010\u0010 \u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u000fH\u0002J\n\u0010\"\u001a\u0004\u0018\u00010\u0017H\u0002J\n\u0010#\u001a\u0004\u0018\u00010$H\u0002J\u0008\u0010%\u001a\u00020\u001dH\u0002J\u0008\u0010)\u001a\u00020\u001dH\u0002J\u0008\u0010*\u001a\u00020\u001dH\u0002J\u0018\u0010+\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020\u00172\u0006\u0010-\u001a\u00020.H\u0002J&\u0010/\u001a\u00020\u00142\u0006\u00100\u001a\u00020\u00142\u0006\u00101\u001a\u00020$2\u0006\u00102\u001a\u000203H\u0082@\u00a2\u0006\u0002\u00104J\u000e\u00105\u001a\u00020\u00142\u0006\u0010,\u001a\u00020\u0017J\u0014\u00106\u001a\u00020\u001d2\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u001708J8\u00109\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020\u00172\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020\u00172\u0008\u0010=\u001a\u0004\u0018\u00010\u00172\u0006\u0010>\u001a\u00020\u00142\u0006\u0010?\u001a\u00020\u0014JI\u0010C\u001a\u00020D2\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020$082\u0006\u00102\u001a\u0002032#\u0010F\u001a\u001f\u0012\u0013\u0012\u00110H\u00a2\u0006\u000c\u0008I\u0012\u0008\u0008J\u0012\u0004\u0008\u0008(K\u0012\u0004\u0012\u00020\u001d\u0018\u00010GH\u0086@\u00a2\u0006\u0002\u0010LJ;\u0010M\u001a\u00020D2\u0006\u0010N\u001a\u00020O2#\u0010F\u001a\u001f\u0012\u0013\u0012\u00110H\u00a2\u0006\u000c\u0008I\u0012\u0008\u0008J\u0012\u0004\u0008\u0008(K\u0012\u0004\u0012\u00020\u001d\u0018\u00010GH\u0086@\u00a2\u0006\u0002\u0010PR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \u0012*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u00020\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010A\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010\u0019\u00a8\u0006S"
    }
    d2 = {
        "Lcom/metamoji/media/video/uploader/VfUploader;",
        "",
        "<init>",
        "()V",
        "statusDb",
        "Lcom/metamoji/media/video/uploader/VfUploadStatusDB;",
        "getStatusDb",
        "()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;",
        "setStatusDb",
        "(Lcom/metamoji/media/video/uploader/VfUploadStatusDB;)V",
        "observer",
        "Lcom/metamoji/media/video/uploader/VfUploadObserver;",
        "getObserver",
        "()Lcom/metamoji/media/video/uploader/VfUploadObserver;",
        "uploadThread",
        "Lcom/metamoji/media/video/uploader/VfUploadThread;",
        "executor",
        "Ljava/util/concurrent/ExecutorService;",
        "kotlin.jvm.PlatformType",
        "mBusy",
        "",
        "mPrioritizingQueue",
        "Ljava/util/ArrayDeque;",
        "",
        "isPrioritizing",
        "()Z",
        "mOnIdleHandler",
        "Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;",
        "initialize",
        "",
        "terminate",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "executeUpload",
        "caller",
        "getPrioritizingTicket",
        "getPrioritizingRecord",
        "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;",
        "uploadPreferred",
        "mLastResetTime",
        "",
        "MIN_RESET_INTERVAL",
        "resetErrorToWaiting",
        "uploadNormal",
        "setStatusAndFireEvent",
        "ticket",
        "status",
        "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;",
        "uploadOne",
        "force",
        "rec",
        "canceller",
        "Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;",
        "(ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "start",
        "shakeIt",
        "tickets",
        "",
        "register",
        "path",
        "Ljava/io/File;",
        "ownerAccount",
        "serverId",
        "autoDel",
        "autoStart",
        "emergency",
        "canEmergencyUpload",
        "getCanEmergencyUpload",
        "emergencyUpload",
        "Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;",
        "source",
        "callback",
        "Lkotlin/Function1;",
        "Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;",
        "Lkotlin/ParameterName;",
        "name",
        "progress",
        "(Ljava/util/Collection;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "uploadTest",
        "loop",
        "",
        "(ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "UploadingProgress",
        "MultiUploadingProgress",
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
.field private final MIN_RESET_INTERVAL:J

.field private emergency:Z

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private mBusy:Z

.field private mLastResetTime:J

.field private final mOnIdleHandler:Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;

.field private final mPrioritizingQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final observer:Lcom/metamoji/media/video/uploader/VfUploadObserver;

.field public statusDb:Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

.field private uploadThread:Lcom/metamoji/media/video/uploader/VfUploadThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploadObserver;

    invoke-direct {v0}, Lcom/metamoji/media/video/uploader/VfUploadObserver;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->observer:Lcom/metamoji/media/video/uploader/VfUploadObserver;

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->executor:Ljava/util/concurrent/ExecutorService;

    .line 24
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->mPrioritizingQueue:Ljava/util/ArrayDeque;

    .line 27
    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/metamoji/media/video/uploader/VfUploader$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/video/uploader/VfUploader;)V

    iput-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->mOnIdleHandler:Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;

    const-wide/32 v0, 0xdbba0

    .line 116
    iput-wide v0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->MIN_RESET_INTERVAL:J

    return-void
.end method

.method public static final synthetic access$executeUpload(Lcom/metamoji/media/video/uploader/VfUploader;Lcom/metamoji/media/video/uploader/VfUploadThread;)Z
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/metamoji/media/video/uploader/VfUploader;->executeUpload(Lcom/metamoji/media/video/uploader/VfUploadThread;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getExecutor$p(Lcom/metamoji/media/video/uploader/VfUploader;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->executor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static final synthetic access$getUploadThread$p(Lcom/metamoji/media/video/uploader/VfUploader;)Lcom/metamoji/media/video/uploader/VfUploadThread;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->uploadThread:Lcom/metamoji/media/video/uploader/VfUploadThread;

    return-object p0
.end method

.method public static final synthetic access$setEmergency$p(Lcom/metamoji/media/video/uploader/VfUploader;Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/metamoji/media/video/uploader/VfUploader;->emergency:Z

    return-void
.end method

.method public static final synthetic access$setMBusy$p(Lcom/metamoji/media/video/uploader/VfUploader;Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/metamoji/media/video/uploader/VfUploader;->mBusy:Z

    return-void
.end method

.method public static final synthetic access$setUploadThread$p(Lcom/metamoji/media/video/uploader/VfUploader;Lcom/metamoji/media/video/uploader/VfUploadThread;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader;->uploadThread:Lcom/metamoji/media/video/uploader/VfUploadThread;

    return-void
.end method

.method public static final synthetic access$uploadOne(Lcom/metamoji/media/video/uploader/VfUploader;ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/media/video/uploader/VfUploader;->uploadOne(ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final executeUpload(Lcom/metamoji/media/video/uploader/VfUploadThread;)Z
    .locals 3

    .line 48
    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->uploadThread:Lcom/metamoji/media/video/uploader/VfUploadThread;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/metamoji/media/video/uploader/VfUploadThread;->getAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 52
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 48
    monitor-exit p0

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->mBusy:Z

    .line 55
    :try_start_1
    invoke-direct {p0}, Lcom/metamoji/media/video/uploader/VfUploader;->isPrioritizing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-direct {p0}, Lcom/metamoji/media/video/uploader/VfUploader;->uploadPreferred()V

    goto :goto_0

    .line 58
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/media/video/uploader/VfUploader;->uploadNormal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :goto_0
    iput-boolean v1, p0, Lcom/metamoji/media/video/uploader/VfUploader;->mBusy:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 61
    :try_start_2
    const-string v2, "VfUploader.executeUpload"

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 65
    :goto_1
    invoke-virtual {p1}, Lcom/metamoji/media/video/uploader/VfUploadThread;->getAlive()Z

    move-result p1

    return p1

    :catchall_1
    move-exception p1

    .line 63
    iput-boolean v1, p0, Lcom/metamoji/media/video/uploader/VfUploader;->mBusy:Z

    throw p1

    .line 50
    :cond_2
    :goto_2
    monitor-exit p0

    return v1

    :catchall_2
    move-exception p1

    .line 48
    monitor-exit p0

    throw p1
.end method

.method private final getPrioritizingRecord()Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;
    .locals 3

    .line 86
    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfUploader;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object v0

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/media/video/uploader/VfUploader;->getPrioritizingTicket()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_1
    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->getByTicket(Ljava/lang/String;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->isUplodableState()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->isWaiting()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    return-object v1
.end method

.method private final getPrioritizingTicket()Ljava/lang/String;
    .locals 1

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->mPrioritizingQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->mPrioritizingQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 77
    :cond_0
    :try_start_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final isPrioritizing()Z
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->mPrioritizingQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static final mOnIdleHandler$lambda$0(Lcom/metamoji/media/video/uploader/VfUploader;)V
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->uploadThread:Lcom/metamoji/media/video/uploader/VfUploadThread;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfUploadThread;->kick()V

    :cond_0
    return-void
.end method

.method private final resetErrorToWaiting()V
    .locals 10

    .line 122
    iget-wide v0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->mLastResetTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->mLastResetTime:J

    return-void

    .line 126
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 127
    iget-wide v4, p0, Lcom/metamoji/media/video/uploader/VfUploader;->mLastResetTime:J

    sub-long v6, v0, v4

    iget-wide v8, p0, Lcom/metamoji/media/video/uploader/VfUploader;->MIN_RESET_INTERVAL:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 128
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfUploader;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object v0

    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->WAITING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    sget-object v5, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->ERROR:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-virtual {v5}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->getIntValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v4}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->changeStatus(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;[Ljava/lang/Integer;)I

    .line 129
    iput-wide v2, p0, Lcom/metamoji/media/video/uploader/VfUploader;->mLastResetTime:J

    return-void
.end method

.method private final setStatusAndFireEvent(Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;)V
    .locals 2

    .line 158
    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfUploader;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->updateStatusByTicket(Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;)Z

    .line 159
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->observer:Lcom/metamoji/media/video/uploader/VfUploadObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/metamoji/media/video/uploader/VfUploadObserver;->fireEvent(Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V

    return-void
.end method

.method private final uploadNormal()V
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->uploadThread:Lcom/metamoji/media/video/uploader/VfUploadThread;

    if-eqz v0, :cond_1

    .line 138
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/media/video/uploader/VfUploadThread;->getAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/metamoji/media/video/uploader/VfUploader;->isPrioritizing()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/metamoji/media/video/network/VfCloud;->Companion:Lcom/metamoji/media/video/network/VfCloud$Companion;

    invoke-virtual {v1}, Lcom/metamoji/media/video/network/VfCloud$Companion;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfUploader;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->getNextRecord()Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    move-result-object v1

    if-nez v1, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/metamoji/media/video/uploader/VfUploader;->resetErrorToWaiting()V

    return-void

    .line 145
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/video/uploader/VfUploadThread;->getThreadCanceller$app()Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->reset()V

    .line 147
    :try_start_0
    new-instance v2, Lcom/metamoji/media/video/uploader/VfUploader$uploadNormal$1$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/metamoji/media/video/uploader/VfUploader$uploadNormal$1$1;-><init>(Lcom/metamoji/media/video/uploader/VfUploader;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;Lcom/metamoji/media/video/uploader/VfUploadThread;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x1

    invoke-static {v3, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {v0}, Lcom/metamoji/media/video/uploader/VfUploadThread;->getThreadCanceller$app()Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->reset()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/metamoji/media/video/uploader/VfUploadThread;->getThreadCanceller$app()Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->reset()V

    throw v1

    :cond_1
    return-void
.end method

.method private final uploadOne(ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;",
            "Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/metamoji/media/video/uploader/VfUploader$uploadOne$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/metamoji/media/video/uploader/VfUploader$uploadOne$1;

    iget v1, v0, Lcom/metamoji/media/video/uploader/VfUploader$uploadOne$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/metamoji/media/video/uploader/VfUploader$uploadOne$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/metamoji/media/video/uploader/VfUploader$uploadOne$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploader$uploadOne$1;

    invoke-direct {v0, p0, p4}, Lcom/metamoji/media/video/uploader/VfUploader$uploadOne$1;-><init>(Lcom/metamoji/media/video/uploader/VfUploader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p4, v6, Lcom/metamoji/media/video/uploader/VfUploader$uploadOne$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 165
    iget v1, v6, Lcom/metamoji/media/video/uploader/VfUploader$uploadOne$1;->label:I

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v7, :cond_1

    iget-boolean p1, v6, Lcom/metamoji/media/video/uploader/VfUploader$uploadOne$1;->Z$0:Z

    iget-object p1, v6, Lcom/metamoji/media/video/uploader/VfUploader$uploadOne$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    iget-object p1, v6, Lcom/metamoji/media/video/uploader/VfUploader$uploadOne$1;->L$0:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getTicket()Ljava/lang/String;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VfUploader: Start "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getTicket()Ljava/lang/String;

    move-result-object p4

    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->UPLOADING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-direct {p0, p4, v1}, Lcom/metamoji/media/video/uploader/VfUploader;->setStatusAndFireEvent(Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;)V

    .line 168
    sget-object v1, Lcom/metamoji/media/video/network/VfCloud;->Companion:Lcom/metamoji/media/video/network/VfCloud$Companion;

    iput-object p2, v6, Lcom/metamoji/media/video/uploader/VfUploader$uploadOne$1;->L$0:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    iput-object p4, v6, Lcom/metamoji/media/video/uploader/VfUploader$uploadOne$1;->L$1:Ljava/lang/Object;

    iput-boolean p1, v6, Lcom/metamoji/media/video/uploader/VfUploader$uploadOne$1;->Z$0:Z

    iput v7, v6, Lcom/metamoji/media/video/uploader/VfUploader$uploadOne$1;->label:I

    move-object v4, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/media/video/network/VfCloud$Companion;->uploadMovie(ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;Lcom/metamoji/media/video/uploader/VfUploader;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v0, :cond_3

    return-object v0

    :cond_3
    move-object p2, v3

    :goto_1
    check-cast p4, Lcom/metamoji/media/video/network/VfCloud$UploadResult;

    sget-object p1, Lcom/metamoji/media/video/uploader/VfUploader$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p4}, Lcom/metamoji/media/video/network/VfCloud$UploadResult;->ordinal()I

    move-result p3

    aget p1, p1, p3

    if-eq p1, v7, :cond_6

    const/4 p3, 0x2

    const/4 v7, 0x0

    if-eq p1, p3, :cond_5

    const/4 p3, 0x3

    if-eq p1, p3, :cond_5

    const/4 p3, 0x4

    if-ne p1, p3, :cond_4

    .line 192
    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfUploader;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object p1

    invoke-virtual {p2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getTicket()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->removeByTicket(Ljava/lang/String;)Z

    .line 193
    iget-object p1, v4, Lcom/metamoji/media/video/uploader/VfUploader;->observer:Lcom/metamoji/media/video/uploader/VfUploadObserver;

    invoke-virtual {p2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getTicket()Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->ERROR:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p4, v0}, Lcom/metamoji/media/video/uploader/VfUploadObserver;->fireEvent(Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V

    .line 194
    iget-object p1, v4, Lcom/metamoji/media/video/uploader/VfUploader;->observer:Lcom/metamoji/media/video/uploader/VfUploadObserver;

    invoke-virtual {p2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getTicket()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/media/video/uploader/VfUploadObserver;->clearListener(Ljava/lang/String;)V

    goto :goto_2

    .line 168
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 186
    :cond_5
    invoke-virtual {p2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getTicket()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->ERROR:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-direct {p0, p1, p2}, Lcom/metamoji/media/video/uploader/VfUploader;->setStatusAndFireEvent(Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;)V

    goto :goto_2

    .line 171
    :cond_6
    invoke-virtual {p2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getTicket()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->DONE:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-direct {p0, p1, p3}, Lcom/metamoji/media/video/uploader/VfUploader;->setStatusAndFireEvent(Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;)V

    .line 172
    invoke-virtual {p2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getFile()Ljava/io/File;

    move-result-object p1

    .line 173
    sget-object p3, Lcom/metamoji/video/AmvCacheManager;->INSTANCE:Lcom/metamoji/video/AmvCacheManager;

    .line 174
    invoke-virtual {p2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getTicket()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getAutoDel()Z

    move-result v0

    invoke-virtual {p3, p4, p1, v0}, Lcom/metamoji/video/AmvCacheManager;->putCache(Ljava/lang/String;Ljava/io/File;Z)Z

    move-result p3

    if-nez p3, :cond_7

    .line 175
    invoke-virtual {p2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getAutoDel()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 177
    invoke-static {p1}, Lcom/metamoji/media/video/network/VfCloudKt;->safeDelete(Ljava/io/File;)V

    .line 180
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfUploader;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object p1

    invoke-virtual {p2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getTicket()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->removeByTicket(Ljava/lang/String;)Z

    .line 168
    :goto_2
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private final uploadPreferred()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->uploadThread:Lcom/metamoji/media/video/uploader/VfUploadThread;

    if-eqz v0, :cond_1

    .line 101
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/media/video/uploader/VfUploadThread;->getAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/metamoji/media/video/network/VfCloud;->Companion:Lcom/metamoji/media/video/network/VfCloud$Companion;

    invoke-virtual {v1}, Lcom/metamoji/media/video/network/VfCloud$Companion;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    invoke-direct {p0}, Lcom/metamoji/media/video/uploader/VfUploader;->getPrioritizingRecord()Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 103
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/video/uploader/VfUploadThread;->getThreadCanceller$app()Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->reset()V

    .line 105
    :try_start_0
    new-instance v2, Lcom/metamoji/media/video/uploader/VfUploader$uploadPreferred$1$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/metamoji/media/video/uploader/VfUploader$uploadPreferred$1$1;-><init>(Lcom/metamoji/media/video/uploader/VfUploader;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;Lcom/metamoji/media/video/uploader/VfUploadThread;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x1

    invoke-static {v3, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {v0}, Lcom/metamoji/media/video/uploader/VfUploadThread;->getThreadCanceller$app()Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->reset()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/metamoji/media/video/uploader/VfUploadThread;->getThreadCanceller$app()Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->reset()V

    throw v1

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final emergencyUpload(Ljava/util/Collection;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;",
            ">;",
            "Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 306
    iget-boolean v0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->emergency:Z

    if-nez v0, :cond_0

    .line 309
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;-><init>(Lcom/metamoji/media/video/uploader/VfUploader;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 307
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "VfUploader.emergencyUpload called more than twice."

    invoke-direct {p1, p2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getCanEmergencyUpload()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->emergency:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getObserver()Lcom/metamoji/media/video/uploader/VfUploadObserver;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->observer:Lcom/metamoji/media/video/uploader/VfUploadObserver;

    return-object v0
.end method

.method public final getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->statusDb:Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "statusDb"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final initialize()V
    .locals 3

    .line 30
    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    invoke-direct {v0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;-><init>()V

    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/uploader/VfUploader;->setStatusDb(Lcom/metamoji/media/video/uploader/VfUploadStatusDB;)V

    .line 31
    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploadThread;

    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploader;->executor:Ljava/util/concurrent/ExecutorService;

    const-string v2, "executor"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/uploader/VfUploadThread;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->uploadThread:Lcom/metamoji/media/video/uploader/VfUploadThread;

    .line 32
    new-instance v1, Lcom/metamoji/media/video/uploader/VfUploader$initialize$1;

    invoke-direct {v1, p0}, Lcom/metamoji/media/video/uploader/VfUploader$initialize$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/uploader/VfUploadThread;->start(Lkotlin/jvm/functions/Function1;)V

    .line 33
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploader;->mOnIdleHandler:Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->addOnIdleListener(Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;)V

    .line 34
    const-string v0, "VfUploader.initialized."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public final register(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 11

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerAccount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfUploader;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->getByTicket(Ljava/lang/String;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    move-result-object v0

    .line 241
    const-string v1, ")"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz p6, :cond_0

    .line 242
    sget-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->WAITING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->INIT:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    :goto_0
    move-object v9, v0

    .line 243
    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfUploader;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object v0

    sget-object v3, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->Companion:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record$Companion;

    const/4 v10, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v10}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record$Companion;->createByFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Ljava/util/Date;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->register(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;)Z

    .line 244
    iget-object p2, p0, Lcom/metamoji/media/video/uploader/VfUploader;->observer:Lcom/metamoji/media/video/uploader/VfUploadObserver;

    invoke-virtual {p2, p1, v9, v2}, Lcom/metamoji/media/video/uploader/VfUploadObserver;->fireEvent(Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V

    .line 245
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "VfUploader.register: new request registered ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 246
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->isUplodableState()Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p6, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfUploader;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object p2

    sget-object p3, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->WAITING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-virtual {p2, p1, p3}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->updateStatusByTicket(Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;)Z

    .line 248
    iget-object p2, p0, Lcom/metamoji/media/video/uploader/VfUploader;->observer:Lcom/metamoji/media/video/uploader/VfUploadObserver;

    sget-object p3, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->WAITING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-virtual {p2, p1, p3, v2}, Lcom/metamoji/media/video/uploader/VfUploadObserver;->fireEvent(Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V

    .line 249
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "VfUploader.register: update registered request ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final setStatusDb(Lcom/metamoji/media/video/uploader/VfUploadStatusDB;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader;->statusDb:Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    return-void
.end method

.method public final shakeIt(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "tickets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    monitor-enter p0

    .line 222
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VfUploader: Shaking: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploader;->mPrioritizingQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader;->uploadThread:Lcom/metamoji/media/video/uploader/VfUploadThread;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/media/video/uploader/VfUploadThread;->kick()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final start(Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfUploader;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->getByTicket(Ljava/lang/String;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 202
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->isUplodableState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfUploader;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object v0

    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->WAITING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->updateStatusByTicket(Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;)Z

    .line 204
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->observer:Lcom/metamoji/media/video/uploader/VfUploadObserver;

    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->WAITING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/media/video/uploader/VfUploadObserver;->fireEvent(Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final terminate(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    instance-of v0, p1, Lcom/metamoji/media/video/uploader/VfUploader$terminate$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/media/video/uploader/VfUploader$terminate$1;

    iget v1, v0, Lcom/metamoji/media/video/uploader/VfUploader$terminate$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/media/video/uploader/VfUploader$terminate$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/media/video/uploader/VfUploader$terminate$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploader$terminate$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/media/video/uploader/VfUploader$terminate$1;-><init>(Lcom/metamoji/media/video/uploader/VfUploader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/media/video/uploader/VfUploader$terminate$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 37
    iget v2, v0, Lcom/metamoji/media/video/uploader/VfUploader$terminate$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader;->uploadThread:Lcom/metamoji/media/video/uploader/VfUploadThread;

    if-eqz p1, :cond_3

    iput v3, v0, Lcom/metamoji/media/video/uploader/VfUploader$terminate$1;->label:I

    invoke-virtual {p1, v0}, Lcom/metamoji/media/video/uploader/VfUploadThread;->stopAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader;->uploadThread:Lcom/metamoji/media/video/uploader/VfUploadThread;

    .line 40
    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfUploader;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->dispose()V

    .line 41
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader;->mOnIdleHandler:Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->removeOnIdleListener(Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;)V

    .line 42
    const-string p1, "VfUploader.terminated."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 44
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final uploadTest(ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$1;

    iget v1, v0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$1;

    invoke-direct {v0, p0, p3}, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$1;-><init>(Lcom/metamoji/media/video/uploader/VfUploader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 398
    iget v2, v0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$1;->I$0:I

    iget-object p1, v0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;

    iget-object p1, v0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;

    iget-object p1, v0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 399
    const-string p3, "VfUploader:uploadTest -- enter"

    invoke-static {p3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 400
    new-instance v8, Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;

    invoke-direct {v8}, Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;-><init>()V

    .line 401
    new-instance v7, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;

    invoke-direct {v7, p1}, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;-><init>(I)V

    .line 402
    new-instance v4, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;

    const/4 v9, 0x0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;-><init>(ILkotlin/jvm/functions/Function1;Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$1;->L$0:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$1;->L$1:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$1;->I$0:I

    iput v3, v0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$1;->label:I

    invoke-static {v4, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 398
    :cond_3
    :goto_1
    check-cast p3, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;

    .line 423
    const-string p1, "VfUploader:uploadTest -- exit"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-object p3
.end method
