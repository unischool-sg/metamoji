.class public abstract Lcom/metamoji/nt/dl/NtResourceDownloaderBase;
.super Ljava/lang/Object;
.source "NtResourceDownloaderBase.kt"

# interfaces
.implements Lcom/metamoji/nt/dl/INtCancellableDownloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;,
        Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Error;,
        Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;,
        Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;,
        Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNtResourceDownloaderBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NtResourceDownloaderBase.kt\ncom/metamoji/nt/dl/NtResourceDownloaderBase\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,610:1\n1#2:611\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008&\u0018\u0000 ^2\u00020\u0001:\u0005Z[\\]^B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u001a\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ \u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00a6@\u00a2\u0006\u0002\u0010\u0015J\u0008\u0010\u0016\u001a\u00020\u0017H$J\u0006\u0010\u001e\u001a\u00020\u0017J\u0008\u0010\u001f\u001a\u00020\u0007H\u0004J\u0018\u0010-\u001a\u00020\u00072\u0008\u0008\u0002\u0010(\u001a\u00020\u0006H\u0084@\u00a2\u0006\u0002\u0010.J\u000e\u0010/\u001a\u00020\u0007H\u0084@\u00a2\u0006\u0002\u00100J\u0016\u00101\u001a\u00020\u00072\u0006\u00102\u001a\u000203H\u0084@\u00a2\u0006\u0002\u00104J\u0016\u00101\u001a\u00020\u00072\u0006\u00102\u001a\u000205H\u0084@\u00a2\u0006\u0002\u00106J\u0018\u00107\u001a\u00020\u00072\u0008\u0008\u0002\u00108\u001a\u00020\u0006H\u0084@\u00a2\u0006\u0002\u0010.J\u0016\u0010C\u001a\u00020\u00072\u0006\u00109\u001a\u00020\u0019H\u0084@\u00a2\u0006\u0002\u0010DJ\u0008\u0010L\u001a\u00020\u0007H\u0016J\u0012\u0010O\u001a\u0004\u0018\u00010K2\u0006\u0010P\u001a\u00020QH\u0002J\u0008\u0010R\u001a\u00020\u0007H\u0002J\u0010\u0010S\u001a\u0002032\u0006\u0010T\u001a\u000203H\u0002J(\u0010U\u001a\u00020\u00172\u0006\u0010T\u001a\u0002032\u0006\u0010V\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0084@\u00a2\u0006\u0002\u0010WJ\u000e\u0010X\u001a\u00020\u0019H\u0084@\u00a2\u0006\u0002\u00100J\u0008\u0010Y\u001a\u00020\u0019H\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR.\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0012\u0010\u0018\u001a\u00020\u0019X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010 \u001a\u00020!\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0011\u0010$\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R$\u0010(\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020\u0006@DX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R$\u00109\u001a\u00020\u00192\u0006\u0010\'\u001a\u00020\u0019@DX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u001b\"\u0004\u0008;\u0010<R$\u0010=\u001a\u00020\u00192\u0006\u0010\'\u001a\u00020\u0019@DX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010\u001b\"\u0004\u0008?\u0010<R$\u0010@\u001a\u00020\u00192\u0006\u0010\'\u001a\u00020\u0019@DX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010\u001b\"\u0004\u0008B\u0010<R\u001e\u0010E\u001a\u00020\u00172\u0006\u0010\'\u001a\u00020\u0017@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010&R\u000e\u0010G\u001a\u00020HX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010I\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010J\u001a\u0004\u0018\u00010KX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010M\u001a\u00020\u00178DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010&\u00a8\u0006_"
    }
    d2 = {
        "Lcom/metamoji/nt/dl/NtResourceDownloaderBase;",
        "Lcom/metamoji/nt/dl/INtCancellableDownloader;",
        "options",
        "Lcom/metamoji/nt/dl/NtDownloaderOptions;",
        "callback",
        "Lkotlin/Function2;",
        "Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;",
        "",
        "<init>",
        "(Lcom/metamoji/nt/dl/NtDownloaderOptions;Lkotlin/jvm/functions/Function2;)V",
        "getOptions",
        "()Lcom/metamoji/nt/dl/NtDownloaderOptions;",
        "getCallback",
        "()Lkotlin/jvm/functions/Function2;",
        "setCallback",
        "(Lkotlin/jvm/functions/Function2;)V",
        "download",
        "outDir",
        "Ljava/io/File;",
        "canceller",
        "Lcom/metamoji/nt/dl/INtDownloadCanceller;",
        "(Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "needToDownload",
        "",
        "messageResourceId",
        "",
        "getMessageResourceId",
        "()I",
        "mPreCheckResult",
        "Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;",
        "preCheck",
        "completed",
        "error",
        "Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Error;",
        "getError",
        "()Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Error;",
        "hasError",
        "getHasError",
        "()Z",
        "value",
        "status",
        "getStatus",
        "()Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;",
        "setStatus",
        "(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;)V",
        "fire",
        "(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fireBegin",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fireError",
        "err",
        "",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fireComplete",
        "s",
        "percent",
        "getPercent",
        "setPercent",
        "(I)V",
        "totalCount",
        "getTotalCount",
        "setTotalCount",
        "currentIndex",
        "getCurrentIndex",
        "setCurrentIndex",
        "fireProgress",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cancellableState",
        "getCancellableState",
        "cancellingLock",
        "Ljava/lang/Object;",
        "mCancelling",
        "currentCall",
        "Lokhttp3/Call;",
        "cancelDownload",
        "cancelling",
        "getCancelling",
        "openCall",
        "request",
        "Lokhttp3/Request;",
        "closeCall",
        "correctUrl",
        "url",
        "downloadToFile",
        "outFile",
        "(Ljava/lang/String;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateSysInfoSync",
        "updateSysInfoAsync",
        "PreCheckResult",
        "Status",
        "Error",
        "SlowDownloadMonitor",
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
.field public static final Companion:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;


# instance fields
.field private callback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;",
            "-",
            "Lcom/metamoji/nt/dl/NtResourceDownloaderBase;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private cancellableState:Z

.field private final cancellingLock:Ljava/lang/Object;

.field private currentCall:Lokhttp3/Call;

.field private currentIndex:I

.field private final error:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Error;

.field private mCancelling:Z

.field private mPreCheckResult:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

.field private final options:Lcom/metamoji/nt/dl/NtDownloaderOptions;

.field private percent:I

.field private status:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

.field private totalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/dl/NtDownloaderOptions;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/dl/NtDownloaderOptions;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;",
            "-",
            "Lcom/metamoji/nt/dl/NtResourceDownloaderBase;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->options:Lcom/metamoji/nt/dl/NtDownloaderOptions;

    iput-object p2, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->callback:Lkotlin/jvm/functions/Function2;

    .line 74
    sget-object p1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->INITIAL:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->mPreCheckResult:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    .line 158
    new-instance p1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Error;

    invoke-direct {p1}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Error;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->error:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Error;

    .line 161
    sget-object p1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;->INIT:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->status:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    const/4 p1, 0x1

    .line 229
    iput p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->totalCount:I

    .line 251
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->cancellingLock:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$setCancellableState$p(Lcom/metamoji/nt/dl/NtResourceDownloaderBase;Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->cancellableState:Z

    return-void
.end method

.method private final closeCall()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->cancellingLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 287
    :try_start_0
    iput-object v1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->currentCall:Lokhttp3/Call;

    .line 288
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final correctUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 451
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-eqz v0, :cond_0

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 454
    const-string v2, "http://cdn.metamoji.com/"

    const-string v3, "https://cdn.metamoji.com/"

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x4

    const/4 v12, 0x0

    .line 455
    const-string v8, "https://cdn.metamoji.com/"

    const-string v9, "https://cdn.metamoji.com/"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    move-object v1, p1

    return-object v1
.end method

.method public static synthetic fire$default(Lcom/metamoji/nt/dl/NtResourceDownloaderBase;Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 169
    iget-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->status:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->fire(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fire"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic fireComplete$default(Lcom/metamoji/nt/dl/NtResourceDownloaderBase;Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 215
    sget-object p1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;->DOWNLOADED:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->fireComplete(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fireComplete"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final openCall(Lokhttp3/Request;)Lokhttp3/Call;
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->cancellingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->currentCall:Lokhttp3/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/metamoji/network/NwHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 274
    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 275
    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->currentCall:Lokhttp3/Call;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 278
    :try_start_2
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 268
    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method protected static final showMessage(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;->showMessage(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cancelDownload()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->cancellingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->currentCall:Lokhttp3/Call;

    if-eqz v1, :cond_0

    .line 258
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    :cond_0
    const/4 v1, 0x1

    .line 260
    iput-boolean v1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->mCancelling:Z

    .line 261
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected final completed()V
    .locals 3

    const-string v0, "Download task completed. ("

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    sget-object v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->COMPLETED:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    iput-object v1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->mPreCheckResult:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    .line 99
    iget-object v1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->status:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 100
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract download(Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/metamoji/nt/dl/INtDownloadCanceller;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/nt/dl/NtResourceDownloaderBase;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method protected final downloadToFile(Ljava/lang/String;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/metamoji/nt/dl/INtDownloadCanceller;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v0, p4

    instance-of v3, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;

    iget v4, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->label:I

    sub-int/2addr v0, v5

    iput v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;

    invoke-direct {v3, v1, v0}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;-><init>(Lcom/metamoji/nt/dl/NtResourceDownloaderBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 470
    iget v5, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->label:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget v2, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->I$0:I

    iget-object v2, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$7:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v2, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$6:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;

    iget-object v2, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v4, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lokhttp3/Call;

    iget-object v4, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lokhttp3/Request;

    iget-object v4, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object v4, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    iget-object v3, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v1

    const/4 v10, 0x0

    goto/16 :goto_18

    :catchall_0
    move-exception v0

    move-object v5, v1

    goto/16 :goto_1a

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v2, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->I$4:I

    iget v2, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->I$3:I

    iget v5, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->I$2:I

    iget-wide v11, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->J$0:J

    iget v13, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->I$1:I

    iget v14, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->I$0:I

    iget-object v15, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$18:Ljava/lang/Object;

    check-cast v15, [B

    iget-object v6, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$17:Ljava/lang/Object;

    check-cast v6, Ljava/io/FileOutputStream;

    iget-object v7, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$16:Ljava/lang/Object;

    check-cast v7, Ljava/io/Closeable;

    iget-object v10, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$15:Ljava/lang/Object;

    check-cast v10, Ljava/io/InputStream;

    iget-object v8, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$14:Ljava/lang/Object;

    check-cast v8, Ljava/io/Closeable;

    const/16 v17, 0x0

    iget-object v9, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$13:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v18, v0

    iget-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$12:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 p1, v0

    iget-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$11:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$LongRef;

    move-object/from16 p2, v0

    iget-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$10:Ljava/lang/Object;

    check-cast v0, Lokhttp3/ResponseBody;

    move-object/from16 p3, v0

    iget-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$9:Ljava/lang/Object;

    check-cast v0, Lokhttp3/MediaType;

    move-object/from16 v19, v0

    iget-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$8:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Response;

    move-object/from16 v20, v0

    iget-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$7:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/io/Closeable;

    iget-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$6:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;

    iget-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$5:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/io/Closeable;

    iget-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$4:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lokhttp3/Call;

    iget-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$3:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lokhttp3/Request;

    iget-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$2:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$1:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Ljava/io/File;

    iget-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$0:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    :try_start_1
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v29, v14

    move-object/from16 v18, v19

    move-object/from16 v32, v24

    move-object/from16 v33, v25

    move-object/from16 v30, v26

    move-object/from16 v31, v27

    const/16 v16, 0x1

    move-object/from16 v25, p2

    move/from16 v19, v2

    move-object v14, v7

    move-wide/from16 v26, v11

    move/from16 v24, v13

    move-object/from16 v2, v22

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v3

    move/from16 v22, v5

    move-object v13, v6

    move-object v6, v15

    move-object/from16 v3, p1

    move-object/from16 p1, p3

    move-object v5, v1

    move-object v1, v4

    move-object v15, v8

    move-object v8, v10

    const/4 v4, 0x0

    const/4 v10, 0x0

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v5, v1

    move-object v1, v4

    const/16 v33, 0x0

    goto/16 :goto_d

    :cond_3
    move-object/from16 v18, v0

    const/16 v17, 0x0

    iget v2, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->I$0:I

    iget-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$6:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;

    iget-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$5:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/io/Closeable;

    iget-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$4:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lokhttp3/Call;

    iget-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$3:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lokhttp3/Request;

    iget-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$2:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$1:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Ljava/io/File;

    iget-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$0:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    :try_start_2
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v14, v2

    move-object v2, v9

    move-object v9, v10

    move-object/from16 v0, v18

    :goto_1
    move-object/from16 v24, v7

    move-object/from16 v25, v8

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move-object v14, v5

    move-object v5, v1

    move-object v1, v4

    move-object v4, v6

    move-object v6, v14

    move v14, v2

    move-object v2, v9

    move-object v9, v10

    :goto_2
    const/16 v33, 0x0

    goto/16 :goto_16

    :cond_4
    move-object/from16 v18, v0

    const/16 v17, 0x0

    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 471
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-direct/range {p0 .. p1}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->correctUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v8

    .line 472
    invoke-direct {v1, v8}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->openCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 474
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 475
    new-instance v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;-><init>(Lcom/metamoji/nt/dl/NtResourceDownloaderBase;Lcom/metamoji/nt/dl/INtDownloadCanceller;)V

    move-object v5, v0

    check-cast v5, Ljava/io/Closeable;

    :try_start_3
    move-object v6, v5

    check-cast v6, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_25

    .line 477
    :try_start_4
    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$0:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_21

    move-object/from16 v9, p2

    :try_start_5
    iput-object v9, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$1:Ljava/lang/Object;

    iput-object v2, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$2:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$3:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$4:Ljava/lang/Object;

    iput-object v5, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$5:Ljava/lang/Object;

    iput-object v6, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$6:Ljava/lang/Object;

    move/from16 v10, v17

    iput v10, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->I$0:I

    const/4 v0, 0x1

    iput v0, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->label:I

    invoke-static {v7, v3}, Lcom/metamoji/network/NwHttpClientKt;->executeAsync(Lokhttp3/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_20

    if-ne v0, v4, :cond_6

    move-object v5, v1

    move-object v1, v4

    goto/16 :goto_17

    :cond_6
    move-object v11, v6

    move-object v6, v5

    move-object v5, v11

    move-object/from16 v11, p1

    const/4 v14, 0x0

    goto :goto_1

    .line 470
    :goto_3
    :try_start_6
    move-object v7, v0

    check-cast v7, Ljava/io/Closeable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1f

    :try_start_7
    move-object v0, v7

    check-cast v0, Lokhttp3/Response;

    .line 478
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1c

    if-nez v8, :cond_7

    const/16 v17, 0x0

    :try_start_8
    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/4 v8, 0x0

    :try_start_9
    invoke-static {v7, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 523
    :try_start_a
    invoke-direct {v1}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->closeCall()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    invoke-static {v6, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_3
    move-exception v0

    move-object v5, v1

    :goto_4
    move-object v1, v0

    goto/16 :goto_1b

    :catchall_4
    move-exception v0

    move-object v7, v5

    move-object v5, v1

    move-object v1, v4

    move-object v4, v6

    move-object v6, v7

    goto/16 :goto_14

    :catchall_5
    move-exception v0

    move-object v8, v5

    move-object v5, v1

    move-object v1, v4

    move-object v4, v8

    goto/16 :goto_f

    .line 479
    :cond_7
    :try_start_b
    invoke-virtual {v8}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1c

    if-nez v10, :cond_8

    const/16 v17, 0x0

    :try_start_c
    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    const/4 v8, 0x0

    :try_start_d
    invoke-static {v7, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 523
    :try_start_e
    invoke-direct {v1}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->closeCall()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    invoke-static {v6, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 480
    :cond_8
    :try_start_f
    invoke-virtual {v10}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v12

    const-string v13, "application"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1c

    if-eqz v12, :cond_9

    :try_start_10
    invoke-virtual {v10}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v12

    const-string v13, "json"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 481
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ".downloadToFile error: json type response "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    const/16 v17, 0x0

    .line 482
    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    const/4 v8, 0x0

    :try_start_11
    invoke-static {v7, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 523
    :try_start_12
    invoke-direct {v1}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->closeCall()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    invoke-static {v6, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 484
    :cond_9
    :try_start_13
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v12
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1c

    const/16 v13, 0x190

    if-lt v12, v13, :cond_a

    .line 485
    :try_start_14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".downloadToFile error response ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ")"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    const/16 v17, 0x0

    .line 486
    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    const/4 v8, 0x0

    :try_start_15
    invoke-static {v7, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 523
    :try_start_16
    invoke-direct {v1}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->closeCall()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    invoke-static {v6, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 488
    :cond_a
    :try_start_17
    invoke-virtual {v8}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->setContentLength(J)V

    .line 489
    invoke-virtual {v8}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v12

    .line 490
    new-instance v15, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 491
    new-instance v18, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct/range {v18 .. v18}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 492
    new-instance v19, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct/range {v19 .. v19}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 493
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v20

    if-eqz v20, :cond_10

    invoke-virtual/range {v20 .. v20}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v20

    if-eqz v20, :cond_10

    check-cast v20, Ljava/io/Closeable;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1c

    :try_start_18
    move-object/from16 v21, v20

    check-cast v21, Ljava/io/InputStream;

    move-object/from16 p1, v0

    new-instance v0, Ljava/io/FileOutputStream;

    .line 494
    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v22, v0

    check-cast v22, Ljava/io/Closeable;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_17

    :try_start_19
    move-object/from16 v0, v22

    check-cast v0, Ljava/io/FileOutputStream;

    move-object/from16 p2, v0

    const/16 v0, 0x800

    .line 495
    new-array v0, v0, [B
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_14

    move-object/from16 v26, v2

    move-object v2, v5

    move-object v1, v7

    move-object/from16 v27, v9

    move-object/from16 p3, v11

    move-object/from16 v5, v19

    move-object/from16 v28, v24

    move-object/from16 v29, v25

    const/4 v11, 0x0

    const/16 v24, 0x0

    move-object v7, v3

    move-object/from16 v19, v4

    move-object v9, v6

    move/from16 v25, v14

    move-object/from16 v3, v18

    move-object/from16 v14, v22

    const/4 v4, 0x0

    move-object v6, v0

    move-object/from16 v18, v10

    move-wide/from16 v22, v12

    move-object v0, v15

    move-object/from16 v15, v20

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v20, 0x0

    move-object/from16 v13, p2

    move-object/from16 p2, v8

    move-object/from16 v8, v21

    const/16 v21, 0x0

    :goto_5
    if-eqz v26, :cond_c

    move-object/from16 v30, v7

    .line 497
    :try_start_1a
    invoke-interface/range {v26 .. v26}, Lcom/metamoji/nt/dl/INtDownloadCanceller;->isCancelled()Z

    move-result v7

    move-object/from16 v31, v5

    const/4 v5, 0x1

    if-eq v7, v5, :cond_b

    goto :goto_6

    .line 498
    :cond_b
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v3, "cancelled by canceller"

    invoke-direct {v0, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    :catchall_6
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v33, v4

    move-object/from16 v23, v9

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v1, v19

    move/from16 v14, v25

    move-object/from16 v24, v28

    move-object/from16 v25, v29

    move-object/from16 v3, v30

    move-object/from16 v28, p3

    move-object v2, v0

    goto/16 :goto_d

    :cond_c
    move-object/from16 v31, v5

    move-object/from16 v30, v7

    .line 500
    :goto_6
    :try_start_1b
    array-length v5, v6

    const/4 v7, 0x0

    invoke-virtual {v8, v6, v7, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_13

    if-gtz v5, :cond_d

    .line 513
    :try_start_1c
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    const/16 v16, 0x1

    .line 514
    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    :try_start_1d
    invoke-static {v14, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    :try_start_1e
    invoke-static {v15, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    :try_start_1f
    invoke-static {v1, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    .line 523
    :try_start_20
    invoke-direct/range {p0 .. p0}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->closeCall()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    invoke-static {v9, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_7
    move-exception v0

    move-object/from16 v5, p0

    move-object v1, v0

    move-object v6, v9

    goto/16 :goto_1b

    :catchall_8
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v11, p3

    move-object v6, v2

    move-object/from16 v33, v4

    move-object v4, v9

    move-object/from16 v1, v19

    move/from16 v14, v25

    move-object/from16 v2, v26

    move-object/from16 v9, v27

    move-object/from16 v7, v28

    move-object/from16 v8, v29

    goto/16 :goto_12

    :catchall_9
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v11, p3

    move-object v3, v0

    move-object v7, v1

    move-object/from16 v33, v4

    move-object v6, v9

    move-object/from16 v1, v19

    move/from16 v14, v25

    move-object/from16 v9, v27

    move-object/from16 v24, v28

    move-object/from16 v8, v29

    move-object v4, v2

    move-object/from16 v2, v26

    goto/16 :goto_11

    :catchall_a
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v11, p3

    move-object v7, v1

    move-object/from16 v33, v4

    move-object v6, v9

    move-object v8, v15

    move-object/from16 v1, v19

    move/from16 v14, v25

    move-object/from16 v9, v27

    move-object/from16 v24, v28

    move-object/from16 v25, v29

    move-object/from16 v3, v30

    move-object v4, v2

    :goto_7
    move-object v2, v0

    goto/16 :goto_e

    :cond_d
    move-object v7, v10

    move-object/from16 v32, v11

    const/16 v16, 0x1

    .line 504
    :try_start_21
    iget-wide v10, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-wide/from16 v33, v10

    int-to-long v10, v5

    add-long v10, v33, v10

    iput-wide v10, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 505
    iget-wide v10, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v2, v10, v11}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->touch(J)V

    const/4 v10, 0x0

    .line 506
    invoke-virtual {v13, v6, v10, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 507
    iget-wide v10, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_13

    move-object/from16 v33, v4

    const/16 v4, 0x64

    move-wide/from16 v34, v10

    int-to-long v10, v4

    mul-long v10, v10, v34

    :try_start_22
    div-long v10, v10, v22

    long-to-int v4, v10

    iput v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 508
    iget v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v10, v31

    iget v11, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eq v4, v11, :cond_f

    .line 509
    iget v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_12

    move-object/from16 v31, v7

    move-object/from16 v7, v30

    :try_start_23
    iput-object v11, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$0:Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_11

    move-object/from16 v11, v27

    :try_start_24
    iput-object v11, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$1:Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_10

    move-object/from16 v27, v11

    move-object/from16 v11, v26

    :try_start_25
    iput-object v11, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$2:Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_f

    move-object/from16 v26, v11

    :try_start_26
    invoke-static/range {v29 .. v29}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$3:Ljava/lang/Object;

    invoke-static/range {v28 .. v28}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$4:Ljava/lang/Object;

    iput-object v9, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$5:Ljava/lang/Object;

    iput-object v2, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$6:Ljava/lang/Object;

    iput-object v1, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$7:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$8:Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$9:Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$10:Ljava/lang/Object;

    iput-object v0, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$11:Ljava/lang/Object;

    iput-object v3, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$12:Ljava/lang/Object;

    iput-object v10, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$13:Ljava/lang/Object;

    iput-object v15, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$14:Ljava/lang/Object;

    iput-object v8, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$15:Ljava/lang/Object;

    iput-object v14, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$16:Ljava/lang/Object;

    iput-object v13, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$17:Ljava/lang/Object;

    iput-object v6, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$18:Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_11

    move/from16 v11, v25

    :try_start_27
    iput v11, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->I$0:I

    move-object/from16 v25, v0

    move/from16 v0, v24

    iput v0, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->I$1:I
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_e

    move/from16 v30, v0

    move-object/from16 v24, v1

    move-wide/from16 v0, v22

    :try_start_28
    iput-wide v0, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->J$0:J

    move-wide/from16 v22, v0

    move/from16 v0, v21

    iput v0, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->I$2:I

    move/from16 v1, v20

    iput v1, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->I$3:I

    iput v5, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->I$4:I

    const/4 v5, 0x2

    iput v5, v7, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->label:I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_d

    move-object/from16 v5, p0

    :try_start_29
    invoke-virtual {v5, v4, v7}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->fireProgress(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_c

    move/from16 v20, v1

    move-object/from16 v1, v19

    if-ne v4, v1, :cond_e

    goto/16 :goto_17

    :cond_e
    move/from16 v19, v20

    move-object/from16 v21, v24

    move/from16 v24, v30

    move-object/from16 v4, v33

    move-object/from16 v20, p1

    move-object/from16 p1, p2

    move-object/from16 v30, v26

    move-object/from16 v33, v29

    move/from16 v29, v11

    move-object/from16 v11, v32

    move-object/from16 v32, v28

    move-object/from16 v28, p3

    move-wide/from16 v36, v22

    move/from16 v22, v0

    move-object/from16 v23, v9

    move-object v9, v10

    move-object/from16 v10, v31

    move-object/from16 v31, v27

    move-wide/from16 v26, v36

    .line 510
    :goto_8
    :try_start_2a
    iget v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iput v0, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_b

    move-object/from16 p2, p1

    move-object v5, v9

    move-object/from16 p1, v20

    move-object/from16 v9, v23

    move-object/from16 v0, v25

    move-object/from16 p3, v28

    move/from16 v25, v29

    move-object/from16 v28, v32

    move-object/from16 v29, v33

    move/from16 v20, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v21

    move/from16 v21, v22

    move-wide/from16 v22, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v31

    goto/16 :goto_5

    :catchall_b
    move-exception v0

    move-object/from16 v22, v2

    move-object v3, v7

    move-object v7, v14

    move-object v8, v15

    move/from16 v14, v29

    move-object/from16 v26, v30

    move-object/from16 v27, v31

    move-object/from16 v24, v32

    move-object/from16 v25, v33

    move-object v2, v0

    move-object/from16 v33, v4

    goto/16 :goto_d

    :catchall_c
    move-exception v0

    goto :goto_9

    :catchall_d
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_9

    :catchall_e
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v24, v1

    :goto_9
    move-object/from16 v1, v19

    goto :goto_c

    :catchall_f
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v24, v1

    move-object/from16 v26, v11

    goto :goto_a

    :catchall_10
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v24, v1

    move-object/from16 v27, v11

    goto :goto_a

    :catchall_11
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v24, v1

    :goto_a
    move-object/from16 v1, v19

    move/from16 v11, v25

    goto :goto_c

    :cond_f
    move-object/from16 v5, p0

    move-object/from16 v31, v7

    move/from16 v11, v25

    move-object/from16 v7, v30

    move-object/from16 v25, v0

    move/from16 v0, v21

    move/from16 v30, v24

    move-object/from16 v24, v1

    move-object v5, v10

    move-object/from16 v0, v25

    move/from16 v24, v30

    move-object/from16 v10, v31

    move-object/from16 v4, v33

    move/from16 v25, v11

    move-object/from16 v11, v32

    goto/16 :goto_5

    :catchall_12
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v24, v1

    goto :goto_b

    :catchall_13
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v24, v1

    move-object/from16 v33, v4

    :goto_b
    move-object/from16 v1, v19

    move/from16 v11, v25

    move-object/from16 v7, v30

    :goto_c
    move-object/from16 v22, v2

    move-object v3, v7

    move-object/from16 v23, v9

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v21, v24

    move-object/from16 v24, v28

    move-object/from16 v25, v29

    move-object/from16 v28, p3

    move-object v2, v0

    move v14, v11

    goto :goto_d

    :catchall_14
    move-exception v0

    move-object/from16 v36, v5

    move-object v5, v1

    move-object v1, v4

    move-object/from16 v4, v36

    move-object/from16 v26, v2

    move-object/from16 v23, v6

    move-object/from16 v21, v7

    move-object/from16 v27, v9

    move-object/from16 v28, v11

    move-object/from16 v8, v20

    move-object/from16 v7, v22

    const/16 v33, 0x0

    move-object v2, v0

    move-object/from16 v22, v4

    .line 523
    :goto_d
    :try_start_2b
    throw v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_15

    :catchall_15
    move-exception v0

    :try_start_2c
    invoke-static {v7, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_16

    :catchall_16
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v21

    move-object/from16 v4, v22

    move-object/from16 v6, v23

    move-object/from16 v9, v27

    move-object/from16 v11, v28

    goto :goto_e

    :catchall_17
    move-exception v0

    move-object/from16 v36, v5

    move-object v5, v1

    move-object v1, v4

    move-object/from16 v4, v36

    move-object/from16 v26, v2

    move-object/from16 v8, v20

    const/16 v33, 0x0

    goto/16 :goto_7

    :goto_e
    :try_start_2d
    throw v2
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_18

    :catchall_18
    move-exception v0

    :try_start_2e
    invoke-static {v8, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_19

    :catchall_19
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v8, v25

    move-object/from16 v2, v26

    goto :goto_10

    :cond_10
    move-object/from16 v36, v5

    move-object v5, v1

    move-object v1, v4

    move-object/from16 v4, v36

    const/4 v8, 0x0

    .line 477
    :try_start_2f
    invoke-static {v7, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1b

    .line 523
    :try_start_30
    invoke-direct {v5}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->closeCall()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1a

    move-object v2, v6

    const/4 v10, 0x0

    goto/16 :goto_19

    :catchall_1a
    move-exception v0

    goto/16 :goto_4

    :catchall_1b
    move-exception v0

    goto :goto_13

    :catchall_1c
    move-exception v0

    move-object/from16 v36, v5

    move-object v5, v1

    move-object v1, v4

    move-object/from16 v4, v36

    :goto_f
    move-object/from16 v30, v3

    move-object/from16 v8, v25

    const/16 v33, 0x0

    :goto_10
    move-object v3, v0

    .line 477
    :goto_11
    :try_start_31
    throw v3
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1d

    :catchall_1d
    move-exception v0

    :try_start_32
    invoke-static {v7, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1e

    :catchall_1e
    move-exception v0

    move-object v3, v6

    move-object v6, v4

    move-object v4, v3

    move-object/from16 v7, v24

    :goto_12
    move-object/from16 v3, v30

    goto :goto_16

    :catchall_1f
    move-exception v0

    move-object/from16 v36, v5

    move-object v5, v1

    move-object v1, v4

    move-object/from16 v4, v36

    :goto_13
    move-object v7, v6

    move-object v6, v4

    move-object v4, v7

    :goto_14
    move-object/from16 v7, v24

    move-object/from16 v8, v25

    goto/16 :goto_2

    :catchall_20
    move-exception v0

    move-object/from16 v36, v5

    move-object v5, v1

    move-object v1, v4

    move-object/from16 v4, v36

    goto :goto_15

    :catchall_21
    move-exception v0

    move-object v9, v5

    move-object v5, v1

    move-object v1, v4

    move-object v4, v9

    move-object/from16 v9, p2

    :goto_15
    move-object/from16 v11, p1

    const/4 v14, 0x0

    goto/16 :goto_2

    .line 519
    :goto_16
    :try_start_33
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 520
    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$0:Ljava/lang/Object;

    iput-object v9, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$1:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$2:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$3:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$4:Ljava/lang/Object;

    iput-object v4, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$5:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$6:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$7:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$8:Ljava/lang/Object;

    iput-object v8, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$9:Ljava/lang/Object;

    iput-object v8, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$10:Ljava/lang/Object;

    iput-object v8, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$11:Ljava/lang/Object;

    iput-object v8, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$12:Ljava/lang/Object;

    iput-object v8, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$13:Ljava/lang/Object;

    iput-object v8, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$14:Ljava/lang/Object;

    iput-object v8, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$15:Ljava/lang/Object;

    iput-object v8, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$16:Ljava/lang/Object;

    iput-object v8, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$17:Ljava/lang/Object;

    iput-object v8, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->L$18:Ljava/lang/Object;

    iput v14, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->I$0:I

    const/4 v2, 0x3

    iput v2, v3, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->label:I

    invoke-virtual {v5, v0, v3}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->fireError(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_23

    if-ne v0, v1, :cond_11

    :goto_17
    return-object v1

    :cond_11
    move-object v2, v4

    move-object v4, v9

    move-object/from16 v10, v33

    .line 521
    :goto_18
    :try_start_34
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_22

    .line 523
    :try_start_35
    invoke-direct {v5}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->closeCall()V

    :goto_19
    const/16 v17, 0x0

    .line 525
    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_24

    invoke-static {v2, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_22
    move-exception v0

    goto :goto_1a

    :catchall_23
    move-exception v0

    move-object v2, v4

    .line 523
    :goto_1a
    :try_start_36
    invoke-direct {v5}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->closeCall()V

    throw v0
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_24

    :catchall_24
    move-exception v0

    move-object v1, v0

    move-object v6, v2

    goto :goto_1b

    :catchall_25
    move-exception v0

    move-object v4, v5

    move-object v5, v1

    move-object v1, v0

    move-object v6, v4

    .line 525
    :goto_1b
    :try_start_37
    throw v1
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_26

    :catchall_26
    move-exception v0

    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected final fire(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->callback:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_1

    .line 172
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$fire$2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, p0, v3}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$fire$2;-><init>(Lkotlin/jvm/functions/Function2;Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;Lcom/metamoji/nt/dl/NtResourceDownloaderBase;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v2, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 176
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method protected final fireBegin(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
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

    .line 181
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->status:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    sget-object v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;->INIT:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    if-ne v0, v1, :cond_1

    .line 182
    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;->BEGIN:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    iput-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->status:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 183
    invoke-static {p0, v1, p1, v0, v1}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->fire$default(Lcom/metamoji/nt/dl/NtResourceDownloaderBase;Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 185
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method protected final fireComplete(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": completed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 217
    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->status:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 218
    invoke-static {p0, p1, p2, v0, p1}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->fire$default(Lcom/metamoji/nt/dl/NtResourceDownloaderBase;Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method protected final fireError(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->error:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Error;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Error;->getHasError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->error:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Error;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Error;->setError(Ljava/lang/String;)V

    .line 196
    :cond_0
    sget-object p1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;->ERROR:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->status:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 197
    invoke-static {p0, v0, p2, p1, v0}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->fire$default(Lcom/metamoji/nt/dl/NtResourceDownloaderBase;Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method protected final fireError(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->error:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Error;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Error;->getHasError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->error:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Error;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Error;->setError(Ljava/lang/Throwable;)V

    .line 208
    :cond_0
    sget-object p1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;->ERROR:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->status:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 209
    invoke-static {p0, v0, p2, p1, v0}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->fire$default(Lcom/metamoji/nt/dl/NtResourceDownloaderBase;Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method protected final fireProgress(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 240
    iput p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->percent:I

    .line 241
    sget-object p1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;->PROGRESS:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->status:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 242
    invoke-static {p0, p1, p2, v0, p1}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->fire$default(Lcom/metamoji/nt/dl/NtResourceDownloaderBase;Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final getCallback()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;",
            "Lcom/metamoji/nt/dl/NtResourceDownloaderBase;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->callback:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getCancellableState()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->cancellableState:Z

    return v0
.end method

.method protected final getCancelling()Z
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->cancellingLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->mCancelling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getCurrentIndex()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->currentIndex:I

    return v0
.end method

.method public final getError()Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Error;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->error:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Error;

    return-object v0
.end method

.method public final getHasError()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->error:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Error;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Error;->getHasError()Z

    move-result v0

    return v0
.end method

.method public abstract getMessageResourceId()I
.end method

.method public final getOptions()Lcom/metamoji/nt/dl/NtDownloaderOptions;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->options:Lcom/metamoji/nt/dl/NtDownloaderOptions;

    return-object v0
.end method

.method public final getPercent()I
    .locals 1

    .line 226
    iget v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->percent:I

    return v0
.end method

.method public final getStatus()Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->status:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    return-object v0
.end method

.method public final getTotalCount()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->totalCount:I

    return v0
.end method

.method protected abstract needToDownload()Z
.end method

.method public final preCheck()Z
    .locals 2

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->mPreCheckResult:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    sget-object v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->INITIAL:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    if-ne v0, v1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->needToDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->NEED_UPDATE:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    goto :goto_0

    .line 85
    :cond_0
    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->NO_UPDATE:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    .line 82
    :goto_0
    iput-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->mPreCheckResult:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->mPreCheckResult:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    sget-object v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->NEED_UPDATE:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 80
    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setCallback(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;",
            "-",
            "Lcom/metamoji/nt/dl/NtResourceDownloaderBase;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->callback:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method protected final setCurrentIndex(I)V
    .locals 0

    .line 233
    iput p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->currentIndex:I

    return-void
.end method

.method protected final setPercent(I)V
    .locals 0

    .line 227
    iput p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->percent:I

    return-void
.end method

.method protected final setStatus(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->status:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    return-void
.end method

.method protected final setTotalCount(I)V
    .locals 0

    .line 230
    iput p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->totalCount:I

    return-void
.end method

.method protected final updateSysInfoAsync()I
    .locals 1

    .line 577
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->updateStateAsync()V

    .line 578
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->GetState()I

    move-result v0

    return v0
.end method

.method protected final updateSysInfoSync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;

    iget v1, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;-><init>(Lcom/metamoji/nt/dl/NtResourceDownloaderBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 540
    iget v2, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_6

    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    iget v2, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->I$1:I

    iget-wide v6, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->J$0:J

    iget v2, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->I$0:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move v8, v2

    goto/16 :goto_5

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget v2, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->I$1:I

    iget-wide v6, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->J$0:J

    iget v8, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->I$0:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move p1, v2

    :cond_4
    move v2, v8

    goto/16 :goto_3

    :cond_5
    iget v2, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->I$1:I

    iget-wide v6, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->J$0:J

    iget v8, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->I$0:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move p1, v2

    goto :goto_2

    :cond_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 541
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->updateStateAsync()V

    const/4 p1, 0x0

    const-wide/16 v6, 0x1f4

    move v8, p1

    .line 545
    :cond_7
    :goto_1
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->GetState()I

    move-result v2

    if-nez v2, :cond_a

    .line 546
    iget-boolean v2, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->mCancelling:Z

    if-eqz v2, :cond_8

    .line 547
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 549
    :cond_8
    iput v8, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->I$0:I

    iput-wide v6, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->J$0:J

    iput p1, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->I$1:I

    iput v5, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->label:I

    invoke-static {v6, v7, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_9

    goto :goto_4

    :cond_9
    :goto_2
    add-int/2addr v8, v5

    .line 551
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ".updateSysInfoSync(): waiting for sysInfo ("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ") ..."

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    if-nez p1, :cond_7

    int-to-long v9, v8

    mul-long/2addr v9, v6

    .line 555
    sget-object v2, Lcom/metamoji/nt/dl/NtDLEnv;->INSTANCE:Lcom/metamoji/nt/dl/NtDLEnv;

    invoke-virtual {v2}, Lcom/metamoji/nt/dl/NtDLEnv;->getE()Lcom/metamoji/nt/dl/INtDLEnv;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/nt/dl/INtDLEnv;->getMAX_SYSINFO_WAIT()J

    move-result-wide v11

    cmp-long v2, v9, v11

    if-lez v2, :cond_7

    .line 556
    iput v8, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->I$0:I

    iput-wide v6, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->J$0:J

    iput p1, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->I$1:I

    iput v4, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->label:I

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->fireBegin(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_4

    .line 557
    :goto_3
    sget-object v8, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;->CANCEL_ENABLED:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    iput v2, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->I$0:I

    iput-wide v6, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->J$0:J

    iput p1, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->I$1:I

    iput v3, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->label:I

    invoke-virtual {p0, v8, v0}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->fire(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1

    :goto_4
    return-object v1

    :goto_5
    move p1, v5

    goto :goto_1

    .line 561
    :cond_a
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->GetState()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
