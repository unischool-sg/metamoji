.class public final Lio/github/toyota32k/media/lib/format/DefaultAudioStrategy;
.super Ljava/lang/Object;
.source "DefaultAudioStrategy.kt"

# interfaces
.implements Lio/github/toyota32k/media/lib/format/IAudioStrategy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\n\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000c\u001a\u00020\u0001J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/format/DefaultAudioStrategy;",
        "Lio/github/toyota32k/media/lib/format/IAudioStrategy;",
        "()V",
        "DEFAULT_BITRATE",
        "",
        "DEFAULT_SAMPLE_RATE",
        "defaultFormat",
        "Landroid/media/MediaFormat;",
        "getDefaultFormat",
        "()Landroid/media/MediaFormat;",
        "createAudioFormat",
        "inputFormat",
        "strategy",
        "createOutputFormat",
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
.field public static final DEFAULT_BITRATE:I = 0x17700

.field public static final DEFAULT_SAMPLE_RATE:I = 0x30

.field public static final INSTANCE:Lio/github/toyota32k/media/lib/format/DefaultAudioStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/toyota32k/media/lib/format/DefaultAudioStrategy;

    invoke-direct {v0}, Lio/github/toyota32k/media/lib/format/DefaultAudioStrategy;-><init>()V

    sput-object v0, Lio/github/toyota32k/media/lib/format/DefaultAudioStrategy;->INSTANCE:Lio/github/toyota32k/media/lib/format/DefaultAudioStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createAudioFormat(Landroid/media/MediaFormat;Lio/github/toyota32k/media/lib/format/IAudioStrategy;)Landroid/media/MediaFormat;
    .locals 1

    const-string v0, "strategy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 29
    invoke-interface {p2, p1}, Lio/github/toyota32k/media/lib/format/IAudioStrategy;->createOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/format/DefaultAudioStrategy;->getDefaultFormat()Landroid/media/MediaFormat;

    move-result-object p1

    return-object p1
.end method

.method public createOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 4

    const-string v0, "inputFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const-string v0, "sample-rate"

    const/16 v1, 0x30

    invoke-static {p1, v0, v1}, Lio/github/toyota32k/media/lib/format/IStrategyKt;->getInt(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v0

    .line 20
    const-string v1, "channel-count"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lio/github/toyota32k/media/lib/format/IStrategyKt;->getInt(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    const v2, 0x17700

    .line 21
    const-string v3, "bitrate"

    invoke-static {p1, v3, v2}, Lio/github/toyota32k/media/lib/format/IStrategyKt;->getInt(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result p1

    .line 22
    const-string v2, "audio/mp4a-latm"

    invoke-static {v2, v0, v1}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "createAudioFormat(MediaC\u2026AC, sampleRate, channels)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    const-string v1, "aac-profile"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 24
    invoke-virtual {v0, v3, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final getDefaultFormat()Landroid/media/MediaFormat;
    .locals 3

    const/16 v0, 0x30

    const/4 v1, 0x1

    .line 12
    const-string v2, "audio/mp4a-latm"

    invoke-static {v2, v0, v1}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "createAudioFormat(MediaC\u2026, DEFAULT_SAMPLE_RATE, 1)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    const-string v1, "aac-profile"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 14
    const-string v1, "bitrate"

    const v2, 0x17700

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object v0
.end method
