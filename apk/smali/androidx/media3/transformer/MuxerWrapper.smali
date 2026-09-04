.class final Landroidx/media3/transformer/MuxerWrapper;
.super Ljava/lang/Object;
.source "MuxerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/MuxerWrapper$Listener;,
        Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;,
        Landroidx/media3/transformer/MuxerWrapper$TrackInfo;,
        Landroidx/media3/transformer/MuxerWrapper$MuxerReleaseReason;,
        Landroidx/media3/transformer/MuxerWrapper$MuxerMode;
    }
.end annotation


# static fields
.field private static final MAX_TRACK_WRITE_AHEAD_US:J

.field public static final MUXER_MODE_APPEND:I = 0x2

.field public static final MUXER_MODE_DEFAULT:I = 0x0

.field public static final MUXER_MODE_MUX_PARTIAL:I = 0x1

.field public static final MUXER_RELEASE_REASON_CANCELLED:I = 0x1

.field public static final MUXER_RELEASE_REASON_COMPLETED:I = 0x0

.field public static final MUXER_RELEASE_REASON_ERROR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MuxerWrapper"


# instance fields
.field private volatile additionalRotationDegrees:I

.field private final appendVideoFormat:Landroidx/media3/common/Format;

.field private final dropSamplesBeforeFirstVideoSample:Z

.field private encoderDelayTimestampOffsetUs:J

.field private firstVideoPresentationTimeUs:J

.field private isEnded:Z

.field private isReady:Z

.field private final listener:Landroidx/media3/transformer/MuxerWrapper$Listener;

.field private maxEndedTrackTimeUs:J

.field private minEndedTrackTimeUs:J

.field private minTrackTimeUs:J

.field private muxedPartialAudio:Z

.field private muxedPartialVideo:Z

.field private muxer:Landroidx/media3/muxer/Muxer;

.field private final muxerFactory:Landroidx/media3/muxer/Muxer$Factory;

.field private muxerMode:I

.field private final outputPath:Ljava/lang/String;

.field private previousTrackType:I

.field private volatile trackCount:I

.field private final trackTypeToInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/transformer/MuxerWrapper$TrackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 145
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/media3/transformer/MuxerWrapper;->MAX_TRACK_WRITE_AHEAD_US:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media3/muxer/Muxer$Factory;Landroidx/media3/transformer/MuxerWrapper$Listener;IZLandroidx/media3/common/Format;)V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Landroidx/media3/transformer/MuxerWrapper;->outputPath:Ljava/lang/String;

    .line 194
    iput-object p2, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerFactory:Landroidx/media3/muxer/Muxer$Factory;

    .line 195
    iput-object p3, p0, Landroidx/media3/transformer/MuxerWrapper;->listener:Landroidx/media3/transformer/MuxerWrapper$Listener;

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p4, :cond_1

    if-ne p4, p2, :cond_0

    goto :goto_0

    :cond_0
    move p3, p1

    goto :goto_1

    :cond_1
    :goto_0
    move p3, p2

    .line 196
    :goto_1
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 197
    iput p4, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerMode:I

    .line 198
    iput-boolean p5, p0, Landroidx/media3/transformer/MuxerWrapper;->dropSamplesBeforeFirstVideoSample:Z

    if-nez p4, :cond_2

    if-eqz p6, :cond_3

    :cond_2
    if-ne p4, p2, :cond_4

    if-eqz p6, :cond_4

    :cond_3
    move p1, p2

    .line 199
    :cond_4
    const-string p2, "appendVideoFormat must be present if and only if muxerMode is MUXER_MODE_MUX_PARTIAL."

    invoke-static {p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 203
    iput-object p6, p0, Landroidx/media3/transformer/MuxerWrapper;->appendVideoFormat:Landroidx/media3/common/Format;

    .line 204
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    const/4 p1, -0x2

    .line 205
    iput p1, p0, Landroidx/media3/transformer/MuxerWrapper;->previousTrackType:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 206
    iput-wide p1, p0, Landroidx/media3/transformer/MuxerWrapper;->firstVideoPresentationTimeUs:J

    const-wide p1, 0x7fffffffffffffffL

    .line 207
    iput-wide p1, p0, Landroidx/media3/transformer/MuxerWrapper;->minEndedTrackTimeUs:J

    return-void
.end method

.method private canWriteSample(IJ)Z
    .locals 7

    .line 704
    iget-boolean v0, p0, Landroidx/media3/transformer/MuxerWrapper;->dropSamplesBeforeFirstVideoSample:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object v2, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    .line 706
    invoke-static {v2, v0}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Landroidx/media3/transformer/MuxerWrapper;->firstVideoPresentationTimeUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    return v1

    .line 711
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/transformer/MuxerWrapper;->isReady:Z

    if-nez v0, :cond_1

    return v1

    .line 714
    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    return v2

    .line 717
    :cond_2
    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    iget-wide v3, v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->endTimeUs:J

    sub-long v3, p2, v3

    sget-wide v5, Landroidx/media3/transformer/MuxerWrapper;->MAX_TRACK_WRITE_AHEAD_US:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    .line 718
    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-static {v0}, Landroidx/media3/transformer/MuxerWrapper;->getTrackInfoWithMinTimeUs(Landroid/util/SparseArray;)Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    .line 719
    iget-object v0, v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->format:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p1, :cond_3

    return v2

    .line 725
    :cond_3
    iget v0, p0, Landroidx/media3/transformer/MuxerWrapper;->previousTrackType:I

    if-eq p1, v0, :cond_4

    .line 726
    iget-object p1, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-static {p1}, Landroidx/media3/transformer/MuxerWrapper;->getTrackInfoWithMinTimeUs(Landroid/util/SparseArray;)Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    iget-wide v3, p1, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->endTimeUs:J

    iput-wide v3, p0, Landroidx/media3/transformer/MuxerWrapper;->minTrackTimeUs:J

    .line 728
    :cond_4
    iget-wide v3, p0, Landroidx/media3/transformer/MuxerWrapper;->minTrackTimeUs:J

    sub-long/2addr p2, v3

    cmp-long p1, p2, v5

    if-gtz p1, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method private ensureMuxerInitialized()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "muxer"
        }
    .end annotation

    .line 733
    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxer:Landroidx/media3/muxer/Muxer;

    if-nez v0, :cond_0

    .line 734
    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerFactory:Landroidx/media3/muxer/Muxer$Factory;

    iget-object v1, p0, Landroidx/media3/transformer/MuxerWrapper;->outputPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/media3/muxer/Muxer$Factory;->create(Ljava/lang/String;)Landroidx/media3/muxer/Muxer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxer:Landroidx/media3/muxer/Muxer;

    :cond_0
    return-void
.end method

.method private getCurrentOutputSizeBytes()J
    .locals 4

    .line 740
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroidx/media3/transformer/MuxerWrapper;->outputPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getMostCompatibleInitializationData(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Format;",
            "Landroidx/media3/common/Format;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 224
    invoke-virtual {p0, p1}, Landroidx/media3/common/Format;->initializationDataEquals(Landroidx/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object p0, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    return-object p0

    .line 227
    :cond_0
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/avc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 228
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 231
    :cond_1
    iget-object v0, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 232
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_2

    goto/16 :goto_2

    .line 236
    :cond_2
    iget-object v0, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    const/4 v1, 0x1

    .line 237
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v3, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 238
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 236
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v2

    .line 244
    :cond_3
    iget-object v0, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 245
    iget-object v4, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 247
    sget-object v5, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x3

    .line 248
    array-length v6, v0

    if-lt v5, v6, :cond_4

    return-object v2

    .line 251
    :cond_4
    array-length v6, v0

    array-length v7, v4

    if-eq v6, v7, :cond_5

    return-object v2

    :cond_5
    move v6, v3

    .line 254
    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_7

    if-eq v6, v5, :cond_6

    .line 255
    aget-byte v7, v0, v6

    aget-byte v8, v4, v6

    if-eq v7, v8, :cond_6

    return-object v2

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 259
    :cond_7
    :goto_1
    sget-object v6, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    array-length v6, v6

    if-ge v3, v6, :cond_9

    .line 260
    aget-byte v6, v0, v3

    sget-object v7, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    aget-byte v7, v7, v3

    if-eq v6, v7, :cond_8

    return-object v2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 265
    :cond_9
    sget-object v3, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    array-length v3, v3

    aget-byte v3, v0, v3

    and-int/lit8 v3, v3, 0x1f

    const/4 v6, 0x7

    if-eq v3, v6, :cond_a

    return-object v2

    .line 270
    :cond_a
    sget-object v3, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    array-length v3, v3

    add-int/2addr v3, v1

    aget-byte v1, v0, v3

    if-nez v1, :cond_b

    return-object v2

    .line 273
    :cond_b
    aget-byte v1, v4, v5

    aget-byte v0, v0, v5

    if-lt v1, v0, :cond_c

    .line 274
    iget-object p0, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    return-object p0

    .line 275
    :cond_c
    iget-object p0, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    return-object p0

    :cond_d
    :goto_2
    return-object v2
.end method

.method private static getTrackInfoWithMinTimeUs(Landroid/util/SparseArray;)Landroidx/media3/transformer/MuxerWrapper$TrackInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/transformer/MuxerWrapper$TrackInfo;",
            ">;)",
            "Landroidx/media3/transformer/MuxerWrapper$TrackInfo;"
        }
    .end annotation

    .line 746
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 750
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    const/4 v1, 0x1

    .line 751
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 752
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    .line 753
    iget-wide v3, v2, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->endTimeUs:J

    iget-wide v5, v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->endTimeUs:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    move-object v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private maybeCalculateEncoderDelayTimestampOffset(Landroidx/media3/common/Format;)V
    .locals 8

    .line 693
    iget v0, p1, Landroidx/media3/common/Format;->encoderDelay:I

    if-lez v0, :cond_0

    .line 694
    iget v0, p1, Landroidx/media3/common/Format;->encoderDelay:I

    int-to-long v1, v0

    iget p1, p1, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v5, p1

    sget-object v7, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const-wide/32 v3, 0xf4240

    .line 695
    invoke-static/range {v1 .. v7}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/transformer/MuxerWrapper;->encoderDelayTimestampOffsetUs:J

    :cond_0
    return-void
.end method


# virtual methods
.method public addTrackFormat(Landroidx/media3/common/Format;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;,
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    .line 370
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 371
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    .line 372
    :goto_1
    const-string v6, "Unsupported track format: %s"

    invoke-static {v5, v6, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    if-ne v1, v3, :cond_3

    .line 379
    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget p1, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    iget v5, p0, Landroidx/media3/transformer/MuxerWrapper;->additionalRotationDegrees:I

    add-int/2addr p1, v5

    rem-int/lit16 p1, p1, 0x168

    .line 380
    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setRotationDegrees(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 381
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    .line 382
    iget v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerMode:I

    if-ne v0, v4, :cond_3

    .line 383
    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->appendVideoFormat:Landroidx/media3/common/Format;

    .line 384
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Format;

    invoke-static {p1, v0}, Landroidx/media3/transformer/MuxerWrapper;->getMostCompatibleInitializationData(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 388
    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    goto :goto_2

    .line 386
    :cond_2
    new-instance p1, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;

    const-string v0, "Switching to MUXER_MODE_APPEND will fail."

    invoke-direct {p1, v0}, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 392
    :cond_3
    :goto_2
    iget v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerMode:I

    if-ne v0, v3, :cond_e

    .line 393
    const-string v0, " != "

    if-ne v1, v3, :cond_9

    .line 394
    iget-object v1, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 395
    iget-object v1, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    .line 401
    iget-object v1, v1, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->format:Landroidx/media3/common/Format;

    .line 402
    iget-object v2, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 409
    iget v2, v1, Landroidx/media3/common/Format;->width:I

    iget v3, p1, Landroidx/media3/common/Format;->width:I

    if-ne v2, v3, :cond_7

    .line 413
    iget v2, v1, Landroidx/media3/common/Format;->height:I

    iget v3, p1, Landroidx/media3/common/Format;->height:I

    if-ne v2, v3, :cond_6

    .line 417
    iget v2, v1, Landroidx/media3/common/Format;->rotationDegrees:I

    iget v3, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    if-ne v2, v3, :cond_5

    .line 426
    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->appendVideoFormat:Landroidx/media3/common/Format;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Format;

    invoke-virtual {p1, v0}, Landroidx/media3/common/Format;->initializationDataEquals(Landroidx/media3/common/Format;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto/16 :goto_6

    .line 427
    :cond_4
    new-instance p1, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;

    const-string v0, "The initialization data of the newly added track format doesn\'t match appendVideoFormat."

    invoke-direct {p1, v0}, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 418
    :cond_5
    new-instance v2, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Video format mismatch - rotationDegrees: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroidx/media3/common/Format;->rotationDegrees:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 414
    :cond_6
    new-instance v2, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Video format mismatch - height: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroidx/media3/common/Format;->height:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroidx/media3/common/Format;->height:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 410
    :cond_7
    new-instance v2, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Video format mismatch - width: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroidx/media3/common/Format;->width:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroidx/media3/common/Format;->width:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 403
    :cond_8
    new-instance v2, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Video format mismatch - sampleMimeType: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    if-ne v1, v4, :cond_13

    .line 432
    iget-object v1, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-static {v1, v4}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 433
    iget-object v1, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    .line 435
    iget-object v1, v1, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->format:Landroidx/media3/common/Format;

    .line 436
    iget-object v2, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 443
    iget v2, v1, Landroidx/media3/common/Format;->channelCount:I

    iget v3, p1, Landroidx/media3/common/Format;->channelCount:I

    if-ne v2, v3, :cond_c

    .line 450
    iget v2, v1, Landroidx/media3/common/Format;->sampleRate:I

    iget v3, p1, Landroidx/media3/common/Format;->sampleRate:I

    if-ne v2, v3, :cond_b

    .line 457
    invoke-virtual {v1, p1}, Landroidx/media3/common/Format;->initializationDataEquals(Landroidx/media3/common/Format;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto/16 :goto_6

    .line 458
    :cond_a
    new-instance p1, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;

    const-string v0, "Audio format mismatch - initializationData."

    invoke-direct {p1, v0}, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 451
    :cond_b
    new-instance v2, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Audio format mismatch - sampleRate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroidx/media3/common/Format;->sampleRate:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroidx/media3/common/Format;->sampleRate:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 444
    :cond_c
    new-instance v2, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Audio format mismatch - channelCount: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroidx/media3/common/Format;->channelCount:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroidx/media3/common/Format;->channelCount:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 437
    :cond_d
    new-instance v2, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Audio format mismatch - sampleMimeType: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 464
    :cond_e
    iget v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackCount:I

    if-lez v0, :cond_f

    move v3, v4

    goto :goto_3

    :cond_f
    move v3, v2

    .line 465
    :goto_3
    const-string v5, "The track count should be set before the formats are added."

    invoke-static {v3, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 466
    iget-object v3, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v3, v0, :cond_10

    move v3, v4

    goto :goto_4

    :cond_10
    move v3, v2

    :goto_4
    const-string v5, "All track formats have already been added."

    invoke-static {v3, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 467
    iget-object v3, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    .line 468
    invoke-static {v3, v1}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v5, "There is already a track of type %s"

    .line 467
    invoke-static {v3, v5, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 470
    invoke-direct {p0}, Landroidx/media3/transformer/MuxerWrapper;->ensureMuxerInitialized()V

    .line 471
    new-instance v3, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    iget-object v5, p0, Landroidx/media3/transformer/MuxerWrapper;->muxer:Landroidx/media3/muxer/Muxer;

    invoke-interface {v5, p1}, Landroidx/media3/muxer/Muxer;->addTrack(Landroidx/media3/common/Format;)I

    move-result v5

    invoke-direct {v3, p1, v5}, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;-><init>(Landroidx/media3/common/Format;I)V

    if-ne v1, v4, :cond_11

    .line 473
    invoke-direct {p0, p1}, Landroidx/media3/transformer/MuxerWrapper;->maybeCalculateEncoderDelayTimestampOffset(Landroidx/media3/common/Format;)V

    .line 475
    :cond_11
    iget-object v5, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 481
    invoke-static {v1}, Landroidx/media3/common/util/Util;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v10

    .line 476
    const-string v5, "Muxer"

    const-string v6, "InputFormat"

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-string v9, "%s:%s"

    invoke-static/range {v5 .. v10}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V

    .line 484
    iget-object v1, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-eqz v1, :cond_12

    .line 485
    :goto_5
    iget-object v1, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v1}, Landroidx/media3/common/Metadata;->length()I

    move-result v1

    if-ge v2, v1, :cond_12

    .line 486
    iget-object v1, p0, Landroidx/media3/transformer/MuxerWrapper;->muxer:Landroidx/media3/muxer/Muxer;

    iget-object v3, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v3, v2}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v3

    invoke-interface {v1, v3}, Landroidx/media3/muxer/Muxer;->addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 490
    :cond_12
    iget-object p1, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ne p1, v0, :cond_13

    .line 491
    iput-boolean v4, p0, Landroidx/media3/transformer/MuxerWrapper;->isReady:Z

    :cond_13
    :goto_6
    return-void
.end method

.method public changeToAppendMode()V
    .locals 2

    .line 285
    iget v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const/4 v0, 0x2

    .line 287
    iput v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerMode:I

    return-void
.end method

.method public endTrack(I)V
    .locals 11

    .line 601
    iget-boolean v0, p0, Landroidx/media3/transformer/MuxerWrapper;->isReady:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 605
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    .line 606
    iget-wide v1, p0, Landroidx/media3/transformer/MuxerWrapper;->minEndedTrackTimeUs:J

    iget-wide v3, v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->startTimeUs:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/transformer/MuxerWrapper;->minEndedTrackTimeUs:J

    .line 607
    iget-wide v1, p0, Landroidx/media3/transformer/MuxerWrapper;->maxEndedTrackTimeUs:J

    iget-wide v3, v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->endTimeUs:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/transformer/MuxerWrapper;->maxEndedTrackTimeUs:J

    .line 608
    iget-object v1, p0, Landroidx/media3/transformer/MuxerWrapper;->listener:Landroidx/media3/transformer/MuxerWrapper$Listener;

    iget-object v2, v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->format:Landroidx/media3/common/Format;

    .line 609
    invoke-virtual {v0}, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->getAverageBitrate()I

    move-result v3

    iget v4, v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->sampleCount:I

    .line 608
    invoke-interface {v1, p1, v2, v3, v4}, Landroidx/media3/transformer/MuxerWrapper$Listener;->onTrackEnded(ILandroidx/media3/common/Format;II)V

    .line 610
    iget-wide v7, v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->endTimeUs:J

    .line 615
    invoke-static {p1}, Landroidx/media3/common/util/Util;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v10

    .line 610
    const-string v5, "Muxer"

    const-string v6, "InputEnded"

    const-string v9, "%s"

    invoke-static/range {v5 .. v10}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V

    .line 617
    iget v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 619
    iput-boolean v1, p0, Landroidx/media3/transformer/MuxerWrapper;->muxedPartialVideo:Z

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_3

    .line 621
    iput-boolean v1, p0, Landroidx/media3/transformer/MuxerWrapper;->muxedPartialAudio:Z

    goto :goto_0

    .line 624
    :cond_2
    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 625
    iget-object p1, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 626
    iput-boolean v1, p0, Landroidx/media3/transformer/MuxerWrapper;->isEnded:Z

    .line 627
    const-string p1, "OutputEnded"

    iget-wide v2, p0, Landroidx/media3/transformer/MuxerWrapper;->maxEndedTrackTimeUs:J

    const-string v0, "Muxer"

    invoke-static {v0, p1, v2, v3}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 631
    :cond_3
    :goto_0
    iget-wide v2, p0, Landroidx/media3/transformer/MuxerWrapper;->maxEndedTrackTimeUs:J

    iget-wide v4, p0, Landroidx/media3/transformer/MuxerWrapper;->minEndedTrackTimeUs:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v2

    .line 632
    iget p1, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerMode:I

    if-ne p1, v1, :cond_5

    iget-boolean p1, p0, Landroidx/media3/transformer/MuxerWrapper;->muxedPartialVideo:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Landroidx/media3/transformer/MuxerWrapper;->muxedPartialAudio:Z

    if-nez p1, :cond_4

    iget p1, p0, Landroidx/media3/transformer/MuxerWrapper;->trackCount:I

    if-ne p1, v1, :cond_5

    .line 635
    :cond_4
    iget-object p1, p0, Landroidx/media3/transformer/MuxerWrapper;->listener:Landroidx/media3/transformer/MuxerWrapper$Listener;

    invoke-direct {p0}, Landroidx/media3/transformer/MuxerWrapper;->getCurrentOutputSizeBytes()J

    move-result-wide v0

    invoke-interface {p1, v2, v3, v0, v1}, Landroidx/media3/transformer/MuxerWrapper$Listener;->onEnded(JJ)V

    return-void

    .line 639
    :cond_5
    iget-boolean p1, p0, Landroidx/media3/transformer/MuxerWrapper;->isEnded:Z

    if-eqz p1, :cond_6

    .line 640
    iget-object p1, p0, Landroidx/media3/transformer/MuxerWrapper;->listener:Landroidx/media3/transformer/MuxerWrapper$Listener;

    invoke-direct {p0}, Landroidx/media3/transformer/MuxerWrapper;->getCurrentOutputSizeBytes()J

    move-result-wide v0

    invoke-interface {p1, v2, v3, v0, v1}, Landroidx/media3/transformer/MuxerWrapper$Listener;->onEnded(JJ)V

    :cond_6
    :goto_1
    return-void
.end method

.method public finishWritingAndMaybeRelease(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 672
    iget v1, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerMode:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 675
    iput-boolean v1, p0, Landroidx/media3/transformer/MuxerWrapper;->isReady:Z

    .line 676
    iget-object v1, p0, Landroidx/media3/transformer/MuxerWrapper;->muxer:Landroidx/media3/muxer/Muxer;

    if-eqz v1, :cond_2

    .line 678
    :try_start_0
    invoke-interface {v1}, Landroidx/media3/muxer/Muxer;->close()V
    :try_end_0
    .catch Landroidx/media3/muxer/MuxerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    if-ne p1, v0, :cond_1

    .line 681
    invoke-virtual {v1}, Landroidx/media3/muxer/MuxerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "Failed to stop the MediaMuxer"

    .line 682
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 687
    :cond_1
    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public getSupportedSampleMimeTypes(I)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerFactory:Landroidx/media3/muxer/Muxer$Factory;

    invoke-interface {v0, p1}, Landroidx/media3/muxer/Muxer$Factory;->getSupportedSampleMimeTypes(I)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public getTrackFormat(I)Landroidx/media3/common/Format;
    .locals 1

    .line 503
    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 504
    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    iget-object p1, p1, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->format:Landroidx/media3/common/Format;

    return-object p1
.end method

.method public isEnded()Z
    .locals 2

    .line 649
    iget-boolean v0, p0, Landroidx/media3/transformer/MuxerWrapper;->isEnded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerMode:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxedPartialVideo:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxedPartialAudio:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackCount:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public setAdditionalRotationDegrees(I)V
    .locals 2

    .line 303
    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    .line 304
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/transformer/MuxerWrapper;->additionalRotationDegrees:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "The additional rotation cannot be changed after adding track formats."

    .line 303
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 306
    iput p1, p0, Landroidx/media3/transformer/MuxerWrapper;->additionalRotationDegrees:I

    return-void
.end method

.method public setTrackCount(I)V
    .locals 2

    .line 323
    iget v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    .line 327
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The track count cannot be changed after adding track formats."

    .line 326
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 329
    iput p1, p0, Landroidx/media3/transformer/MuxerWrapper;->trackCount:I

    return-void
.end method

.method public supportsSampleMimeType(Ljava/lang/String;)Z
    .locals 1

    .line 334
    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    .line 335
    invoke-virtual {p0, v0}, Landroidx/media3/transformer/MuxerWrapper;->getSupportedSampleMimeTypes(I)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public writeSample(ILjava/nio/ByteBuffer;ZJ)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    move-wide/from16 v2, p4

    .line 526
    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 527
    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    .line 528
    invoke-direct {p0, p1, v2, v3}, Landroidx/media3/transformer/MuxerWrapper;->canWriteSample(IJ)Z

    move-result v7

    .line 535
    invoke-static {p1}, Landroidx/media3/common/util/Util;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    .line 530
    const-string v0, "Muxer"

    const-string v1, "CanWriteSample"

    const-string v4, "%s:%s"

    invoke-static/range {v0 .. v5}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    .line 539
    iget-wide v8, p0, Landroidx/media3/transformer/MuxerWrapper;->firstVideoPresentationTimeUs:J

    cmp-long v8, v8, v0

    if-nez v8, :cond_2

    .line 540
    iput-wide v2, p0, Landroidx/media3/transformer/MuxerWrapper;->firstVideoPresentationTimeUs:J

    goto :goto_0

    :cond_0
    if-ne p1, v4, :cond_2

    .line 543
    iget-boolean v8, p0, Landroidx/media3/transformer/MuxerWrapper;->dropSamplesBeforeFirstVideoSample:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    .line 544
    invoke-static {v8, v5}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-wide v8, p0, Landroidx/media3/transformer/MuxerWrapper;->firstVideoPresentationTimeUs:J

    cmp-long v10, v8, v0

    if-eqz v10, :cond_1

    cmp-long v8, v2, v8

    if-gez v8, :cond_1

    .line 548
    iget-object p1, p0, Landroidx/media3/transformer/MuxerWrapper;->listener:Landroidx/media3/transformer/MuxerWrapper$Listener;

    invoke-interface {p1}, Landroidx/media3/transformer/MuxerWrapper$Listener;->onSampleWrittenOrDropped()V

    return v4

    .line 551
    :cond_1
    iget-wide v8, p0, Landroidx/media3/transformer/MuxerWrapper;->encoderDelayTimestampOffsetUs:J

    sub-long/2addr v2, v8

    :cond_2
    :goto_0
    const/4 v8, 0x0

    if-nez v7, :cond_3

    return v8

    .line 561
    :cond_3
    iget v7, v6, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->sampleCount:I

    if-nez v7, :cond_6

    if-ne p1, v5, :cond_5

    .line 562
    iget-object v5, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    .line 563
    invoke-static {v5, v4}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Landroidx/media3/transformer/MuxerWrapper;->dropSamplesBeforeFirstVideoSample:Z

    if-nez v5, :cond_5

    const-wide/16 v9, 0x0

    cmp-long v5, v2, v9

    if-lez v5, :cond_5

    .line 566
    iget-wide v11, p0, Landroidx/media3/transformer/MuxerWrapper;->firstVideoPresentationTimeUs:J

    cmp-long v0, v11, v0

    if-eqz v0, :cond_4

    move v8, v4

    :cond_4
    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Shifting first video timestamp from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to zero."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MuxerWrapper"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v9

    .line 570
    :cond_5
    iput-wide v2, v6, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->startTimeUs:J

    :cond_6
    move-wide v9, v2

    .line 572
    iget v0, v6, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->sampleCount:I

    add-int/2addr v0, v4

    iput v0, v6, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->sampleCount:I

    .line 573
    iget-wide v0, v6, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->bytesWritten:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, v6, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->bytesWritten:J

    .line 574
    iget-wide v0, v6, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->endTimeUs:J

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v6, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->endTimeUs:J

    .line 575
    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->listener:Landroidx/media3/transformer/MuxerWrapper$Listener;

    invoke-interface {v0}, Landroidx/media3/transformer/MuxerWrapper$Listener;->onSampleWrittenOrDropped()V

    .line 576
    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxer:Landroidx/media3/muxer/Muxer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    new-instance v0, Landroidx/media3/muxer/BufferInfo;

    .line 580
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    move/from16 v2, p3

    .line 581
    invoke-direct {v0, v9, v10, v1, v2}, Landroidx/media3/muxer/BufferInfo;-><init>(JII)V

    .line 582
    iget-object v1, p0, Landroidx/media3/transformer/MuxerWrapper;->muxer:Landroidx/media3/muxer/Muxer;

    iget v2, v6, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->trackId:I

    invoke-interface {v1, v2, p2, v0}, Landroidx/media3/muxer/Muxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V

    .line 589
    invoke-static {p1}, Landroidx/media3/common/util/Util;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v12

    .line 584
    const-string v7, "Muxer"

    const-string v8, "AcceptedInput"

    const-string v11, "%s"

    invoke-static/range {v7 .. v12}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V

    .line 590
    iput p1, p0, Landroidx/media3/transformer/MuxerWrapper;->previousTrackType:I

    return v4
.end method
