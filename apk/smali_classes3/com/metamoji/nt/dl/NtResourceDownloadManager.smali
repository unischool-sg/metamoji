.class public final Lcom/metamoji/nt/dl/NtResourceDownloadManager;
.super Ljava/lang/Object;
.source "NtResourceDownloadManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;,
        Lcom/metamoji/nt/dl/NtResourceDownloadManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNtResourceDownloadManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NtResourceDownloadManager.kt\ncom/metamoji/nt/dl/NtResourceDownloadManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,197:1\n1#2:198\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0008J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u000eJ\u0018\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0006H\u0002J\u0010\u0010 \u001a\u00020\u00002\u0008\u0010!\u001a\u0004\u0018\u00010\u001bR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/metamoji/nt/dl/NtResourceDownloadManager;",
        "",
        "<init>",
        "()V",
        "targets",
        "",
        "Lcom/metamoji/nt/dl/NtResourceDownloaderBase;",
        "canceller",
        "Lcom/metamoji/nt/dl/INtDownloadCanceller;",
        "setCanceller",
        "c",
        "preCheckResult",
        "Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;",
        "needToDownload",
        "",
        "cancellingLock",
        "Ljava/lang/Object;",
        "currentCancellable",
        "Lcom/metamoji/nt/dl/INtCancellableDownloader;",
        "mCancelling",
        "cancelling",
        "getCancelling",
        "()Z",
        "cancel",
        "",
        "download",
        "progressListener",
        "Lcom/metamoji/nt/dl/INtDownloadProgressListener;",
        "onStatusChanged",
        "status",
        "Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;",
        "target",
        "setListener",
        "listener",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;


# instance fields
.field private canceller:Lcom/metamoji/nt/dl/INtDownloadCanceller;

.field private final cancellingLock:Ljava/lang/Object;

.field private currentCancellable:Lcom/metamoji/nt/dl/INtCancellableDownloader;

.field private mCancelling:Z

.field private preCheckResult:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

.field private progressListener:Lcom/metamoji/nt/dl/INtDownloadProgressListener;

.field private final targets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/nt/dl/NtResourceDownloaderBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->targets:Ljava/util/List;

    .line 49
    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->INITIAL:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    iput-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->preCheckResult:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->cancellingLock:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getCanceller$p(Lcom/metamoji/nt/dl/NtResourceDownloadManager;)Lcom/metamoji/nt/dl/INtDownloadCanceller;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->canceller:Lcom/metamoji/nt/dl/INtDownloadCanceller;

    return-object p0
.end method

.method public static final synthetic access$getCancelling(Lcom/metamoji/nt/dl/NtResourceDownloadManager;)Z
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->getCancelling()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getProgressListener$p(Lcom/metamoji/nt/dl/NtResourceDownloadManager;)Lcom/metamoji/nt/dl/INtDownloadProgressListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->progressListener:Lcom/metamoji/nt/dl/INtDownloadProgressListener;

    return-object p0
.end method

.method public static final synthetic access$getTargets$p(Lcom/metamoji/nt/dl/NtResourceDownloadManager;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->targets:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$onStatusChanged(Lcom/metamoji/nt/dl/NtResourceDownloadManager;Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;Lcom/metamoji/nt/dl/NtResourceDownloaderBase;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->onStatusChanged(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;Lcom/metamoji/nt/dl/NtResourceDownloaderBase;)V

    return-void
.end method

.method public static final synthetic access$setCurrentCancellable$p(Lcom/metamoji/nt/dl/NtResourceDownloadManager;Lcom/metamoji/nt/dl/INtCancellableDownloader;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->currentCancellable:Lcom/metamoji/nt/dl/INtCancellableDownloader;

    return-void
.end method

.method public static final synthetic access$setPreCheckResult$p(Lcom/metamoji/nt/dl/NtResourceDownloadManager;Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->preCheckResult:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    return-void
.end method

.method public static final createInstance()Lcom/metamoji/nt/dl/NtResourceDownloadManager;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;->createInstance()Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    move-result-object v0

    return-object v0
.end method

.method public static final createInstance(Z)Lcom/metamoji/nt/dl/NtResourceDownloadManager;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;->createInstance(Z)Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    move-result-object p0

    return-object p0
.end method

.method public static final createInstance(ZZ)Lcom/metamoji/nt/dl/NtResourceDownloadManager;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;->createInstance(ZZ)Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    move-result-object p0

    return-object p0
.end method

.method public static final createInstance(ZZZ)Lcom/metamoji/nt/dl/NtResourceDownloadManager;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;->createInstance(ZZZ)Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    move-result-object p0

    return-object p0
.end method

.method public static final createInstance(ZZZZ)Lcom/metamoji/nt/dl/NtResourceDownloadManager;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;->createInstance(ZZZZ)Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    move-result-object p0

    return-object p0
.end method

.method public static final createInstance(ZZZZZ)Lcom/metamoji/nt/dl/NtResourceDownloadManager;
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;->createInstance(ZZZZZ)Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    move-result-object p0

    return-object p0
.end method

.method private final getCancelling()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->cancellingLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->mCancelling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final onStatusChanged(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;Lcom/metamoji/nt/dl/NtResourceDownloaderBase;)V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->progressListener:Lcom/metamoji/nt/dl/INtDownloadProgressListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    sget-object v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-interface {v0}, Lcom/metamoji/nt/dl/INtDownloadProgressListener;->onDownloadCancelEnabled()V

    return-void

    .line 153
    :cond_2
    invoke-virtual {p2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->getPercent()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/metamoji/nt/dl/INtDownloadProgressListener;->onDownloadProgress(I)V

    return-void

    .line 152
    :cond_3
    invoke-virtual {p2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->getMessageResourceId()I

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->getCurrentIndex()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->getTotalCount()I

    move-result p2

    invoke-interface {v0, p1, v2, p2}, Lcom/metamoji/nt/dl/INtDownloadProgressListener;->onDownloadBegin(III)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->cancellingLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 86
    :try_start_0
    iput-boolean v1, p0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->mCancelling:Z

    .line 87
    iget-object v1, p0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->currentCancellable:Lcom/metamoji/nt/dl/INtCancellableDownloader;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/metamoji/nt/dl/INtCancellableDownloader;->cancelDownload()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final download()Z
    .locals 3

    .line 103
    invoke-static {}, Lcom/metamoji/nt/dl/NtDLEnv;->prepare()V

    .line 104
    new-instance v0, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;-><init>(Lcom/metamoji/nt/dl/NtResourceDownloadManager;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final needToDownload()Z
    .locals 3

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->preCheckResult:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    sget-object v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->INITIAL:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 58
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->targets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;

    .line 59
    invoke-virtual {v1}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->preCheck()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->NEED_UPDATE:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    iput-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->preCheckResult:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return v2

    .line 65
    :cond_1
    :try_start_1
    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->NO_UPDATE:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    iput-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->preCheckResult:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->preCheckResult:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    sget-object v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->NEED_UPDATE:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 56
    :goto_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setCanceller(Lcom/metamoji/nt/dl/INtDownloadCanceller;)Lcom/metamoji/nt/dl/NtResourceDownloadManager;
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->canceller:Lcom/metamoji/nt/dl/INtDownloadCanceller;

    return-object p0
.end method

.method public final setListener(Lcom/metamoji/nt/dl/INtDownloadProgressListener;)Lcom/metamoji/nt/dl/NtResourceDownloadManager;
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->progressListener:Lcom/metamoji/nt/dl/INtDownloadProgressListener;

    if-eqz p1, :cond_0

    .line 168
    invoke-interface {p1, p0}, Lcom/metamoji/nt/dl/INtDownloadProgressListener;->connectManager(Lcom/metamoji/nt/dl/NtResourceDownloadManager;)V

    :cond_0
    return-object p0
.end method
