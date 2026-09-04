.class public abstract Lio/github/toyota32k/media/lib/track/Track;
.super Ljava/lang/Object;
.source "Track.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/media/lib/track/Track$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000 62\u00020\u0001:\u00016B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010/\u001a\u000200H\u0016J\u0018\u00101\u001a\u00020\u00152\u0006\u00102\u001a\u0002032\u0008\u00104\u001a\u0004\u0018\u000105R\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0012\u0010\u0010\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\u0017X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010!\u001a\u00020\"\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010 R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R$\u0010*\u001a\u00020)2\u0006\u0010(\u001a\u00020)8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.\u00a8\u00067"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/track/Track;",
        "Ljava/io/Closeable;",
        "extractor",
        "Lio/github/toyota32k/media/lib/extractor/Extractor;",
        "inputFormat",
        "Landroid/media/MediaFormat;",
        "outputFormat",
        "trackIdx",
        "",
        "type",
        "Lio/github/toyota32k/media/lib/track/Muxer$SampleType;",
        "(Lio/github/toyota32k/media/lib/extractor/Extractor;Landroid/media/MediaFormat;Landroid/media/MediaFormat;ILio/github/toyota32k/media/lib/track/Muxer$SampleType;)V",
        "convertedLength",
        "",
        "getConvertedLength",
        "()J",
        "decoder",
        "Lio/github/toyota32k/media/lib/codec/BaseDecoder;",
        "getDecoder",
        "()Lio/github/toyota32k/media/lib/codec/BaseDecoder;",
        "disposed",
        "",
        "encoder",
        "Lio/github/toyota32k/media/lib/codec/BaseEncoder;",
        "getEncoder",
        "()Lio/github/toyota32k/media/lib/codec/BaseEncoder;",
        "eos",
        "getEos",
        "()Z",
        "getExtractor",
        "()Lio/github/toyota32k/media/lib/extractor/Extractor;",
        "getInputFormat",
        "()Landroid/media/MediaFormat;",
        "logger",
        "Lio/github/toyota32k/media/lib/utils/UtLog;",
        "getLogger",
        "()Lio/github/toyota32k/media/lib/utils/UtLog;",
        "getOutputFormat",
        "getTrackIdx",
        "()I",
        "v",
        "Lio/github/toyota32k/media/lib/converter/TrimmingRange;",
        "trimmingRange",
        "getTrimmingRange",
        "()Lio/github/toyota32k/media/lib/converter/TrimmingRange;",
        "setTrimmingRange",
        "(Lio/github/toyota32k/media/lib/converter/TrimmingRange;)V",
        "close",
        "",
        "next",
        "muxer",
        "Lio/github/toyota32k/media/lib/track/Muxer;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
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
.field public static final Companion:Lio/github/toyota32k/media/lib/track/Track$Companion;


# instance fields
.field private disposed:Z

.field private final extractor:Lio/github/toyota32k/media/lib/extractor/Extractor;

.field private final inputFormat:Landroid/media/MediaFormat;

.field private final logger:Lio/github/toyota32k/media/lib/utils/UtLog;

.field private final outputFormat:Landroid/media/MediaFormat;

.field private final trackIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/toyota32k/media/lib/track/Track$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/toyota32k/media/lib/track/Track$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/toyota32k/media/lib/track/Track;->Companion:Lio/github/toyota32k/media/lib/track/Track$Companion;

    return-void
.end method

.method public constructor <init>(Lio/github/toyota32k/media/lib/extractor/Extractor;Landroid/media/MediaFormat;Landroid/media/MediaFormat;ILio/github/toyota32k/media/lib/track/Muxer$SampleType;)V
    .locals 9

    const-string v0, "extractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputFormat"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/media/lib/track/Track;->extractor:Lio/github/toyota32k/media/lib/extractor/Extractor;

    iput-object p2, p0, Lio/github/toyota32k/media/lib/track/Track;->inputFormat:Landroid/media/MediaFormat;

    iput-object p3, p0, Lio/github/toyota32k/media/lib/track/Track;->outputFormat:Landroid/media/MediaFormat;

    iput p4, p0, Lio/github/toyota32k/media/lib/track/Track;->trackIdx:I

    .line 18
    invoke-virtual {p1, p4, p5}, Lio/github/toyota32k/media/lib/extractor/Extractor;->selectTrack(ILio/github/toyota32k/media/lib/track/Muxer$SampleType;)V

    .line 19
    new-instance v1, Lio/github/toyota32k/media/lib/utils/UtLog;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Track("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object p1, Lio/github/toyota32k/media/lib/converter/Converter;->Companion:Lio/github/toyota32k/media/lib/converter/Converter$Companion;

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/converter/Converter$Companion;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v3

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lio/github/toyota32k/media/lib/utils/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/media/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lio/github/toyota32k/media/lib/track/Track;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 72
    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/track/Track;->disposed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lio/github/toyota32k/media/lib/track/Track;->disposed:Z

    .line 74
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/track/Track;->getEncoder()Lio/github/toyota32k/media/lib/codec/BaseEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->close()V

    .line 75
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/track/Track;->getDecoder()Lio/github/toyota32k/media/lib/codec/BaseDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->close()V

    .line 76
    iget-object v0, p0, Lio/github/toyota32k/media/lib/track/Track;->extractor:Lio/github/toyota32k/media/lib/extractor/Extractor;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/extractor/Extractor;->close()V

    :cond_0
    return-void
.end method

.method public final getConvertedLength()J
    .locals 2

    .line 50
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/track/Track;->getEncoder()Lio/github/toyota32k/media/lib/codec/BaseEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getWrittenPresentationTimeUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getDecoder()Lio/github/toyota32k/media/lib/codec/BaseDecoder;
.end method

.method public abstract getEncoder()Lio/github/toyota32k/media/lib/codec/BaseEncoder;
.end method

.method public final getEos()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lio/github/toyota32k/media/lib/track/Track;->extractor:Lio/github/toyota32k/media/lib/extractor/Extractor;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/extractor/Extractor;->getEos()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/track/Track;->getDecoder()Lio/github/toyota32k/media/lib/codec/BaseDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->getEos()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/track/Track;->getEncoder()Lio/github/toyota32k/media/lib/codec/BaseEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getEos()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getExtractor()Lio/github/toyota32k/media/lib/extractor/Extractor;
    .locals 1

    .line 15
    iget-object v0, p0, Lio/github/toyota32k/media/lib/track/Track;->extractor:Lio/github/toyota32k/media/lib/extractor/Extractor;

    return-object v0
.end method

.method public final getInputFormat()Landroid/media/MediaFormat;
    .locals 1

    .line 15
    iget-object v0, p0, Lio/github/toyota32k/media/lib/track/Track;->inputFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public final getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;
    .locals 1

    .line 16
    iget-object v0, p0, Lio/github/toyota32k/media/lib/track/Track;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    return-object v0
.end method

.method public final getOutputFormat()Landroid/media/MediaFormat;
    .locals 1

    .line 15
    iget-object v0, p0, Lio/github/toyota32k/media/lib/track/Track;->outputFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public final getTrackIdx()I
    .locals 1

    .line 15
    iget v0, p0, Lio/github/toyota32k/media/lib/track/Track;->trackIdx:I

    return v0
.end method

.method public final getTrimmingRange()Lio/github/toyota32k/media/lib/converter/TrimmingRange;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/github/toyota32k/media/lib/track/Track;->extractor:Lio/github/toyota32k/media/lib/extractor/Extractor;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/extractor/Extractor;->getTrimmingRange()Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    move-result-object v0

    return-object v0
.end method

.method public final next(Lio/github/toyota32k/media/lib/track/Muxer;Lkotlinx/coroutines/CoroutineScope;)Z
    .locals 3

    const-string v0, "muxer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {p2}, Lio/github/toyota32k/media/lib/misc/CoroutineExtKt;->check(Lkotlinx/coroutines/CoroutineScope;)V

    .line 55
    iget-object v0, p0, Lio/github/toyota32k/media/lib/track/Track;->extractor:Lio/github/toyota32k/media/lib/extractor/Extractor;

    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/track/Track;->getDecoder()Lio/github/toyota32k/media/lib/codec/BaseDecoder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/extractor/Extractor;->chainTo(Lio/github/toyota32k/media/lib/codec/BaseDecoder;)Z

    move-result v0

    .line 58
    invoke-static {p2}, Lio/github/toyota32k/media/lib/misc/CoroutineExtKt;->check(Lkotlinx/coroutines/CoroutineScope;)V

    .line 59
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/track/Track;->getDecoder()Lio/github/toyota32k/media/lib/codec/BaseDecoder;

    move-result-object v1

    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/track/Track;->getEncoder()Lio/github/toyota32k/media/lib/codec/BaseEncoder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->chainTo(Lio/github/toyota32k/media/lib/codec/BaseEncoder;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v0, v2

    .line 62
    :cond_0
    invoke-static {p2}, Lio/github/toyota32k/media/lib/misc/CoroutineExtKt;->check(Lkotlinx/coroutines/CoroutineScope;)V

    .line 63
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/track/Track;->getEncoder()Lio/github/toyota32k/media/lib/codec/BaseEncoder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->chainTo(Lio/github/toyota32k/media/lib/track/Muxer;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method public final setTrimmingRange(Lio/github/toyota32k/media/lib/converter/TrimmingRange;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lio/github/toyota32k/media/lib/track/Track;->extractor:Lio/github/toyota32k/media/lib/extractor/Extractor;

    invoke-virtual {v0, p1}, Lio/github/toyota32k/media/lib/extractor/Extractor;->setTrimmingRange(Lio/github/toyota32k/media/lib/converter/TrimmingRange;)V

    .line 44
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/track/Track;->getDecoder()Lio/github/toyota32k/media/lib/codec/BaseDecoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->setTrimmingRange(Lio/github/toyota32k/media/lib/converter/TrimmingRange;)V

    return-void
.end method
