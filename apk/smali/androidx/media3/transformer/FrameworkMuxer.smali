.class public final Landroidx/media3/transformer/FrameworkMuxer;
.super Ljava/lang/Object;
.source "FrameworkMuxer.java"

# interfaces
.implements Landroidx/media3/muxer/Muxer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/FrameworkMuxer$Factory;
    }
.end annotation


# static fields
.field public static final MUXER_NAME:Ljava/lang/String;

.field public static final MUXER_STOPPING_FAILED_ERROR_MESSAGE:Ljava/lang/String; = "Failed to stop the MediaMuxer"

.field private static final SUPPORTED_AUDIO_SAMPLE_MIME_TYPES:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_VIDEO_SAMPLE_MIME_TYPES:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FrameworkMuxer"

.field private static final TRACK_ID_UNSET:I = -0x1


# instance fields
.field private isReleased:Z

.field private isStarted:Z

.field private final mediaMuxer:Landroid/media/MediaMuxer;

.field private final trackIdToLastPresentationTimeUs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final trackIdToPresentationTimeOffsetUs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final videoDurationUs:J

.field private videoTrackId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.media:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/transformer/FrameworkMuxer;->MUXER_NAME:Ljava/lang/String;

    .line 112
    invoke-static {}, Landroidx/media3/transformer/FrameworkMuxer;->getSupportedVideoSampleMimeTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Landroidx/media3/transformer/FrameworkMuxer;->SUPPORTED_VIDEO_SAMPLE_MIME_TYPES:Lcom/google/common/collect/ImmutableList;

    .line 113
    const-string v0, "audio/3gpp"

    const-string v1, "audio/amr-wb"

    .line 114
    const-string v2, "audio/mp4a-latm"

    invoke-static {v2, v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Landroidx/media3/transformer/FrameworkMuxer;->SUPPORTED_AUDIO_SAMPLE_MIME_TYPES:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method private constructor <init>(Landroid/media/MediaMuxer;J)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Landroidx/media3/transformer/FrameworkMuxer;->mediaMuxer:Landroid/media/MediaMuxer;

    .line 130
    iput-wide p2, p0, Landroidx/media3/transformer/FrameworkMuxer;->videoDurationUs:J

    .line 131
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/FrameworkMuxer;->trackIdToLastPresentationTimeUs:Landroid/util/SparseArray;

    .line 132
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/FrameworkMuxer;->trackIdToPresentationTimeOffsetUs:Landroid/util/SparseArray;

    const/4 p1, -0x1

    .line 133
    iput p1, p0, Landroidx/media3/transformer/FrameworkMuxer;->videoTrackId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaMuxer;JLandroidx/media3/transformer/FrameworkMuxer$1;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/transformer/FrameworkMuxer;-><init>(Landroid/media/MediaMuxer;J)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/common/collect/ImmutableList;
    .locals 1

    .line 55
    sget-object v0, Landroidx/media3/transformer/FrameworkMuxer;->SUPPORTED_VIDEO_SAMPLE_MIME_TYPES:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/common/collect/ImmutableList;
    .locals 1

    .line 55
    sget-object v0, Landroidx/media3/transformer/FrameworkMuxer;->SUPPORTED_AUDIO_SAMPLE_MIME_TYPES:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method private static getDvLevel(Landroidx/media3/common/Format;)I
    .locals 5

    .line 363
    iget-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 364
    invoke-static {p0}, Landroidx/media3/common/util/CodecSpecificDataUtil;->getCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object p0

    .line 365
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 367
    :cond_0
    iget v0, p0, Landroidx/media3/common/Format;->width:I

    iget v1, p0, Landroidx/media3/common/Format;->height:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->max(II)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x1e00

    if-gt v0, v2, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 368
    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 369
    iget v3, p0, Landroidx/media3/common/Format;->width:I

    iget v4, p0, Landroidx/media3/common/Format;->height:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    iget p0, p0, Landroidx/media3/common/Format;->frameRate:F

    mul-float/2addr v3, p0

    const/16 p0, 0x500

    if-gt v0, p0, :cond_3

    const p0, 0x4ba8c000    # 2.21184E7f

    cmpg-float p0, v3, p0

    if-gtz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    const/16 p0, 0x780

    if-gt v0, p0, :cond_4

    const p0, 0x4c3dd800    # 4.97664E7f

    cmpg-float p0, v3, p0

    if-gtz p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const/16 p0, 0xa00

    if-gt v0, p0, :cond_5

    const p0, 0x4c6d4e00    # 6.2208E7f

    cmpg-float p0, v3, p0

    if-gtz p0, :cond_5

    const/16 p0, 0x8

    return p0

    :cond_5
    const/16 p0, 0xf00

    if-gt v0, p0, :cond_b

    const p0, 0x4ced4e00    # 1.24416E8f

    cmpg-float p0, v3, p0

    if-gtz p0, :cond_6

    const/16 p0, 0x10

    return p0

    :cond_6
    const p0, 0x4d3dd800    # 1.990656E8f

    cmpg-float p0, v3, p0

    if-gtz p0, :cond_7

    const/16 p0, 0x20

    return p0

    :cond_7
    const p0, 0x4d6d4e00    # 2.48832E8f

    cmpg-float p0, v3, p0

    if-gtz p0, :cond_8

    const/16 p0, 0x40

    return p0

    :cond_8
    const p0, 0x4dbdd800    # 3.981312E8f

    cmpg-float p0, v3, p0

    if-gtz p0, :cond_9

    const/16 p0, 0x80

    return p0

    :cond_9
    const p0, 0x4ded4e00    # 4.97664E8f

    cmpg-float p0, v3, p0

    if-gtz p0, :cond_a

    const/16 p0, 0x100

    return p0

    :cond_a
    const/16 p0, 0x200

    return p0

    :cond_b
    if-gt v0, v2, :cond_d

    const p0, 0x4e6d4e00    # 9.95328E8f

    cmpg-float p0, v3, p0

    if-gtz p0, :cond_c

    const/16 p0, 0x400

    return p0

    :cond_c
    const/16 p0, 0x800

    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method private static getDvProfile()I
    .locals 1

    const/16 v0, 0x100

    return v0
.end method

.method private static getSupportedVideoSampleMimeTypes()Lcom/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 323
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "video/avc"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "video/3gpp"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "video/mp4v-es"

    aput-object v3, v1, v2

    .line 325
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 327
    const-string/jumbo v1, "video/hevc"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 329
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 330
    const-string/jumbo v1, "video/dolby-vision"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 332
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_1

    .line 333
    const-string/jumbo v1, "video/av01"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 335
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x24

    if-lt v1, v2, :cond_2

    .line 336
    const-string/jumbo v1, "video/apv"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 338
    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private startMuxer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    .line 287
    :try_start_0
    iget-object v0, p0, Landroidx/media3/transformer/FrameworkMuxer;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 291
    iput-boolean v0, p0, Landroidx/media3/transformer/FrameworkMuxer;->isStarted:Z

    return-void

    :catch_0
    move-exception v0

    .line 289
    new-instance v1, Landroidx/media3/muxer/MuxerException;

    const-string v2, "Failed to start the muxer"

    invoke-direct {v1, v2, v0}, Landroidx/media3/muxer/MuxerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static stopMuxer(Landroid/media/MediaMuxer;)V
    .locals 5

    .line 299
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaMuxer;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 301
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    .line 307
    :try_start_1
    const-class v1, Landroid/media/MediaMuxer;

    const-string v2, "MUXER_STATE_STOPPED"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 309
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 310
    const-class v3, Landroid/media/MediaMuxer;

    const-string v4, "mState"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 311
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 312
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 318
    :catch_1
    :cond_0
    throw v0
.end method


# virtual methods
.method public addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V
    .locals 2

    .line 247
    instance-of v0, p1, Landroidx/media3/container/Mp4LocationData;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Landroidx/media3/transformer/FrameworkMuxer;->mediaMuxer:Landroid/media/MediaMuxer;

    check-cast p1, Landroidx/media3/container/Mp4LocationData;

    iget v1, p1, Landroidx/media3/container/Mp4LocationData;->latitude:F

    iget p1, p1, Landroidx/media3/container/Mp4LocationData;->longitude:F

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMuxer;->setLocation(FF)V

    :cond_0
    return-void
.end method

.method public addTrack(Landroidx/media3/common/Format;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    .line 138
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    iget v2, p1, Landroidx/media3/common/Format;->width:I

    iget v3, p1, Landroidx/media3/common/Format;->height:I

    invoke-static {v0, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    .line 143
    iget-object v3, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v2, v3}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetColorInfo(Landroid/media/MediaFormat;Landroidx/media3/common/ColorInfo;)V

    .line 144
    const-string/jumbo v3, "video/dolby-vision"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v0, v3, :cond_0

    .line 145
    const-string v0, "profile"

    invoke-static {}, Landroidx/media3/transformer/FrameworkMuxer;->getDvProfile()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 146
    const-string v0, "level"

    invoke-static {p1}, Landroidx/media3/transformer/FrameworkMuxer;->getDvLevel(Landroidx/media3/common/Format;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 149
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/media3/transformer/FrameworkMuxer;->mediaMuxer:Landroid/media/MediaMuxer;

    iget v3, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    invoke-virtual {v0, v3}, Landroid/media/MediaMuxer;->setOrientationHint(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 151
    new-instance v1, Landroidx/media3/muxer/MuxerException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to set orientation hint with rotationDegrees="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroidx/media3/muxer/MuxerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 155
    :cond_1
    iget v2, p1, Landroidx/media3/common/Format;->sampleRate:I

    iget v3, p1, Landroidx/media3/common/Format;->channelCount:I

    .line 156
    invoke-static {v0, v2, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    .line 157
    const-string v0, "language"

    iget-object v3, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetString(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_0
    iget-object v0, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-static {v2, v0}, Landroidx/media3/common/util/MediaFormatUtil;->setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 162
    :try_start_1
    iget-object v0, p0, Landroidx/media3/transformer/FrameworkMuxer;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, v2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_2

    .line 168
    iput p1, p0, Landroidx/media3/transformer/FrameworkMuxer;->videoTrackId:I

    :cond_2
    return p1

    :catch_1
    move-exception v0

    .line 164
    new-instance v1, Landroidx/media3/muxer/MuxerException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to add track with format="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroidx/media3/muxer/MuxerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    .line 255
    iget-boolean v0, p0, Landroidx/media3/transformer/FrameworkMuxer;->isReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 259
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/transformer/FrameworkMuxer;->isStarted:Z

    if-nez v0, :cond_1

    .line 262
    invoke-direct {p0}, Landroidx/media3/transformer/FrameworkMuxer;->startMuxer()V

    .line 265
    :cond_1
    iget-wide v0, p0, Landroidx/media3/transformer/FrameworkMuxer;->videoDurationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/media3/transformer/FrameworkMuxer;->videoTrackId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 266
    new-instance v0, Landroidx/media3/muxer/BufferInfo;

    iget-wide v2, p0, Landroidx/media3/transformer/FrameworkMuxer;->videoDurationUs:J

    const/4 v4, 0x4

    invoke-direct {v0, v2, v3, v1, v4}, Landroidx/media3/muxer/BufferInfo;-><init>(JII)V

    .line 271
    iget v2, p0, Landroidx/media3/transformer/FrameworkMuxer;->videoTrackId:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v0}, Landroidx/media3/transformer/FrameworkMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V

    .line 274
    :cond_2
    iput-boolean v1, p0, Landroidx/media3/transformer/FrameworkMuxer;->isStarted:Z

    const/4 v0, 0x1

    .line 276
    :try_start_0
    iget-object v1, p0, Landroidx/media3/transformer/FrameworkMuxer;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-static {v1}, Landroidx/media3/transformer/FrameworkMuxer;->stopMuxer(Landroid/media/MediaMuxer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    iget-object v1, p0, Landroidx/media3/transformer/FrameworkMuxer;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    .line 281
    iput-boolean v0, p0, Landroidx/media3/transformer/FrameworkMuxer;->isReleased:Z

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 278
    :try_start_1
    new-instance v2, Landroidx/media3/muxer/MuxerException;

    const-string v3, "Failed to stop the MediaMuxer"

    invoke-direct {v2, v3, v1}, Landroidx/media3/muxer/MuxerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    :goto_0
    iget-object v2, p0, Landroidx/media3/transformer/FrameworkMuxer;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->release()V

    .line 281
    iput-boolean v0, p0, Landroidx/media3/transformer/FrameworkMuxer;->isReleased:Z

    .line 282
    throw v1
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p3

    .line 184
    iget-wide v3, v2, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    .line 185
    iget-wide v5, v1, Landroidx/media3/transformer/FrameworkMuxer;->videoDurationUs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v5, v7

    if-eqz v7, :cond_0

    iget v7, v1, Landroidx/media3/transformer/FrameworkMuxer;->videoTrackId:I

    if-ne v0, v7, :cond_0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 188
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 193
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, v1, Landroidx/media3/transformer/FrameworkMuxer;->videoDurationUs:J

    .line 194
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 190
    const-string v3, "Skipped sample with presentation time (%d) > video duration (%d)"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 188
    const-string v2, "FrameworkMuxer"

    invoke-static {v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 197
    :cond_0
    iget-boolean v5, v1, Landroidx/media3/transformer/FrameworkMuxer;->isStarted:Z

    const-wide/16 v6, 0x0

    if-nez v5, :cond_2

    .line 198
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1e

    if-ge v5, v8, :cond_1

    cmp-long v5, v3, v6

    if-gez v5, :cond_1

    .line 199
    iget-object v5, v1, Landroidx/media3/transformer/FrameworkMuxer;->trackIdToPresentationTimeOffsetUs:Landroid/util/SparseArray;

    neg-long v8, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    :cond_1
    invoke-direct {v1}, Landroidx/media3/transformer/FrameworkMuxer;->startMuxer()V

    .line 204
    :cond_2
    iget-object v5, v1, Landroidx/media3/transformer/FrameworkMuxer;->trackIdToPresentationTimeOffsetUs:Landroid/util/SparseArray;

    .line 205
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long v12, v3, v8

    .line 209
    iget-object v3, v1, Landroidx/media3/transformer/FrameworkMuxer;->trackIdToLastPresentationTimeUs:Landroid/util/SparseArray;

    invoke-static {v3, v0}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 210
    iget-object v3, v1, Landroidx/media3/transformer/FrameworkMuxer;->trackIdToLastPresentationTimeUs:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide v14, v3

    goto :goto_0

    :cond_3
    move-wide v14, v6

    :goto_0
    const/4 v10, 0x1

    .line 213
    const-string v11, "Samples not in presentation order (%s < %s) unsupported on this API version"

    invoke-static/range {v10 .. v15}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;JJ)V

    .line 218
    iget-object v3, v1, Landroidx/media3/transformer/FrameworkMuxer;->trackIdToLastPresentationTimeUs:Landroid/util/SparseArray;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    cmp-long v3, v8, v6

    if-eqz v3, :cond_5

    cmp-long v3, v12, v6

    if-ltz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x1

    .line 220
    :goto_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    sub-long v5, v12, v8

    .line 226
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    neg-long v6, v8

    .line 227
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 222
    const-string v6, "Sample presentation time (%d) < first sample presentation time (%d). Ensure the first sample has the smallest timestamp when using the negative PTS workaround."

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 220
    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 228
    new-instance v10, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v10}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 230
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    move-wide v13, v12

    iget v12, v2, Landroidx/media3/muxer/BufferInfo;->size:I

    iget v3, v2, Landroidx/media3/muxer/BufferInfo;->flags:I

    invoke-static {v3}, Landroidx/media3/transformer/TransformerUtil;->getMediaCodecFlags(I)I

    move-result v15

    .line 229
    invoke-virtual/range {v10 .. v15}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    move-wide v12, v13

    .line 234
    :try_start_0
    iget-object v3, v1, Landroidx/media3/transformer/FrameworkMuxer;->mediaMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v4, p2

    invoke-virtual {v3, v0, v4, v10}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 236
    new-instance v3, Landroidx/media3/muxer/MuxerException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to write sample for presentationTimeUs="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v2, v2, Landroidx/media3/muxer/BufferInfo;->size:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Landroidx/media3/muxer/MuxerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
