.class public final Lcom/metamoji/video/AmvDLTempFile;
.super Ljava/lang/Object;
.source "AmvDLTempFile.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/AmvDLTempFile$Companion;,
        Lcom/metamoji/video/AmvDLTempFile$Status;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0002\u0008\u0003\u0018\u0000  2\u00020\u0001:\u0002\u001f B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u001a\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0006\u0010\u0012\u001a\u00020\u0007J\u0008\u0010\u001b\u001a\u00020\u0007H\u0002J\u0012\u0010\u001c\u001a\u00020\u00072\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR%\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006!"
    }
    d2 = {
        "Lcom/metamoji/video/AmvDLTempFile;",
        "",
        "uri",
        "",
        "onPrepared",
        "Lkotlin/Function2;",
        "Ljava/io/File;",
        "",
        "<init>",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V",
        "getUri",
        "()Ljava/lang/String;",
        "getOnPrepared",
        "()Lkotlin/jvm/functions/Function2;",
        "error",
        "Lcom/metamoji/video/AmvError;",
        "getError",
        "()Lcom/metamoji/video/AmvError;",
        "dispose",
        "mDownloading",
        "",
        "mFile",
        "mDisposed",
        "status",
        "Lcom/metamoji/video/AmvDLTempFile$Status;",
        "getStatus",
        "()Lcom/metamoji/video/AmvDLTempFile$Status;",
        "download",
        "onFailure",
        "e",
        "",
        "Status",
        "Companion",
        "video"
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
.field private static final CONNECTION_TIMEOUT:J = 0x1eL

.field private static final Companion:Lcom/metamoji/video/AmvDLTempFile$Companion;

.field private static final READ_TIMEOUT:J = 0x3cL

.field private static final WRITE_TIMEOUT:J = 0x3cL

.field private static final httpClient$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final error:Lcom/metamoji/video/AmvError;

.field private mDisposed:Z

.field private mDownloading:Z

.field private mFile:Ljava/io/File;

.field private final onPrepared:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/metamoji/video/AmvDLTempFile;",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/video/AmvDLTempFile$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/video/AmvDLTempFile$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/video/AmvDLTempFile;->Companion:Lcom/metamoji/video/AmvDLTempFile$Companion;

    .line 41
    sget-object v0, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSettings;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    sput-object v0, Lcom/metamoji/video/AmvDLTempFile;->logger:Lcom/metamoji/lib/utils/UtLog;

    .line 45
    new-instance v0, Lcom/metamoji/video/AmvDLTempFile$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/video/AmvDLTempFile$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/metamoji/video/AmvDLTempFile;->httpClient$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/metamoji/video/AmvDLTempFile;",
            "-",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPrepared"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvDLTempFile;->uri:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/video/AmvDLTempFile;->onPrepared:Lkotlin/jvm/functions/Function2;

    .line 16
    new-instance p1, Lcom/metamoji/video/AmvError;

    invoke-direct {p1}, Lcom/metamoji/video/AmvError;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvDLTempFile;->error:Lcom/metamoji/video/AmvError;

    .line 32
    invoke-direct {p0}, Lcom/metamoji/video/AmvDLTempFile;->download()V

    return-void
.end method

.method public static final synthetic access$getCompanion$p()Lcom/metamoji/video/AmvDLTempFile$Companion;
    .locals 1

    .line 12
    sget-object v0, Lcom/metamoji/video/AmvDLTempFile;->Companion:Lcom/metamoji/video/AmvDLTempFile$Companion;

    return-object v0
.end method

.method public static final synthetic access$getHttpClient$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 12
    sget-object v0, Lcom/metamoji/video/AmvDLTempFile;->httpClient$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 12
    sget-object v0, Lcom/metamoji/video/AmvDLTempFile;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public static final synthetic access$getMDisposed$p(Lcom/metamoji/video/AmvDLTempFile;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/metamoji/video/AmvDLTempFile;->mDisposed:Z

    return p0
.end method

.method public static final synthetic access$onFailure(Lcom/metamoji/video/AmvDLTempFile;Ljava/lang/Throwable;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/metamoji/video/AmvDLTempFile;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$setMDownloading$p(Lcom/metamoji/video/AmvDLTempFile;Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/metamoji/video/AmvDLTempFile;->mDownloading:Z

    return-void
.end method

.method public static final synthetic access$setMFile$p(Lcom/metamoji/video/AmvDLTempFile;Ljava/io/File;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/metamoji/video/AmvDLTempFile;->mFile:Ljava/io/File;

    return-void
.end method

.method private final download()V
    .locals 4

    .line 55
    iget-boolean v0, p0, Lcom/metamoji/video/AmvDLTempFile;->mDownloading:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/metamoji/video/AmvDLTempFile;->mDownloading:Z

    .line 59
    iput-object v1, p0, Lcom/metamoji/video/AmvDLTempFile;->mFile:Ljava/io/File;

    .line 62
    :try_start_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 63
    iget-object v1, p0, Lcom/metamoji/video/AmvDLTempFile;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 67
    sget-object v1, Lcom/metamoji/video/AmvDLTempFile;->Companion:Lcom/metamoji/video/AmvDLTempFile$Companion;

    invoke-virtual {v1}, Lcom/metamoji/video/AmvDLTempFile$Companion;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/metamoji/video/AmvDLTempFile$download$1;

    invoke-direct {v1, p0}, Lcom/metamoji/video/AmvDLTempFile$download$1;-><init>(Lcom/metamoji/video/AmvDLTempFile;)V

    check-cast v1, Lokhttp3/Callback;

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 117
    invoke-direct {p0, v0}, Lcom/metamoji/video/AmvDLTempFile;->onFailure(Ljava/lang/Throwable;)V

    return-void

    .line 56
    :cond_0
    new-instance v0, Lcom/metamoji/video/AmvException;

    const-string v2, "internal error: download twice"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3, v1}, Lcom/metamoji/video/AmvException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method static final httpClient_delegate$lambda$2()Lokhttp3/OkHttpClient;
    .locals 4

    .line 46
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 47
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 48
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v1, 0x1e

    .line 49
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private final onFailure(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 124
    sget-object v1, Lcom/metamoji/video/AmvDLTempFile;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v2, 0x2

    invoke-static {v1, p1, v0, v2, v0}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 125
    iget-object v1, p0, Lcom/metamoji/video/AmvDLTempFile;->error:Lcom/metamoji/video/AmvError;

    invoke-virtual {v1, p1}, Lcom/metamoji/video/AmvError;->setError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 127
    :cond_0
    sget-object p1, Lcom/metamoji/video/AmvDLTempFile;->logger:Lcom/metamoji/lib/utils/UtLog;

    const-string v1, "something wrong."

    invoke-virtual {p1, v1}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/metamoji/video/AmvDLTempFile;->error:Lcom/metamoji/video/AmvError;

    const-string v1, "generic error"

    invoke-virtual {p1, v1}, Lcom/metamoji/video/AmvError;->setError(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 131
    iput-boolean p1, p0, Lcom/metamoji/video/AmvDLTempFile;->mDownloading:Z

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iput-object v0, p0, Lcom/metamoji/video/AmvDLTempFile;->mFile:Ljava/io/File;

    .line 134
    iget-boolean p1, p0, Lcom/metamoji/video/AmvDLTempFile;->mDisposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    if-nez p1, :cond_1

    .line 136
    iget-object p1, p0, Lcom/metamoji/video/AmvDLTempFile;->onPrepared:Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 132
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 19
    monitor-enter p0

    const/4 v0, 0x1

    .line 20
    :try_start_0
    iput-boolean v0, p0, Lcom/metamoji/video/AmvDLTempFile;->mDisposed:Z

    .line 21
    iget-object v0, p0, Lcom/metamoji/video/AmvDLTempFile;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/metamoji/video/AmvDLTempFile;->mFile:Ljava/io/File;

    .line 23
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getError()Lcom/metamoji/video/AmvError;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/metamoji/video/AmvDLTempFile;->error:Lcom/metamoji/video/AmvError;

    return-object v0
.end method

.method public final getOnPrepared()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/metamoji/video/AmvDLTempFile;",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/metamoji/video/AmvDLTempFile;->onPrepared:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getStatus()Lcom/metamoji/video/AmvDLTempFile$Status;
    .locals 3

    .line 38
    new-instance v0, Lcom/metamoji/video/AmvDLTempFile$Status;

    iget-boolean v1, p0, Lcom/metamoji/video/AmvDLTempFile;->mDownloading:Z

    iget-object v2, p0, Lcom/metamoji/video/AmvDLTempFile;->mFile:Ljava/io/File;

    invoke-direct {v0, v1, v2}, Lcom/metamoji/video/AmvDLTempFile$Status;-><init>(ZLjava/io/File;)V

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/metamoji/video/AmvDLTempFile;->uri:Ljava/lang/String;

    return-object v0
.end method
