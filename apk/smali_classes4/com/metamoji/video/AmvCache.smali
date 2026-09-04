.class final Lcom/metamoji/video/AmvCache;
.super Ljava/lang/Object;
.source "AmvCacheManager.kt"

# interfaces
.implements Lcom/metamoji/video/IAmvCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/AmvCache$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAmvCacheManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AmvCacheManager.kt\ncom/metamoji/video/AmvCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,505:1\n1#2:506\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0002\u0018\u0000 ;2\u00020\u0001:\u0001;B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010&\u001a\u00020\u00182\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J$\u0010\'\u001a\u00020\u00182\u001a\u0010(\u001a\u0016\u0012\u0004\u0012\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u00180\u001cH\u0016J\u0010\u0010\'\u001a\u00020\u00182\u0006\u0010(\u001a\u00020)H\u0016J\u0010\u0010*\u001a\u0004\u0018\u00010\u0007H\u0096@\u00a2\u0006\u0002\u0010+J\"\u0010\'\u001a\u00020\u00182\u001a\u0010(\u001a\u0016\u0012\u0004\u0012\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u00180,J\u0008\u00101\u001a\u00020\u0018H\u0016J\u0008\u00102\u001a\u00020\u0012H\u0016J\u0008\u00106\u001a\u00020\u0018H\u0016J\u0008\u00107\u001a\u00020\u0018H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0016\u001a\u0016\u0012\u0004\u0012\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000RL\u0010\u001b\u001a4\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(!\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u001cX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u0014\u0010-\u001a\u00020.X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u0014\u00103\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u00105R\u0016\u00108\u001a\u0004\u0018\u00010\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00089\u0010:\u00a8\u0006<"
    }
    d2 = {
        "Lcom/metamoji/video/AmvCache;",
        "Lcom/metamoji/video/IAmvCache;",
        "key",
        "",
        "uri",
        "Landroid/net/Uri;",
        "existsFile",
        "Ljava/io/File;",
        "<init>",
        "(Ljava/lang/String;Landroid/net/Uri;Ljava/io/File;)V",
        "getKey",
        "()Ljava/lang/String;",
        "getUri",
        "()Landroid/net/Uri;",
        "mFile",
        "mInvalidated",
        "",
        "mRefCount",
        "",
        "mLock",
        "Ljava/lang/Object;",
        "mDownloading",
        "mDownloadedListener",
        "Lcom/metamoji/lib/utils/Funcies2;",
        "",
        "mCall",
        "Lokhttp3/Call;",
        "progressCallback",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "recvInBytes",
        "totalInBytes",
        "getProgressCallback",
        "()Lkotlin/jvm/functions/Function2;",
        "setProgressCallback",
        "(Lkotlin/jvm/functions/Function2;)V",
        "download",
        "getFile",
        "callback",
        "Lcom/metamoji/video/IAmvCache$IGotFileCallback;",
        "getFileAsync",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/metamoji/lib/utils/IFuncy2;",
        "error",
        "Lcom/metamoji/video/AmvError;",
        "getError",
        "()Lcom/metamoji/video/AmvError;",
        "addRef",
        "release",
        "refCount",
        "getRefCount",
        "()I",
        "invalidate",
        "cancel",
        "cacheFile",
        "getCacheFile",
        "()Ljava/io/File;",
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
.field public static final Companion:Lcom/metamoji/video/AmvCache$Companion;


# instance fields
.field private final error:Lcom/metamoji/video/AmvError;

.field private final key:Ljava/lang/String;

.field private mCall:Lokhttp3/Call;

.field private mDownloadedListener:Lcom/metamoji/lib/utils/Funcies2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/Funcies2<",
            "Lcom/metamoji/video/IAmvCache;",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloading:Z

.field private mFile:Ljava/io/File;

.field private mInvalidated:Z

.field private mLock:Ljava/lang/Object;

.field private mRefCount:I

.field private progressCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/video/AmvCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/video/AmvCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/video/AmvCache;->Companion:Lcom/metamoji/video/AmvCache$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/io/File;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvCache;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/video/AmvCache;->uri:Landroid/net/Uri;

    .line 318
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvCache;->mLock:Ljava/lang/Object;

    .line 320
    new-instance p1, Lcom/metamoji/lib/utils/Funcies2;

    invoke-direct {p1}, Lcom/metamoji/lib/utils/Funcies2;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvCache;->mDownloadedListener:Lcom/metamoji/lib/utils/Funcies2;

    if-eqz p3, :cond_0

    .line 331
    iput-object p3, p0, Lcom/metamoji/video/AmvCache;->mFile:Ljava/io/File;

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/video/AmvCache;->getUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 333
    invoke-virtual {p0}, Lcom/metamoji/video/AmvCache;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/video/AmvCache;->download(Landroid/net/Uri;)V

    .line 458
    :cond_1
    :goto_0
    new-instance p1, Lcom/metamoji/video/AmvError;

    invoke-direct {p1}, Lcom/metamoji/video/AmvError;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvCache;->error:Lcom/metamoji/video/AmvError;

    return-void
.end method

.method public static final synthetic access$getMDownloadedListener$p(Lcom/metamoji/video/AmvCache;)Lcom/metamoji/lib/utils/Funcies2;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/metamoji/video/AmvCache;->mDownloadedListener:Lcom/metamoji/lib/utils/Funcies2;

    return-object p0
.end method

.method public static final synthetic access$getMLock$p(Lcom/metamoji/video/AmvCache;)Ljava/lang/Object;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/metamoji/video/AmvCache;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$setMCall$p(Lcom/metamoji/video/AmvCache;Lokhttp3/Call;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/metamoji/video/AmvCache;->mCall:Lokhttp3/Call;

    return-void
.end method

.method public static final synthetic access$setMDownloading$p(Lcom/metamoji/video/AmvCache;Z)V
    .locals 0

    .line 314
    iput-boolean p1, p0, Lcom/metamoji/video/AmvCache;->mDownloading:Z

    return-void
.end method

.method public static final synthetic access$setMFile$p(Lcom/metamoji/video/AmvCache;Ljava/io/File;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/metamoji/video/AmvCache;->mFile:Ljava/io/File;

    return-void
.end method

.method private final download(Landroid/net/Uri;)V
    .locals 3

    .line 341
    iget-boolean v0, p0, Lcom/metamoji/video/AmvCache;->mDownloading:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 344
    iput-boolean v0, p0, Lcom/metamoji/video/AmvCache;->mDownloading:Z

    .line 345
    iput-object v1, p0, Lcom/metamoji/video/AmvCache;->mFile:Ljava/io/File;

    .line 347
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "toString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 349
    sget-object v0, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSettings;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/video/AmvCache;->mCall:Lokhttp3/Call;

    new-instance v0, Lcom/metamoji/video/AmvCache$download$2;

    invoke-direct {v0, p0}, Lcom/metamoji/video/AmvCache$download$2;-><init>(Lcom/metamoji/video/AmvCache;)V

    check-cast v0, Lokhttp3/Callback;

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void

    .line 342
    :cond_0
    new-instance p1, Lcom/metamoji/video/AmvException;

    const-string v0, "internal error: download twice"

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2, v1}, Lcom/metamoji/video/AmvException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method


# virtual methods
.method public addRef()V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/metamoji/video/AmvCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 465
    :try_start_0
    iget v1, p0, Lcom/metamoji/video/AmvCache;->mRefCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/metamoji/video/AmvCache;->mRefCount:I

    if-gtz v1, :cond_0

    .line 467
    iput v2, p0, Lcom/metamoji/video/AmvCache;->mRefCount:I

    .line 469
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public cancel()V
    .locals 2

    .line 497
    sget-object v0, Lcom/metamoji/video/AmvCache;->Companion:Lcom/metamoji/video/AmvCache$Companion;

    invoke-static {v0}, Lcom/metamoji/video/AmvCache$Companion;->access$getLogger(Lcom/metamoji/video/AmvCache$Companion;)Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v1, "cancelled"

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->info(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/metamoji/video/AmvCache;->mCall:Lokhttp3/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 499
    iput-object v0, p0, Lcom/metamoji/video/AmvCache;->mCall:Lokhttp3/Call;

    return-void
.end method

.method public getCacheFile()Ljava/io/File;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/metamoji/video/AmvCache;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getError()Lcom/metamoji/video/AmvError;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/metamoji/video/AmvCache;->error:Lcom/metamoji/video/AmvError;

    return-object v0
.end method

.method public final getFile(Lcom/metamoji/lib/utils/IFuncy2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/IFuncy2<",
            "Lcom/metamoji/video/IAmvCache;",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/metamoji/video/AmvCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_0
    iget-boolean v1, p0, Lcom/metamoji/video/AmvCache;->mInvalidated:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/metamoji/video/AmvCache;->getError()Lcom/metamoji/video/AmvError;

    move-result-object v1

    const-string v3, "cache has been invalidated."

    invoke-virtual {v1, v3}, Lcom/metamoji/video/AmvError;->setError(Ljava/lang/String;)V

    .line 432
    invoke-interface {p1, p0, v2}, Lcom/metamoji/lib/utils/IFuncy2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    monitor-exit v0

    return-void

    .line 435
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/video/AmvCache;->mFile:Ljava/io/File;

    if-nez v1, :cond_3

    .line 436
    iget-boolean v1, p0, Lcom/metamoji/video/AmvCache;->mDownloading:Z

    if-nez v1, :cond_2

    .line 438
    invoke-virtual {p0}, Lcom/metamoji/video/AmvCache;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 439
    invoke-virtual {p0}, Lcom/metamoji/video/AmvCache;->getError()Lcom/metamoji/video/AmvError;

    move-result-object v1

    const-string v3, "no uri to download."

    invoke-virtual {v1, v3}, Lcom/metamoji/video/AmvError;->setError(Ljava/lang/String;)V

    .line 440
    invoke-interface {p1, p0, v2}, Lcom/metamoji/lib/utils/IFuncy2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    monitor-exit v0

    return-void

    .line 443
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/metamoji/video/AmvCache;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/metamoji/video/AmvCache;->download(Landroid/net/Uri;)V

    .line 446
    :cond_2
    iget-object v1, p0, Lcom/metamoji/video/AmvCache;->mDownloadedListener:Lcom/metamoji/lib/utils/Funcies2;

    check-cast p1, Lcom/metamoji/lib/utils/IFuncy;

    invoke-virtual {v1, v2, p1}, Lcom/metamoji/lib/utils/Funcies2;->add(Ljava/lang/String;Lcom/metamoji/lib/utils/IFuncy;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 447
    monitor-exit v0

    return-void

    .line 449
    :cond_3
    :try_start_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 429
    monitor-exit v0

    .line 451
    sget-object v0, Lcom/metamoji/video/AmvCache;->Companion:Lcom/metamoji/video/AmvCache$Companion;

    invoke-static {v0}, Lcom/metamoji/video/AmvCache$Companion;->access$getLogger(Lcom/metamoji/video/AmvCache$Companion;)Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/video/AmvCache;->getKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": file is available in cache."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/metamoji/video/AmvCache;->mFile:Ljava/io/File;

    invoke-interface {p1, p0, v0}, Lcom/metamoji/lib/utils/IFuncy2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 429
    monitor-exit v0

    throw p1
.end method

.method public getFile(Lcom/metamoji/video/IAmvCache$IGotFileCallback;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    new-instance v0, Lcom/metamoji/lib/utils/Funcy2;

    new-instance v1, Lcom/metamoji/video/AmvCache$getFile$1;

    invoke-direct {v1, p1}, Lcom/metamoji/video/AmvCache$getFile$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/Funcy2;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lcom/metamoji/lib/utils/IFuncy2;

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvCache;->getFile(Lcom/metamoji/lib/utils/IFuncy2;)V

    return-void
.end method

.method public getFile(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/metamoji/video/IAmvCache;",
            "-",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    new-instance v0, Lcom/metamoji/lib/utils/Funcy2;

    invoke-direct {v0, p1}, Lcom/metamoji/lib/utils/Funcy2;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lcom/metamoji/lib/utils/IFuncy2;

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvCache;->getFile(Lcom/metamoji/lib/utils/IFuncy2;)V

    return-void
.end method

.method public getFileAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 417
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 418
    new-instance v2, Lcom/metamoji/video/AmvCache$getFileAsync$2$1;

    invoke-direct {v2, v1}, Lcom/metamoji/video/AmvCache$getFileAsync$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v2}, Lcom/metamoji/video/AmvCache;->getFile(Lkotlin/jvm/functions/Function2;)V

    .line 417
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/metamoji/video/AmvCache;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressCallback()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/metamoji/video/AmvCache;->progressCallback:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public getRefCount()I
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/metamoji/video/AmvCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_0
    iget v1, p0, Lcom/metamoji/video/AmvCache;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/metamoji/video/AmvCache;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/metamoji/video/AmvCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 491
    :try_start_0
    iput-boolean v1, p0, Lcom/metamoji/video/AmvCache;->mInvalidated:Z

    .line 492
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    monitor-exit v0

    .line 493
    sget-object v0, Lcom/metamoji/video/AmvCacheManager;->INSTANCE:Lcom/metamoji/video/AmvCacheManager;

    move-object v1, p0

    check-cast v1, Lcom/metamoji/video/IAmvCache;

    invoke-virtual {v0, v1}, Lcom/metamoji/video/AmvCacheManager;->removeCache$video(Lcom/metamoji/video/IAmvCache;)V

    return-void

    :catchall_0
    move-exception v1

    .line 490
    monitor-exit v0

    throw v1
.end method

.method public release()I
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/metamoji/video/AmvCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 477
    :try_start_0
    iget v1, p0, Lcom/metamoji/video/AmvCache;->mRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/metamoji/video/AmvCache;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setProgressCallback(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 323
    iput-object p1, p0, Lcom/metamoji/video/AmvCache;->progressCallback:Lkotlin/jvm/functions/Function2;

    return-void
.end method
