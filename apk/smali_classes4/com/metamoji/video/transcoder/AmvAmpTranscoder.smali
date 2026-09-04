.class public final Lcom/metamoji/video/transcoder/AmvAmpTranscoder;
.super Ljava/lang/Object;
.source "AmvAmpTranscoder.kt"

# interfaces
.implements Lcom/metamoji/video/transcoder/IAmvTranscoder;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0008\u0010\u001f\u001a\u00020\u000fH\u0002J\u0010\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u0003H\u0016J \u0010\"\u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u00032\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$H\u0016J\u0008\u0010&\u001a\u00020\u000fH\u0016J\u0008\u0010\'\u001a\u00020\u000fH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR&\u0010\u000c\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R&\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u000f0\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u0016X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/metamoji/video/transcoder/AmvAmpTranscoder;",
        "Lcom/metamoji/video/transcoder/IAmvTranscoder;",
        "srcFile",
        "Ljava/io/File;",
        "<init>",
        "(Ljava/io/File;)V",
        "getSrcFile",
        "()Ljava/io/File;",
        "logger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "getLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "completionListener",
        "Lcom/metamoji/lib/utils/FuncyListener2;",
        "",
        "",
        "getCompletionListener",
        "()Lcom/metamoji/lib/utils/FuncyListener2;",
        "progressListener",
        "",
        "getProgressListener",
        "error",
        "Lcom/metamoji/video/AmvError;",
        "getError",
        "()Lcom/metamoji/video/AmvError;",
        "awaiter",
        "Lio/github/toyota32k/media/lib/converter/IAwaiter;",
        "Lio/github/toyota32k/media/lib/converter/ConvertResult;",
        "onProgress",
        "progress",
        "Lio/github/toyota32k/media/lib/converter/IProgress;",
        "await",
        "transcode",
        "distFile",
        "truncate",
        "start",
        "",
        "end",
        "cancel",
        "dispose",
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


# instance fields
.field private awaiter:Lio/github/toyota32k/media/lib/converter/IAwaiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/github/toyota32k/media/lib/converter/IAwaiter<",
            "Lio/github/toyota32k/media/lib/converter/ConvertResult;",
            ">;"
        }
    .end annotation
.end field

.field private final completionListener:Lcom/metamoji/lib/utils/FuncyListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/FuncyListener2<",
            "Lcom/metamoji/video/transcoder/IAmvTranscoder;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final error:Lcom/metamoji/video/AmvError;

.field private final logger:Lcom/metamoji/lib/utils/UtLog;

.field private final progressListener:Lcom/metamoji/lib/utils/FuncyListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/FuncyListener2<",
            "Lcom/metamoji/video/transcoder/IAmvTranscoder;",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final srcFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "srcFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->srcFile:Ljava/io/File;

    .line 16
    sget-object p1, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvSettings;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

    .line 17
    new-instance p1, Lcom/metamoji/lib/utils/FuncyListener2;

    invoke-direct {p1}, Lcom/metamoji/lib/utils/FuncyListener2;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->completionListener:Lcom/metamoji/lib/utils/FuncyListener2;

    .line 18
    new-instance p1, Lcom/metamoji/lib/utils/FuncyListener2;

    invoke-direct {p1}, Lcom/metamoji/lib/utils/FuncyListener2;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->progressListener:Lcom/metamoji/lib/utils/FuncyListener2;

    .line 19
    new-instance p1, Lcom/metamoji/video/AmvError;

    invoke-direct {p1}, Lcom/metamoji/video/AmvError;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->error:Lcom/metamoji/video/AmvError;

    return-void
.end method

.method public static final synthetic access$getAwaiter$p(Lcom/metamoji/video/transcoder/AmvAmpTranscoder;)Lio/github/toyota32k/media/lib/converter/IAwaiter;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->awaiter:Lio/github/toyota32k/media/lib/converter/IAwaiter;

    return-object p0
.end method

.method public static final synthetic access$onProgress(Lcom/metamoji/video/transcoder/AmvAmpTranscoder;Lio/github/toyota32k/media/lib/converter/IProgress;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->onProgress(Lio/github/toyota32k/media/lib/converter/IProgress;)V

    return-void
.end method

.method private final await()V
    .locals 7

    .line 28
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$await$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$await$1;-><init>(Lcom/metamoji/video/transcoder/AmvAmpTranscoder;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final onProgress(Lio/github/toyota32k/media/lib/converter/IProgress;)V
    .locals 2

    .line 24
    invoke-virtual {p0}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->getProgressListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object v0

    invoke-interface {p1}, Lio/github/toyota32k/media/lib/converter/IProgress;->getPercentage()I

    move-result p1

    int-to-float p1, p1

    const/16 v1, 0x64

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/lib/utils/FuncyListener2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->awaiter:Lio/github/toyota32k/media/lib/converter/IAwaiter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/github/toyota32k/media/lib/converter/IAwaiter;->cancel()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 80
    invoke-virtual {p0}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->getCompletionListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/FuncyListener2;->reset()V

    .line 81
    invoke-virtual {p0}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->getProgressListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/FuncyListener2;->reset()V

    return-void
.end method

.method public getCompletionListener()Lcom/metamoji/lib/utils/FuncyListener2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/FuncyListener2<",
            "Lcom/metamoji/video/transcoder/IAmvTranscoder;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->completionListener:Lcom/metamoji/lib/utils/FuncyListener2;

    return-object v0
.end method

.method public getError()Lcom/metamoji/video/AmvError;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->error:Lcom/metamoji/video/AmvError;

    return-object v0
.end method

.method public final getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public getProgressListener()Lcom/metamoji/lib/utils/FuncyListener2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/FuncyListener2<",
            "Lcom/metamoji/video/transcoder/IAmvTranscoder;",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->progressListener:Lcom/metamoji/lib/utils/FuncyListener2;

    return-object v0
.end method

.method public final getSrcFile()Ljava/io/File;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->srcFile:Ljava/io/File;

    return-object v0
.end method

.method public transcode(Ljava/io/File;)V
    .locals 4

    const-string v0, "distFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

    iget-object v1, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->srcFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "from: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "to  : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 47
    new-instance v0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;

    invoke-direct {v0}, Lio/github/toyota32k/media/lib/converter/Converter$Factory;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->srcFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->input(Ljava/io/File;)Lio/github/toyota32k/media/lib/converter/Converter$Factory;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p1}, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->output(Ljava/io/File;)Lio/github/toyota32k/media/lib/converter/Converter$Factory;

    move-result-object p1

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p1, v0}, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->deleteOutputOnError(Z)Lio/github/toyota32k/media/lib/converter/Converter$Factory;

    move-result-object p1

    .line 51
    new-instance v1, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$transcode$converter$1;

    invoke-direct {v1, p0}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$transcode$converter$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v1}, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->setProgressHandler(Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/media/lib/converter/Converter$Factory;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->build()Lio/github/toyota32k/media/lib/converter/Converter;

    move-result-object p1

    const/4 v1, 0x0

    .line 53
    invoke-static {p1, v1, v0, v1}, Lio/github/toyota32k/media/lib/converter/Converter;->executeAsync$default(Lio/github/toyota32k/media/lib/converter/Converter;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lio/github/toyota32k/media/lib/converter/IAwaiter;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->awaiter:Lio/github/toyota32k/media/lib/converter/IAwaiter;

    .line 54
    invoke-direct {p0}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->await()V

    return-void
.end method

.method public truncate(Ljava/io/File;JJ)V
    .locals 4

    const-string v0, "distFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

    iget-object v1, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->srcFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "from: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "to  : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 61
    new-instance v0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;

    invoke-direct {v0}, Lio/github/toyota32k/media/lib/converter/Converter$Factory;-><init>()V

    .line 62
    iget-object v1, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->srcFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->input(Ljava/io/File;)Lio/github/toyota32k/media/lib/converter/Converter$Factory;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p1}, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->output(Ljava/io/File;)Lio/github/toyota32k/media/lib/converter/Converter$Factory;

    move-result-object p1

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p1, v0}, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->deleteOutputOnError(Z)Lio/github/toyota32k/media/lib/converter/Converter$Factory;

    move-result-object p1

    .line 65
    new-instance v1, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$truncate$converter$1;

    invoke-direct {v1, p0}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$truncate$converter$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v1}, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->setProgressHandler(Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/media/lib/converter/Converter$Factory;

    move-result-object p1

    .line 66
    invoke-virtual {p1, p2, p3}, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->trimmingStartFrom(J)Lio/github/toyota32k/media/lib/converter/Converter$Factory;

    move-result-object p1

    .line 67
    invoke-virtual {p1, p4, p5}, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->trimmingEndTo(J)Lio/github/toyota32k/media/lib/converter/Converter$Factory;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->build()Lio/github/toyota32k/media/lib/converter/Converter;

    move-result-object p1

    const/4 p2, 0x0

    .line 69
    invoke-static {p1, p2, v0, p2}, Lio/github/toyota32k/media/lib/converter/Converter;->executeAsync$default(Lio/github/toyota32k/media/lib/converter/Converter;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lio/github/toyota32k/media/lib/converter/IAwaiter;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->awaiter:Lio/github/toyota32k/media/lib/converter/IAwaiter;

    .line 70
    invoke-direct {p0}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->await()V

    return-void
.end method
