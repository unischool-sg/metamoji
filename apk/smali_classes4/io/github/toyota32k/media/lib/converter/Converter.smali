.class public final Lio/github/toyota32k/media/lib/converter/Converter;
.super Ljava/lang/Object;
.source "Converter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/media/lib/converter/Converter$Companion;,
        Lio/github/toyota32k/media/lib/converter/Converter$Factory;,
        Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;,
        Lio/github/toyota32k/media/lib/converter/Converter$Progress;,
        Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 42\u00020\u0001:\u000534567B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0011\u0010,\u001a\u00020-H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010.J\u0018\u0010/\u001a\u0008\u0012\u0004\u0012\u00020-002\n\u0008\u0002\u00101\u001a\u0004\u0018\u000102R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R(\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u0010X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0012\"\u0004\u0008\u001f\u0010\u0014R\u001a\u0010 \u001a\u00020!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001a\u0010&\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00068"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/converter/Converter;",
        "",
        "()V",
        "audioStrategy",
        "Lio/github/toyota32k/media/lib/format/IAudioStrategy;",
        "getAudioStrategy",
        "()Lio/github/toyota32k/media/lib/format/IAudioStrategy;",
        "setAudioStrategy",
        "(Lio/github/toyota32k/media/lib/format/IAudioStrategy;)V",
        "deleteOutputOnError",
        "",
        "getDeleteOutputOnError",
        "()Z",
        "setDeleteOutputOnError",
        "(Z)V",
        "inPath",
        "Lio/github/toyota32k/media/lib/converter/AndroidFile;",
        "getInPath",
        "()Lio/github/toyota32k/media/lib/converter/AndroidFile;",
        "setInPath",
        "(Lio/github/toyota32k/media/lib/converter/AndroidFile;)V",
        "onProgress",
        "Lkotlin/Function1;",
        "Lio/github/toyota32k/media/lib/converter/IProgress;",
        "",
        "getOnProgress",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnProgress",
        "(Lkotlin/jvm/functions/Function1;)V",
        "outPath",
        "getOutPath",
        "setOutPath",
        "trimmingRange",
        "Lio/github/toyota32k/media/lib/converter/TrimmingRange;",
        "getTrimmingRange",
        "()Lio/github/toyota32k/media/lib/converter/TrimmingRange;",
        "setTrimmingRange",
        "(Lio/github/toyota32k/media/lib/converter/TrimmingRange;)V",
        "videoStrategy",
        "Lio/github/toyota32k/media/lib/format/IVideoStrategy;",
        "getVideoStrategy",
        "()Lio/github/toyota32k/media/lib/format/IVideoStrategy;",
        "setVideoStrategy",
        "(Lio/github/toyota32k/media/lib/format/IVideoStrategy;)V",
        "execute",
        "Lio/github/toyota32k/media/lib/converter/ConvertResult;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "executeAsync",
        "Lio/github/toyota32k/media/lib/converter/IAwaiter;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Awaiter",
        "Companion",
        "Factory",
        "Progress",
        "TrackMediator",
        "libMedia_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lio/github/toyota32k/media/lib/converter/Converter$Companion;

.field private static final LimitOfPatience:J = 0x3a98L

.field private static final MaxNoEffectedCount:I = 0x14

.field private static final MaxRetryCount:I = 0x3e8

.field private static final logger:Lio/github/toyota32k/media/lib/utils/UtLog;


# instance fields
.field private audioStrategy:Lio/github/toyota32k/media/lib/format/IAudioStrategy;

.field private deleteOutputOnError:Z

.field public inPath:Lio/github/toyota32k/media/lib/converter/AndroidFile;

.field private onProgress:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/github/toyota32k/media/lib/converter/IProgress;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public outPath:Lio/github/toyota32k/media/lib/converter/AndroidFile;

.field private trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

.field private videoStrategy:Lio/github/toyota32k/media/lib/format/IVideoStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lio/github/toyota32k/media/lib/converter/Converter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/toyota32k/media/lib/converter/Converter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/toyota32k/media/lib/converter/Converter;->Companion:Lio/github/toyota32k/media/lib/converter/Converter$Companion;

    .line 26
    new-instance v2, Lio/github/toyota32k/media/lib/utils/UtLog;

    const/16 v8, 0x18

    const/4 v9, 0x0

    const-string v3, "AMP"

    const/4 v4, 0x0

    const-string v5, "io.github.toyota32k.media.lib."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lio/github/toyota32k/media/lib/utils/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/media/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lio/github/toyota32k/media/lib/converter/Converter;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lio/github/toyota32k/media/lib/format/HD720VideoStrategy;->INSTANCE:Lio/github/toyota32k/media/lib/format/HD720VideoStrategy;

    check-cast v0, Lio/github/toyota32k/media/lib/format/IVideoStrategy;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter;->videoStrategy:Lio/github/toyota32k/media/lib/format/IVideoStrategy;

    .line 40
    sget-object v0, Lio/github/toyota32k/media/lib/format/DefaultAudioStrategy;->INSTANCE:Lio/github/toyota32k/media/lib/format/DefaultAudioStrategy;

    check-cast v0, Lio/github/toyota32k/media/lib/format/IAudioStrategy;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter;->audioStrategy:Lio/github/toyota32k/media/lib/format/IAudioStrategy;

    .line 41
    sget-object v0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->Companion:Lio/github/toyota32k/media/lib/converter/TrimmingRange$Companion;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/converter/TrimmingRange$Companion;->getEmpty()Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    move-result-object v0

    iput-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter;->trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lio/github/toyota32k/media/lib/converter/Converter;->deleteOutputOnError:Z

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lio/github/toyota32k/media/lib/utils/UtLog;
    .locals 1

    .line 24
    sget-object v0, Lio/github/toyota32k/media/lib/converter/Converter;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    return-object v0
.end method

.method public static synthetic executeAsync$default(Lio/github/toyota32k/media/lib/converter/Converter;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lio/github/toyota32k/media/lib/converter/IAwaiter;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 272
    :cond_0
    invoke-virtual {p0, p1}, Lio/github/toyota32k/media/lib/converter/Converter;->executeAsync(Lkotlinx/coroutines/CoroutineScope;)Lio/github/toyota32k/media/lib/converter/IAwaiter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/github/toyota32k/media/lib/converter/ConvertResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 416
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/github/toyota32k/media/lib/converter/Converter$execute$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/github/toyota32k/media/lib/converter/Converter$execute$2;-><init>(Lio/github/toyota32k/media/lib/converter/Converter;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final executeAsync(Lkotlinx/coroutines/CoroutineScope;)Lio/github/toyota32k/media/lib/converter/IAwaiter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Lio/github/toyota32k/media/lib/converter/IAwaiter<",
            "Lio/github/toyota32k/media/lib/converter/ConvertResult;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 273
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    :cond_0
    move-object v0, p1

    .line 274
    new-instance p1, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;

    new-instance v1, Lio/github/toyota32k/media/lib/converter/Converter$executeAsync$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/github/toyota32k/media/lib/converter/Converter$executeAsync$1;-><init>(Lio/github/toyota32k/media/lib/converter/Converter;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/github/toyota32k/media/lib/converter/Converter$Awaiter;-><init>(Lkotlinx/coroutines/Deferred;)V

    check-cast p1, Lio/github/toyota32k/media/lib/converter/IAwaiter;

    return-object p1
.end method

.method public final getAudioStrategy()Lio/github/toyota32k/media/lib/format/IAudioStrategy;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter;->audioStrategy:Lio/github/toyota32k/media/lib/format/IAudioStrategy;

    return-object v0
.end method

.method public final getDeleteOutputOnError()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/converter/Converter;->deleteOutputOnError:Z

    return v0
.end method

.method public final getInPath()Lio/github/toyota32k/media/lib/converter/AndroidFile;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter;->inPath:Lio/github/toyota32k/media/lib/converter/AndroidFile;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "inPath"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOnProgress()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lio/github/toyota32k/media/lib/converter/IProgress;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter;->onProgress:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOutPath()Lio/github/toyota32k/media/lib/converter/AndroidFile;
    .locals 1

    .line 37
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter;->outPath:Lio/github/toyota32k/media/lib/converter/AndroidFile;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "outPath"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTrimmingRange()Lio/github/toyota32k/media/lib/converter/TrimmingRange;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter;->trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    return-object v0
.end method

.method public final getVideoStrategy()Lio/github/toyota32k/media/lib/format/IVideoStrategy;
    .locals 1

    .line 39
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter;->videoStrategy:Lio/github/toyota32k/media/lib/format/IVideoStrategy;

    return-object v0
.end method

.method public final setAudioStrategy(Lio/github/toyota32k/media/lib/format/IAudioStrategy;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lio/github/toyota32k/media/lib/converter/Converter;->audioStrategy:Lio/github/toyota32k/media/lib/format/IAudioStrategy;

    return-void
.end method

.method public final setDeleteOutputOnError(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lio/github/toyota32k/media/lib/converter/Converter;->deleteOutputOnError:Z

    return-void
.end method

.method public final setInPath(Lio/github/toyota32k/media/lib/converter/AndroidFile;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lio/github/toyota32k/media/lib/converter/Converter;->inPath:Lio/github/toyota32k/media/lib/converter/AndroidFile;

    return-void
.end method

.method public final setOnProgress(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/github/toyota32k/media/lib/converter/IProgress;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lio/github/toyota32k/media/lib/converter/Converter;->onProgress:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOutPath(Lio/github/toyota32k/media/lib/converter/AndroidFile;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lio/github/toyota32k/media/lib/converter/Converter;->outPath:Lio/github/toyota32k/media/lib/converter/AndroidFile;

    return-void
.end method

.method public final setTrimmingRange(Lio/github/toyota32k/media/lib/converter/TrimmingRange;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lio/github/toyota32k/media/lib/converter/Converter;->trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    return-void
.end method

.method public final setVideoStrategy(Lio/github/toyota32k/media/lib/format/IVideoStrategy;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lio/github/toyota32k/media/lib/converter/Converter;->videoStrategy:Lio/github/toyota32k/media/lib/format/IVideoStrategy;

    return-void
.end method
