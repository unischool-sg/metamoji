.class public final Lio/github/toyota32k/media/lib/converter/Converter$Factory;
.super Ljava/lang/Object;
.source "Converter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/media/lib/converter/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/media/lib/converter/Converter$Factory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 +2\u00020\u0001:\u0001+B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u0004J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u0011\u0010\u000f\u001a\u00020\u0010H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011J\u0018\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0016\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001eJ\u0016\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u001cJ\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001eJ\u001a\u0010!\u001a\u00020\u00002\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%0#J\u000e\u0010&\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020\u0006J\u000e\u0010(\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020\u0006J\u000e\u0010)\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020*R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006,"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/converter/Converter$Factory;",
        "",
        "()V",
        "converter",
        "Lio/github/toyota32k/media/lib/converter/Converter;",
        "trimEnd",
        "",
        "trimStart",
        "audioStrategy",
        "s",
        "Lio/github/toyota32k/media/lib/format/IAudioStrategy;",
        "build",
        "deleteOutputOnError",
        "flag",
        "",
        "execute",
        "Lio/github/toyota32k/media/lib/converter/ConvertResult;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "executeAsync",
        "Lio/github/toyota32k/media/lib/converter/IAwaiter;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "input",
        "uri",
        "Landroid/net/Uri;",
        "context",
        "Landroid/content/Context;",
        "src",
        "Lio/github/toyota32k/media/lib/converter/AndroidFile;",
        "path",
        "Ljava/io/File;",
        "output",
        "dst",
        "setProgressHandler",
        "proc",
        "Lkotlin/Function1;",
        "Lio/github/toyota32k/media/lib/converter/IProgress;",
        "",
        "trimmingEndTo",
        "timeMs",
        "trimmingStartFrom",
        "videoStrategy",
        "Lio/github/toyota32k/media/lib/format/IVideoStrategy;",
        "Companion",
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
.field public static final Companion:Lio/github/toyota32k/media/lib/converter/Converter$Factory$Companion;

.field private static final logger:Lio/github/toyota32k/media/lib/utils/UtLog;


# instance fields
.field private final converter:Lio/github/toyota32k/media/lib/converter/Converter;

.field private trimEnd:J

.field private trimStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lio/github/toyota32k/media/lib/converter/Converter$Factory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/toyota32k/media/lib/converter/Converter$Factory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->Companion:Lio/github/toyota32k/media/lib/converter/Converter$Factory$Companion;

    .line 51
    new-instance v2, Lio/github/toyota32k/media/lib/utils/UtLog;

    sget-object v0, Lio/github/toyota32k/media/lib/converter/Converter;->Companion:Lio/github/toyota32k/media/lib/converter/Converter$Companion;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/converter/Converter$Companion;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v4

    const/16 v8, 0x1c

    const/4 v9, 0x0

    const-string v3, "Factory"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lio/github/toyota32k/media/lib/utils/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/media/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lio/github/toyota32k/media/lib/converter/Converter;

    invoke-direct {v0}, Lio/github/toyota32k/media/lib/converter/Converter;-><init>()V

    iput-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->converter:Lio/github/toyota32k/media/lib/converter/Converter;

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lio/github/toyota32k/media/lib/utils/UtLog;
    .locals 1

    .line 48
    sget-object v0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    return-object v0
.end method

.method public static synthetic executeAsync$default(Lio/github/toyota32k/media/lib/converter/Converter$Factory;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lio/github/toyota32k/media/lib/converter/IAwaiter;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 147
    :cond_0
    invoke-virtual {p0, p1}, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->executeAsync(Lkotlinx/coroutines/CoroutineScope;)Lio/github/toyota32k/media/lib/converter/IAwaiter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final audioStrategy(Lio/github/toyota32k/media/lib/format/IAudioStrategy;)Lio/github/toyota32k/media/lib/converter/Converter$Factory;
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->converter:Lio/github/toyota32k/media/lib/converter/Converter;

    invoke-virtual {v0, p1}, Lio/github/toyota32k/media/lib/converter/Converter;->setAudioStrategy(Lio/github/toyota32k/media/lib/format/IAudioStrategy;)V

    return-object p0
.end method

.method public final build()Lio/github/toyota32k/media/lib/converter/Converter;
    .locals 8

    .line 121
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->converter:Lio/github/toyota32k/media/lib/converter/Converter;

    iget-object v0, v0, Lio/github/toyota32k/media/lib/converter/Converter;->inPath:Lio/github/toyota32k/media/lib/converter/AndroidFile;

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->converter:Lio/github/toyota32k/media/lib/converter/Converter;

    iget-object v0, v0, Lio/github/toyota32k/media/lib/converter/Converter;->outPath:Lio/github/toyota32k/media/lib/converter/AndroidFile;

    if-eqz v0, :cond_3

    .line 124
    sget-object v0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    const-string v1, "### media converter information ###"

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/utils/UtLog;->info(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->converter:Lio/github/toyota32k/media/lib/converter/Converter;

    invoke-virtual {v1}, Lio/github/toyota32k/media/lib/converter/Converter;->getInPath()Lio/github/toyota32k/media/lib/converter/AndroidFile;

    move-result-object v1

    const-string v2, "input : "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/utils/UtLog;->info(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->converter:Lio/github/toyota32k/media/lib/converter/Converter;

    invoke-virtual {v1}, Lio/github/toyota32k/media/lib/converter/Converter;->getOutPath()Lio/github/toyota32k/media/lib/converter/AndroidFile;

    move-result-object v1

    const-string v2, "output: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/utils/UtLog;->info(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->converter:Lio/github/toyota32k/media/lib/converter/Converter;

    invoke-virtual {v1}, Lio/github/toyota32k/media/lib/converter/Converter;->getVideoStrategy()Lio/github/toyota32k/media/lib/format/IVideoStrategy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video strategy: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/utils/UtLog;->info(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->converter:Lio/github/toyota32k/media/lib/converter/Converter;

    invoke-virtual {v1}, Lio/github/toyota32k/media/lib/converter/Converter;->getAudioStrategy()Lio/github/toyota32k/media/lib/format/IAudioStrategy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio strategy: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/utils/UtLog;->info(Ljava/lang/String;)V

    .line 130
    iget-wide v1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->trimStart:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    iget-wide v1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->trimEnd:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 131
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trimming start: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->trimStart:J

    const/16 v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/utils/UtLog;->info(Ljava/lang/String;)V

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "trimming end  : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->trimEnd:J

    div-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/utils/UtLog;->info(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->converter:Lio/github/toyota32k/media/lib/converter/Converter;

    new-instance v2, Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    iget-wide v3, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->trimStart:J

    iget-wide v5, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->trimEnd:J

    invoke-direct {v2, v3, v4, v5, v6}, Lio/github/toyota32k/media/lib/converter/TrimmingRange;-><init>(JJ)V

    invoke-virtual {v1, v2}, Lio/github/toyota32k/media/lib/converter/Converter;->setTrimmingRange(Lio/github/toyota32k/media/lib/converter/TrimmingRange;)V

    .line 136
    :cond_1
    iget-object v1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->converter:Lio/github/toyota32k/media/lib/converter/Converter;

    invoke-virtual {v1}, Lio/github/toyota32k/media/lib/converter/Converter;->getDeleteOutputOnError()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "delete output on error = "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/utils/UtLog;->info(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->converter:Lio/github/toyota32k/media/lib/converter/Converter;

    invoke-virtual {v1}, Lio/github/toyota32k/media/lib/converter/Converter;->getOnProgress()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-nez v1, :cond_2

    .line 138
    const-string v1, "no progress handler"

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/utils/UtLog;->info(Ljava/lang/String;)V

    .line 140
    :cond_2
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->converter:Lio/github/toyota32k/media/lib/converter/Converter;

    return-object v0

    .line 122
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "output file is not specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "input file is not specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final deleteOutputOnError(Z)Lio/github/toyota32k/media/lib/converter/Converter$Factory;
    .locals 1

    .line 116
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->converter:Lio/github/toyota32k/media/lib/converter/Converter;

    invoke-virtual {v0, p1}, Lio/github/toyota32k/media/lib/converter/Converter;->setDeleteOutputOnError(Z)V

    return-object p0
.end method

.method public final execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    .line 144
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->build()Lio/github/toyota32k/media/lib/converter/Converter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/github/toyota32k/media/lib/converter/Converter;->execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final executeAsync(Lkotlinx/coroutines/CoroutineScope;)Lio/github/toyota32k/media/lib/converter/IAwaiter;
    .locals 1
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

    .line 148
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->build()Lio/github/toyota32k/media/lib/converter/Converter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/github/toyota32k/media/lib/converter/Converter;->executeAsync(Lkotlinx/coroutines/CoroutineScope;)Lio/github/toyota32k/media/lib/converter/IAwaiter;

    move-result-object p1

    return-object p1
.end method

.method public final input(Landroid/net/Uri;Landroid/content/Context;)Lio/github/toyota32k/media/lib/converter/Converter$Factory;
    .locals 2

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->converter:Lio/github/toyota32k/media/lib/converter/Converter;

    new-instance v1, Lio/github/toyota32k/media/lib/converter/AndroidFile;

    invoke-direct {v1, p1, p2}, Lio/github/toyota32k/media/lib/converter/AndroidFile;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/converter/Converter;->setInPath(Lio/github/toyota32k/media/lib/converter/AndroidFile;)V

    return-object p0
.end method

.method public final input(Lio/github/toyota32k/media/lib/converter/AndroidFile;)Lio/github/toyota32k/media/lib/converter/Converter$Factory;
    .locals 1

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->converter:Lio/github/toyota32k/media/lib/converter/Converter;

    invoke-virtual {v0, p1}, Lio/github/toyota32k/media/lib/converter/Converter;->setInPath(Lio/github/toyota32k/media/lib/converter/AndroidFile;)V

    return-object p0
.end method

.method public final input(Ljava/io/File;)Lio/github/toyota32k/media/lib/converter/Converter$Factory;
    .locals 2

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->converter:Lio/github/toyota32k/media/lib/converter/Converter;

    new-instance v1, Lio/github/toyota32k/media/lib/converter/AndroidFile;

    invoke-direct {v1, p1}, Lio/github/toyota32k/media/lib/converter/AndroidFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/converter/Converter;->setInPath(Lio/github/toyota32k/media/lib/converter/AndroidFile;)V

    return-object p0
.end method

.method public final output(Landroid/net/Uri;Landroid/content/Context;)Lio/github/toyota32k/media/lib/converter/Converter$Factory;
    .locals 2

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->converter:Lio/github/toyota32k/media/lib/converter/Converter;

    new-instance v1, Lio/github/toyota32k/media/lib/converter/AndroidFile;

    invoke-direct {v1, p1, p2}, Lio/github/toyota32k/media/lib/converter/AndroidFile;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/converter/Converter;->setOutPath(Lio/github/toyota32k/media/lib/converter/AndroidFile;)V

    return-object p0
.end method

.method public final output(Lio/github/toyota32k/media/lib/converter/AndroidFile;)Lio/github/toyota32k/media/lib/converter/Converter$Factory;
    .locals 1

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->converter:Lio/github/toyota32k/media/lib/converter/Converter;

    invoke-virtual {v0, p1}, Lio/github/toyota32k/media/lib/converter/Converter;->setOutPath(Lio/github/toyota32k/media/lib/converter/AndroidFile;)V

    return-object p0
.end method

.method public final output(Ljava/io/File;)Lio/github/toyota32k/media/lib/converter/Converter$Factory;
    .locals 2

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->converter:Lio/github/toyota32k/media/lib/converter/Converter;

    new-instance v1, Lio/github/toyota32k/media/lib/converter/AndroidFile;

    invoke-direct {v1, p1}, Lio/github/toyota32k/media/lib/converter/AndroidFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/converter/Converter;->setOutPath(Lio/github/toyota32k/media/lib/converter/AndroidFile;)V

    return-object p0
.end method

.method public final setProgressHandler(Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/media/lib/converter/Converter$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/github/toyota32k/media/lib/converter/IProgress;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/github/toyota32k/media/lib/converter/Converter$Factory;"
        }
    .end annotation

    const-string v0, "proc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->converter:Lio/github/toyota32k/media/lib/converter/Converter;

    invoke-virtual {v0, p1}, Lio/github/toyota32k/media/lib/converter/Converter;->setOnProgress(Lkotlin/jvm/functions/Function1;)V

    return-object p0
.end method

.method public final trimmingEndTo(J)Lio/github/toyota32k/media/lib/converter/Converter$Factory;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 105
    iput-wide p1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->trimEnd:J

    :cond_0
    return-object p0
.end method

.method public final trimmingStartFrom(J)Lio/github/toyota32k/media/lib/converter/Converter$Factory;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 98
    iput-wide p1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->trimStart:J

    :cond_0
    return-object p0
.end method

.method public final videoStrategy(Lio/github/toyota32k/media/lib/format/IVideoStrategy;)Lio/github/toyota32k/media/lib/converter/Converter$Factory;
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Factory;->converter:Lio/github/toyota32k/media/lib/converter/Converter;

    invoke-virtual {v0, p1}, Lio/github/toyota32k/media/lib/converter/Converter;->setVideoStrategy(Lio/github/toyota32k/media/lib/format/IVideoStrategy;)V

    return-object p0
.end method
