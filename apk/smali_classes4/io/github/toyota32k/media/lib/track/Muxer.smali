.class public final Lio/github/toyota32k/media/lib/track/Muxer;
.super Ljava/lang/Object;
.source "Muxer.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/media/lib/track/Muxer$Companion;,
        Lio/github/toyota32k/media/lib/track/Muxer$SampleType;,
        Lio/github/toyota32k/media/lib/track/Muxer$SampleInfo;,
        Lio/github/toyota32k/media/lib/track/Muxer$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMuxer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Muxer.kt\nio/github/toyota32k/media/lib/track/Muxer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,186:1\n1#2:187\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 22\u00020\u0001:\u0003234B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010#\u001a\u00020$H\u0016J\u000e\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\'J\u0016\u0010(\u001a\u00020$2\u0006\u0010)\u001a\u00020\'2\u0006\u0010*\u001a\u00020\tJ\u0010\u0010+\u001a\u00020$2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0006\u0010,\u001a\u00020$J\u000e\u0010-\u001a\u00020\u000b2\u0006\u0010&\u001a\u00020\'J\u001e\u0010.\u001a\u00020$2\u0006\u0010&\u001a\u00020\'2\u0006\u0010/\u001a\u00020\u001a2\u0006\u00100\u001a\u000201R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0015\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0013R\u0011\u0010\u0016\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0013R\u000e\u0010\u0017\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0018\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0013R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/track/Muxer;",
        "Ljava/io/Closeable;",
        "inPath",
        "Lio/github/toyota32k/media/lib/converter/AndroidFile;",
        "outPath",
        "hasAudio",
        "",
        "(Lio/github/toyota32k/media/lib/converter/AndroidFile;Lio/github/toyota32k/media/lib/converter/AndroidFile;Z)V",
        "audioFormat",
        "Landroid/media/MediaFormat;",
        "audioTrackIndex",
        "",
        "disposed",
        "<set-?>",
        "",
        "durationUs",
        "getDurationUs",
        "()J",
        "getHasAudio",
        "()Z",
        "isAudioCompleted",
        "isAudioReady",
        "isReady",
        "isVideoCompleted",
        "isVideoReady",
        "mByteBuffer",
        "Ljava/nio/ByteBuffer;",
        "mSampleInfoList",
        "",
        "Lio/github/toyota32k/media/lib/track/Muxer$SampleInfo;",
        "muxer",
        "Landroid/media/MediaMuxer;",
        "muxerStopped",
        "videoFormat",
        "videoTrackIndex",
        "close",
        "",
        "complete",
        "sampleType",
        "Lio/github/toyota32k/media/lib/track/Muxer$SampleType;",
        "setOutputFormat",
        "type",
        "format",
        "setupMetaDataBy",
        "stopMuxer",
        "trackIndexOf",
        "writeSampleData",
        "byteBuf",
        "bufferInfo",
        "Landroid/media/MediaCodec$BufferInfo;",
        "Companion",
        "SampleInfo",
        "SampleType",
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
.field public static final BUFFER_SIZE:I = 0x10000

.field public static final Companion:Lio/github/toyota32k/media/lib/track/Muxer$Companion;

.field private static final logger:Lio/github/toyota32k/media/lib/utils/UtLog;


# instance fields
.field private audioFormat:Landroid/media/MediaFormat;

.field private audioTrackIndex:I

.field private disposed:Z

.field private durationUs:J

.field private final hasAudio:Z

.field private isAudioCompleted:Z

.field private isVideoCompleted:Z

.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mSampleInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/toyota32k/media/lib/track/Muxer$SampleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final muxer:Landroid/media/MediaMuxer;

.field private muxerStopped:Z

.field private videoFormat:Landroid/media/MediaFormat;

.field private videoTrackIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lio/github/toyota32k/media/lib/track/Muxer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/toyota32k/media/lib/track/Muxer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/toyota32k/media/lib/track/Muxer;->Companion:Lio/github/toyota32k/media/lib/track/Muxer$Companion;

    .line 18
    new-instance v2, Lio/github/toyota32k/media/lib/utils/UtLog;

    sget-object v0, Lio/github/toyota32k/media/lib/converter/Converter;->Companion:Lio/github/toyota32k/media/lib/converter/Converter$Companion;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/converter/Converter$Companion;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v4

    const/16 v8, 0x1c

    const/4 v9, 0x0

    const-string v3, "Muxer"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lio/github/toyota32k/media/lib/utils/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/media/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lio/github/toyota32k/media/lib/track/Muxer;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>(Lio/github/toyota32k/media/lib/converter/AndroidFile;Lio/github/toyota32k/media/lib/converter/AndroidFile;Z)V
    .locals 1

    const-string v0, "inPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lio/github/toyota32k/media/lib/track/Muxer;->hasAudio:Z

    .line 24
    sget-object p3, Lio/github/toyota32k/media/lib/track/Muxer$muxer$1;->INSTANCE:Lio/github/toyota32k/media/lib/track/Muxer$muxer$1;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, p3}, Lio/github/toyota32k/media/lib/converter/AndroidFile;->fileDescriptorToWrite(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/MediaMuxer;

    iput-object p2, p0, Lio/github/toyota32k/media/lib/track/Muxer;->muxer:Landroid/media/MediaMuxer;

    const-wide/16 p2, -0x1

    .line 25
    iput-wide p2, p0, Lio/github/toyota32k/media/lib/track/Muxer;->durationUs:J

    const/4 p2, -0x1

    .line 31
    iput p2, p0, Lio/github/toyota32k/media/lib/track/Muxer;->videoTrackIndex:I

    .line 32
    iput p2, p0, Lio/github/toyota32k/media/lib/track/Muxer;->audioTrackIndex:I

    .line 35
    invoke-direct {p0, p1}, Lio/github/toyota32k/media/lib/track/Muxer;->setupMetaDataBy(Lio/github/toyota32k/media/lib/converter/AndroidFile;)V

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lio/github/toyota32k/media/lib/track/Muxer;->mSampleInfoList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lio/github/toyota32k/media/lib/utils/UtLog;
    .locals 1

    .line 16
    sget-object v0, Lio/github/toyota32k/media/lib/track/Muxer;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    return-object v0
.end method

.method private final setupMetaDataBy(Lio/github/toyota32k/media/lib/converter/AndroidFile;)V
    .locals 6

    .line 39
    sget-object v0, Lio/github/toyota32k/media/lib/track/Muxer$setupMetaDataBy$mediaMetadataRetriever$1;->INSTANCE:Lio/github/toyota32k/media/lib/track/Muxer$setupMetaDataBy$mediaMetadataRetriever$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lio/github/toyota32k/media/lib/converter/AndroidFile;->fileDescriptorToRead(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaMetadataRetriever;

    const/16 v0, 0x18

    .line 40
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 42
    iget-object v1, p0, Lio/github/toyota32k/media/lib/track/Muxer;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 43
    sget-object v1, Lio/github/toyota32k/media/lib/track/Muxer;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    const-string v2, "metadata: rotation="

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/github/toyota32k/media/lib/utils/UtLog;->info(Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x17

    .line 46
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 48
    sget-object v1, Lio/github/toyota32k/media/lib/misc/ISO6709LocationParser;->INSTANCE:Lio/github/toyota32k/media/lib/misc/ISO6709LocationParser;

    invoke-virtual {v1, v0}, Lio/github/toyota32k/media/lib/misc/ISO6709LocationParser;->parse(Ljava/lang/String;)[F

    move-result-object v1

    if-eqz v1, :cond_2

    .line 50
    iget-object v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->muxer:Landroid/media/MediaMuxer;

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    invoke-virtual {v0, v3, v5}, Landroid/media/MediaMuxer;->setLocation(FF)V

    .line 51
    sget-object v0, Lio/github/toyota32k/media/lib/track/Muxer;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "metadata: latitude="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, v1, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", longitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v1, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/utils/UtLog;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 53
    :cond_2
    sget-object v1, Lio/github/toyota32k/media/lib/track/Muxer;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    const-string v2, "metadata: failed to parse the location metadata: "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/github/toyota32k/media/lib/utils/UtLog;->error(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const/16 v0, 0x9

    .line 57
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_5

    :goto_2
    return-void

    :cond_5
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const/16 p1, 0x3e8

    int-to-long v2, p1

    mul-long/2addr v0, v2

    .line 58
    iput-wide v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->durationUs:J

    .line 59
    sget-object p1, Lio/github/toyota32k/media/lib/track/Muxer;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "metadata: duration="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/track/Muxer;->getDurationUs()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/github/toyota32k/media/lib/utils/UtLog;->info(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 180
    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->disposed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->disposed:Z

    .line 182
    iget-object v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 183
    sget-object v0, Lio/github/toyota32k/media/lib/track/Muxer;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    const-string v1, "disposed"

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final complete(Lio/github/toyota32k/media/lib/track/Muxer$SampleType;)V
    .locals 2

    const-string v0, "sampleType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lio/github/toyota32k/media/lib/track/Muxer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/track/Muxer$SampleType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iput-boolean v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->isAudioCompleted:Z

    goto :goto_0

    .line 138
    :cond_1
    iput-boolean v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->isVideoCompleted:Z

    .line 140
    :goto_0
    iget-boolean p1, p0, Lio/github/toyota32k/media/lib/track/Muxer;->isAudioCompleted:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lio/github/toyota32k/media/lib/track/Muxer;->isVideoCompleted:Z

    if-eqz p1, :cond_2

    .line 141
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/track/Muxer;->stopMuxer()V

    :cond_2
    return-void
.end method

.method public final getDurationUs()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->durationUs:J

    return-wide v0
.end method

.method public final getHasAudio()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->hasAudio:Z

    return v0
.end method

.method public final isAudioReady()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->hasAudio:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->audioFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isReady()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->videoFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->hasAudio:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->audioFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final isVideoReady()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->videoFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setOutputFormat(Lio/github/toyota32k/media/lib/track/Muxer$SampleType;Landroid/media/MediaFormat;)V
    .locals 5

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lio/github/toyota32k/media/lib/track/Muxer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/track/Muxer$SampleType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lio/github/toyota32k/media/lib/track/Muxer;->audioFormat:Landroid/media/MediaFormat;

    if-nez p1, :cond_1

    .line 84
    iput-object p2, p0, Lio/github/toyota32k/media/lib/track/Muxer;->audioFormat:Landroid/media/MediaFormat;

    goto :goto_0

    .line 83
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "audio format changed more than twice."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_2
    iget-object p1, p0, Lio/github/toyota32k/media/lib/track/Muxer;->videoFormat:Landroid/media/MediaFormat;

    if-nez p1, :cond_7

    .line 80
    iput-object p2, p0, Lio/github/toyota32k/media/lib/track/Muxer;->videoFormat:Landroid/media/MediaFormat;

    .line 87
    :goto_0
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/track/Muxer;->isReady()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 88
    iget-object p1, p0, Lio/github/toyota32k/media/lib/track/Muxer;->muxer:Landroid/media/MediaMuxer;

    iget-object p2, p0, Lio/github/toyota32k/media/lib/track/Muxer;->videoFormat:Landroid/media/MediaFormat;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    iput p1, p0, Lio/github/toyota32k/media/lib/track/Muxer;->videoTrackIndex:I

    .line 89
    sget-object p1, Lio/github/toyota32k/media/lib/track/Muxer;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Added track #"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/github/toyota32k/media/lib/track/Muxer;->videoTrackIndex:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " with "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v2, p0, Lio/github/toyota32k/media/lib/track/Muxer;->videoFormat:Landroid/media/MediaFormat;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " to muxer"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 90
    iget-boolean p2, p0, Lio/github/toyota32k/media/lib/track/Muxer;->hasAudio:Z

    if-eqz p2, :cond_3

    .line 91
    iget-object p2, p0, Lio/github/toyota32k/media/lib/track/Muxer;->muxer:Landroid/media/MediaMuxer;

    iget-object v4, p0, Lio/github/toyota32k/media/lib/track/Muxer;->audioFormat:Landroid/media/MediaFormat;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v4}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p2

    iput p2, p0, Lio/github/toyota32k/media/lib/track/Muxer;->audioTrackIndex:I

    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->audioTrackIndex:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->audioFormat:Landroid/media/MediaFormat;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 94
    :cond_3
    iget-object p2, p0, Lio/github/toyota32k/media/lib/track/Muxer;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {p2}, Landroid/media/MediaMuxer;->start()V

    .line 97
    iget-object p2, p0, Lio/github/toyota32k/media/lib/track/Muxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-nez p2, :cond_4

    goto :goto_2

    .line 98
    :cond_4
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output format determined, writing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/github/toyota32k/media/lib/track/Muxer;->mSampleInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " samples / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes to muxer."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 100
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 102
    iget-object v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->mSampleInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/toyota32k/media/lib/track/Muxer$SampleInfo;

    .line 103
    invoke-virtual {v2, p1, v1}, Lio/github/toyota32k/media/lib/track/Muxer$SampleInfo;->writeToBufferInfo(Landroid/media/MediaCodec$BufferInfo;I)V

    .line 104
    iget-object v3, p0, Lio/github/toyota32k/media/lib/track/Muxer;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Lio/github/toyota32k/media/lib/track/Muxer$SampleInfo;->getSampleType()Lio/github/toyota32k/media/lib/track/Muxer$SampleType;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/github/toyota32k/media/lib/track/Muxer;->trackIndexOf(Lio/github/toyota32k/media/lib/track/Muxer$SampleType;)I

    move-result v4

    invoke-virtual {v3, v4, p2, p1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 105
    invoke-virtual {v2}, Lio/github/toyota32k/media/lib/track/Muxer$SampleInfo;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 107
    :cond_5
    iget-object p1, p0, Lio/github/toyota32k/media/lib/track/Muxer;->mSampleInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lio/github/toyota32k/media/lib/track/Muxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    :cond_6
    :goto_2
    return-void

    .line 79
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "video format changed more than twice."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final stopMuxer()V
    .locals 4

    .line 146
    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->muxerStopped:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->muxerStopped:Z

    .line 149
    :try_start_0
    sget-object v0, Lio/github/toyota32k/media/lib/track/Muxer;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    const-string v1, "muxer stopped."

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 152
    sget-object v1, Lio/github/toyota32k/media/lib/track/Muxer;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lio/github/toyota32k/media/lib/utils/UtLog;->stackTrace$default(Lio/github/toyota32k/media/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final trackIndexOf(Lio/github/toyota32k/media/lib/track/Muxer$SampleType;)I
    .locals 1

    const-string v0, "sampleType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lio/github/toyota32k/media/lib/track/Muxer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/track/Muxer$SampleType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 72
    iget p1, p0, Lio/github/toyota32k/media/lib/track/Muxer;->audioTrackIndex:I

    return p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 71
    :cond_1
    iget p1, p0, Lio/github/toyota32k/media/lib/track/Muxer;->videoTrackIndex:I

    return p1
.end method

.method public final writeSampleData(Lio/github/toyota32k/media/lib/track/Muxer$SampleType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    const-string v0, "sampleType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteBuf"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bufferInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/track/Muxer;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {p0, p1}, Lio/github/toyota32k/media/lib/track/Muxer;->trackIndexOf(Lio/github/toyota32k/media/lib/track/Muxer$SampleType;)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 115
    iget p2, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_0

    .line 116
    sget-object p2, Lio/github/toyota32k/media/lib/track/Muxer;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " -- reached to eos."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, p1}, Lio/github/toyota32k/media/lib/track/Muxer;->complete(Lio/github/toyota32k/media/lib/track/Muxer$SampleType;)V

    :cond_0
    return-void

    .line 123
    :cond_1
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 124
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    iget-object v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/github/toyota32k/media/lib/track/Muxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 127
    :cond_2
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 128
    iget-object p2, p0, Lio/github/toyota32k/media/lib/track/Muxer;->mSampleInfoList:Ljava/util/List;

    new-instance v0, Lio/github/toyota32k/media/lib/track/Muxer$SampleInfo;

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-direct {v0, p1, v1, p3}, Lio/github/toyota32k/media/lib/track/Muxer$SampleInfo;-><init>(Lio/github/toyota32k/media/lib/track/Muxer$SampleType;ILandroid/media/MediaCodec$BufferInfo;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
