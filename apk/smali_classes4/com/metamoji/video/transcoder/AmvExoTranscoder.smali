.class public final Lcom/metamoji/video/transcoder/AmvExoTranscoder;
.super Ljava/lang/Object;
.source "AmvExoTranscoder.kt"

# interfaces
.implements Lcom/metamoji/video/transcoder/IAmvTranscoder;
.implements Landroidx/media3/transformer/Transformer$Listener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\u001f\u001a\u00020\u0012H\u0002J\u0010\u0010 \u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u0004H\u0016J \u0010\"\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u00042\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$H\u0016J\u0008\u0010&\u001a\u00020\u0012H\u0016J\u0008\u0010\'\u001a\u00020\u0012H\u0016J\u0018\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0016J \u0010-\u001a\u00020\u00122\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010.\u001a\u00020/H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR&\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u0010X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R&\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00120\u0010X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u0019X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lcom/metamoji/video/transcoder/AmvExoTranscoder;",
        "Lcom/metamoji/video/transcoder/IAmvTranscoder;",
        "Landroidx/media3/transformer/Transformer$Listener;",
        "sourceFile",
        "Ljava/io/File;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Ljava/io/File;Landroid/content/Context;)V",
        "getSourceFile",
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
        "mDstFile",
        "transformer",
        "Landroidx/media3/transformer/Transformer;",
        "progressWatch",
        "transcode",
        "distFile",
        "truncate",
        "start",
        "",
        "end",
        "cancel",
        "dispose",
        "onCompleted",
        "inputMediaItem",
        "Landroidx/media3/transformer/Composition;",
        "transformationResult",
        "Landroidx/media3/transformer/ExportResult;",
        "onError",
        "exception",
        "Landroidx/media3/transformer/ExportException;",
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

.field private mDstFile:Ljava/io/File;

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

.field private final sourceFile:Ljava/io/File;

.field private final transformer:Landroidx/media3/transformer/Transformer;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/content/Context;)V
    .locals 1

    const-string v0, "sourceFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->sourceFile:Ljava/io/File;

    .line 23
    sget-object p1, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvSettings;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

    .line 25
    new-instance p1, Lcom/metamoji/lib/utils/FuncyListener2;

    invoke-direct {p1}, Lcom/metamoji/lib/utils/FuncyListener2;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->completionListener:Lcom/metamoji/lib/utils/FuncyListener2;

    .line 26
    new-instance p1, Lcom/metamoji/lib/utils/FuncyListener2;

    invoke-direct {p1}, Lcom/metamoji/lib/utils/FuncyListener2;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->progressListener:Lcom/metamoji/lib/utils/FuncyListener2;

    .line 27
    new-instance p1, Lcom/metamoji/video/AmvError;

    invoke-direct {p1}, Lcom/metamoji/video/AmvError;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->error:Lcom/metamoji/video/AmvError;

    .line 31
    new-instance p1, Landroidx/media3/transformer/Transformer$Builder;

    invoke-direct {p1, p2}, Landroidx/media3/transformer/Transformer$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    move-object p2, p0

    check-cast p2, Landroidx/media3/transformer/Transformer$Listener;

    invoke-virtual {p1, p2}, Landroidx/media3/transformer/Transformer$Builder;->addListener(Landroidx/media3/transformer/Transformer$Listener;)Landroidx/media3/transformer/Transformer$Builder;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroidx/media3/transformer/Transformer$Builder;->build()Landroidx/media3/transformer/Transformer;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->transformer:Landroidx/media3/transformer/Transformer;

    return-void
.end method

.method public static final synthetic access$getTransformer$p(Lcom/metamoji/video/transcoder/AmvExoTranscoder;)Landroidx/media3/transformer/Transformer;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->transformer:Landroidx/media3/transformer/Transformer;

    return-object p0
.end method

.method private final progressWatch()V
    .locals 7

    .line 37
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/video/transcoder/AmvExoTranscoder$progressWatch$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/metamoji/video/transcoder/AmvExoTranscoder$progressWatch$1;-><init>(Lcom/metamoji/video/transcoder/AmvExoTranscoder;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->transformer:Landroidx/media3/transformer/Transformer;

    invoke-virtual {v0}, Landroidx/media3/transformer/Transformer;->cancel()V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->getError()Lcom/metamoji/video/AmvError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvError;->getHasError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->mDstFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->mDstFile:Ljava/io/File;

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->getCompletionListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/FuncyListener2;->reset()V

    .line 87
    invoke-virtual {p0}, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->getProgressListener()Lcom/metamoji/lib/utils/FuncyListener2;

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

    .line 25
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->completionListener:Lcom/metamoji/lib/utils/FuncyListener2;

    return-object v0
.end method

.method public getError()Lcom/metamoji/video/AmvError;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->error:Lcom/metamoji/video/AmvError;

    return-object v0
.end method

.method public final getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

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

    .line 26
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->progressListener:Lcom/metamoji/lib/utils/FuncyListener2;

    return-object v0
.end method

.method public final getSourceFile()Ljava/io/File;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->sourceFile:Ljava/io/File;

    return-object v0
.end method

.method public onCompleted(Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/ExportResult;)V
    .locals 1

    const-string v0, "inputMediaItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "transformationResult"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->getCompletionListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/metamoji/lib/utils/FuncyListener2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onError(Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/ExportResult;Landroidx/media3/transformer/ExportException;)V
    .locals 1

    const-string v0, "inputMediaItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "transformationResult"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "exception"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

    check-cast p3, Ljava/lang/Throwable;

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-static {p1, p3, p2, v0, p2}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->getError()Lcom/metamoji/video/AmvError;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/metamoji/video/AmvError;->setError(Ljava/lang/Throwable;)V

    .line 97
    invoke-virtual {p0}, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->getCompletionListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/metamoji/lib/utils/FuncyListener2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public transcode(Ljava/io/File;)V
    .locals 4

    const-string v0, "distFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

    iget-object v1, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->sourceFile:Ljava/io/File;

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

    .line 48
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

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

    .line 49
    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->mDstFile:Ljava/io/File;

    .line 50
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->transformer:Landroidx/media3/transformer/Transformer;

    new-instance v1, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    iget-object v2, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->sourceFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/media3/transformer/Transformer;->start(Landroidx/media3/common/MediaItem;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->progressWatch()V

    return-void
.end method

.method public truncate(Ljava/io/File;JJ)V
    .locals 4

    const-string v0, "distFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

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

    .line 56
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

    iget-object v1, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->sourceFile:Ljava/io/File;

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

    .line 57
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

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

    .line 58
    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->mDstFile:Ljava/io/File;

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_1

    cmp-long v3, p4, v0

    if-lez v3, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    sget-object p2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    new-instance v3, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v3}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;-><init>()V

    if-ltz v2, :cond_2

    .line 62
    invoke-virtual {v3, p2, p3}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->setStartPositionMs(J)Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    :cond_2
    cmp-long p2, p4, v0

    if-lez p2, :cond_3

    .line 65
    invoke-virtual {v3, p4, p5}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->setEndPositionMs(J)Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    .line 67
    :cond_3
    invoke-virtual {v3}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$ClippingConfiguration;

    move-result-object p2

    .line 64
    :goto_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 69
    iget-object p3, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->transformer:Landroidx/media3/transformer/Transformer;

    new-instance p4, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {p4}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    iget-object p5, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->sourceFile:Ljava/io/File;

    invoke-static {p5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroidx/media3/common/MediaItem$Builder;->setClippingConfiguration(Landroidx/media3/common/MediaItem$ClippingConfiguration;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroidx/media3/transformer/Transformer;->start(Landroidx/media3/common/MediaItem;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->progressWatch()V

    return-void
.end method
