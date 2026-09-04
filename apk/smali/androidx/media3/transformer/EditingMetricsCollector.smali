.class final Landroidx/media3/transformer/EditingMetricsCollector;
.super Ljava/lang/Object;
.source "EditingMetricsCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;,
        Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;
    }
.end annotation


# static fields
.field private static final DATA_SPACE_RANGE_CONVERSION_MAP:Landroid/util/SparseIntArray;

.field private static final DATA_SPACE_STANDARD_CONVERSION_MAP:Landroid/util/SparseIntArray;

.field private static final DATA_SPACE_TRANSFER_CONVERSION_MAP:Landroid/util/SparseIntArray;

.field private static final ERROR_CODE_CONVERSION_MAP:Landroid/util/SparseIntArray;

.field private static final SUCCESS_PROGRESS_PERCENTAGE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "EditingMetricsCollector"


# instance fields
.field private final compositionHasAudioProcessors:Z

.field private final compositionHasVideoEffects:Z

.field private final exporterName:Ljava/lang/String;

.field private final metricsReporter:Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;

.field private final muxerName:Ljava/lang/String;

.field private final startTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 134
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/media3/transformer/EditingMetricsCollector;->ERROR_CODE_CONVERSION_MAP:Landroid/util/SparseIntArray;

    .line 135
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroidx/media3/transformer/EditingMetricsCollector;->DATA_SPACE_STANDARD_CONVERSION_MAP:Landroid/util/SparseIntArray;

    .line 136
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v2, Landroidx/media3/transformer/EditingMetricsCollector;->DATA_SPACE_RANGE_CONVERSION_MAP:Landroid/util/SparseIntArray;

    .line 137
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v3, Landroidx/media3/transformer/EditingMetricsCollector;->DATA_SPACE_TRANSFER_CONVERSION_MAP:Landroid/util/SparseIntArray;

    const/16 v4, 0x3e8

    const/4 v5, 0x1

    .line 140
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x3e9

    const/4 v6, 0x2

    .line 142
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x7d0

    const/4 v7, 0x3

    .line 145
    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x7d1

    const/4 v8, 0x4

    .line 147
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x7d2

    const/4 v8, 0x5

    .line 150
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x7d3

    .line 153
    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x7d4

    const/4 v8, 0x6

    .line 156
    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x7d5

    const/4 v9, 0x7

    .line 159
    invoke-virtual {v0, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x7d6

    const/16 v10, 0x8

    .line 162
    invoke-virtual {v0, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x7d7

    const/16 v10, 0x9

    .line 164
    invoke-virtual {v0, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x7d8

    const/16 v10, 0xa

    .line 167
    invoke-virtual {v0, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0xbb9

    const/16 v11, 0xb

    .line 170
    invoke-virtual {v0, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0xbba

    const/16 v11, 0xc

    .line 173
    invoke-virtual {v0, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0xbbb

    const/16 v11, 0xd

    .line 175
    invoke-virtual {v0, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0xfa1

    const/16 v11, 0xe

    .line 178
    invoke-virtual {v0, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0xfa2

    const/16 v11, 0xf

    .line 181
    invoke-virtual {v0, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0xfa3

    const/16 v11, 0x10

    .line 183
    invoke-virtual {v0, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x1389

    const/16 v11, 0x11

    .line 186
    invoke-virtual {v0, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x1771

    const/16 v11, 0x12

    .line 189
    invoke-virtual {v0, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x1b59

    const/16 v11, 0x13

    .line 192
    invoke-virtual {v0, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x1b5a

    .line 194
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, -0x1

    const/4 v4, 0x0

    .line 197
    invoke-virtual {v1, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v11, 0x20000

    .line 198
    invoke-virtual {v1, v6, v11}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v11, 0x10000

    .line 199
    invoke-virtual {v1, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v11, 0x60000

    .line 200
    invoke-virtual {v1, v8, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 201
    invoke-virtual {v2, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v1, 0x10000000

    .line 202
    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v1, 0x8000000

    .line 203
    invoke-virtual {v2, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 204
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v0, 0x400000

    .line 205
    invoke-virtual {v3, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v0, 0xc00000

    .line 207
    invoke-virtual {v3, v7, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v0, 0x800000

    .line 208
    invoke-virtual {v3, v6, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v0, 0x1000000

    .line 209
    invoke-virtual {v3, v10, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v0, 0x1c00000

    .line 210
    invoke-virtual {v3, v8, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v0, 0x2000000

    .line 211
    invoke-virtual {v3, v9, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Landroidx/media3/transformer/EditingMetricsCollector;->metricsReporter:Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;

    .line 243
    iput-object p2, p0, Landroidx/media3/transformer/EditingMetricsCollector;->exporterName:Ljava/lang/String;

    .line 244
    iput-object p3, p0, Landroidx/media3/transformer/EditingMetricsCollector;->muxerName:Ljava/lang/String;

    .line 245
    iput-boolean p4, p0, Landroidx/media3/transformer/EditingMetricsCollector;->compositionHasAudioProcessors:Z

    .line 246
    iput-boolean p5, p0, Landroidx/media3/transformer/EditingMetricsCollector;->compositionHasVideoEffects:Z

    .line 247
    sget-object p1, Landroidx/media3/common/util/SystemClock;->DEFAULT:Landroidx/media3/common/util/Clock;

    invoke-interface {p1}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/transformer/EditingMetricsCollector;->startTimeMs:J

    return-void
.end method

.method private createEditingEndedEventBuilder(I)Landroid/media/metrics/EditingEndedEvent$Builder;
    .locals 5

    .line 342
    sget-object v0, Landroidx/media3/common/util/SystemClock;->DEFAULT:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 343
    new-instance v2, Landroid/media/metrics/EditingEndedEvent$Builder;

    invoke-direct {v2, p1}, Landroid/media/metrics/EditingEndedEvent$Builder;-><init>(I)V

    iget-wide v3, p0, Landroidx/media3/transformer/EditingMetricsCollector;->startTimeMs:J

    sub-long/2addr v0, v3

    .line 345
    invoke-virtual {v2, v0, v1}, Landroid/media/metrics/EditingEndedEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/EditingEndedEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/transformer/EditingMetricsCollector;->exporterName:Ljava/lang/String;

    .line 346
    invoke-virtual {p1, v0}, Landroid/media/metrics/EditingEndedEvent$Builder;->setExporterName(Ljava/lang/String;)Landroid/media/metrics/EditingEndedEvent$Builder;

    move-result-object p1

    .line 347
    iget-object v0, p0, Landroidx/media3/transformer/EditingMetricsCollector;->muxerName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p1, v0}, Landroid/media/metrics/EditingEndedEvent$Builder;->setMuxerName(Ljava/lang/String;)Landroid/media/metrics/EditingEndedEvent$Builder;

    :cond_0
    return-object p1
.end method

.method private static getDataTypes(Ljava/lang/String;)J
    .locals 4

    .line 455
    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x4

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 458
    :goto_0
    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    .line 461
    :cond_1
    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    :cond_2
    return-wide v0
.end method

.method private static getEditingEndedEventErrorCode(I)I
    .locals 2

    .line 480
    sget-object v0, Landroidx/media3/transformer/EditingMetricsCollector;->ERROR_CODE_CONVERSION_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method private static getInputMediaItemInfos(Lcom/google/common/collect/ImmutableList;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/transformer/ExportResult$ProcessedInput;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/metrics/MediaItemInfo;",
            ">;"
        }
    .end annotation

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 358
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 359
    invoke-virtual {p0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/ExportResult$ProcessedInput;

    .line 360
    new-instance v3, Landroid/media/metrics/MediaItemInfo$Builder;

    invoke-direct {v3}, Landroid/media/metrics/MediaItemInfo$Builder;-><init>()V

    .line 361
    iget-wide v4, v2, Landroidx/media3/transformer/ExportResult$ProcessedInput;->durationUs:J

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v4

    .line 362
    invoke-virtual {v3, v4, v5}, Landroid/media/metrics/MediaItemInfo$Builder;->setClipDurationMillis(J)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 363
    iget-object v4, v2, Landroidx/media3/transformer/ExportResult$ProcessedInput;->videoDecoderName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 364
    iget-object v4, v2, Landroidx/media3/transformer/ExportResult$ProcessedInput;->videoDecoderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/metrics/MediaItemInfo$Builder;->addCodecName(Ljava/lang/String;)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 366
    :cond_0
    iget-object v4, v2, Landroidx/media3/transformer/ExportResult$ProcessedInput;->audioDecoderName:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 367
    iget-object v4, v2, Landroidx/media3/transformer/ExportResult$ProcessedInput;->audioDecoderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/metrics/MediaItemInfo$Builder;->addCodecName(Ljava/lang/String;)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 369
    :cond_1
    iget-object v4, v2, Landroidx/media3/transformer/ExportResult$ProcessedInput;->videoFormat:Landroidx/media3/common/Format;

    const/4 v5, -0x1

    if-eqz v4, :cond_7

    .line 371
    iget-object v6, v4, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 372
    iget-object v6, v4, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/media/metrics/MediaItemInfo$Builder;->setContainerMimeType(Ljava/lang/String;)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 374
    :cond_2
    iget-object v6, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 375
    iget-object v6, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/media/metrics/MediaItemInfo$Builder;->addSampleMimeType(Ljava/lang/String;)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 376
    iget-object v6, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v6}, Landroidx/media3/transformer/EditingMetricsCollector;->getDataTypes(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/media/metrics/MediaItemInfo$Builder;->addDataType(J)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 378
    :cond_3
    iget v6, v4, Landroidx/media3/common/Format;->frameRate:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_4

    .line 379
    iget v6, v4, Landroidx/media3/common/Format;->frameRate:F

    invoke-virtual {v3, v6}, Landroid/media/metrics/MediaItemInfo$Builder;->setVideoFrameRate(F)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 381
    :cond_4
    new-instance v6, Landroid/util/Size;

    .line 383
    iget v7, v4, Landroidx/media3/common/Format;->width:I

    if-eq v7, v5, :cond_5

    .line 384
    iget v7, v4, Landroidx/media3/common/Format;->width:I

    goto :goto_1

    :cond_5
    move v7, v5

    .line 386
    :goto_1
    iget v8, v4, Landroidx/media3/common/Format;->height:I

    if-eq v8, v5, :cond_6

    .line 387
    iget v8, v4, Landroidx/media3/common/Format;->height:I

    goto :goto_2

    :cond_6
    move v8, v5

    .line 388
    :goto_2
    invoke-direct {v6, v7, v8}, Landroid/util/Size;-><init>(II)V

    .line 389
    invoke-virtual {v3, v6}, Landroid/media/metrics/MediaItemInfo$Builder;->setVideoSize(Landroid/util/Size;)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 390
    iget-object v6, v4, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    if-eqz v6, :cond_7

    .line 391
    iget-object v4, v4, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v4}, Landroidx/media3/transformer/EditingMetricsCollector;->getVideoDataSpace(Landroidx/media3/common/ColorInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/metrics/MediaItemInfo$Builder;->setVideoDataSpace(I)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 394
    :cond_7
    iget-object v2, v2, Landroidx/media3/transformer/ExportResult$ProcessedInput;->audioFormat:Landroidx/media3/common/Format;

    if-eqz v2, :cond_a

    .line 396
    iget-object v4, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 397
    iget-object v4, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/metrics/MediaItemInfo$Builder;->addSampleMimeType(Ljava/lang/String;)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 398
    iget-object v4, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v4}, Landroidx/media3/transformer/EditingMetricsCollector;->getDataTypes(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/media/metrics/MediaItemInfo$Builder;->addDataType(J)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 400
    :cond_8
    iget v4, v2, Landroidx/media3/common/Format;->channelCount:I

    if-eq v4, v5, :cond_9

    .line 401
    iget v4, v2, Landroidx/media3/common/Format;->channelCount:I

    invoke-virtual {v3, v4}, Landroid/media/metrics/MediaItemInfo$Builder;->setAudioChannelCount(I)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 403
    :cond_9
    iget v4, v2, Landroidx/media3/common/Format;->sampleRate:I

    if-eq v4, v5, :cond_a

    .line 404
    iget v2, v2, Landroidx/media3/common/Format;->sampleRate:I

    invoke-virtual {v3, v2}, Landroid/media/metrics/MediaItemInfo$Builder;->setAudioSampleRateHz(I)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 407
    :cond_a
    invoke-virtual {v3}, Landroid/media/metrics/MediaItemInfo$Builder;->build()Landroid/media/metrics/MediaItemInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    return-object v0
.end method

.method private static getOutputMediaItemInfo(Landroidx/media3/transformer/ExportResult;)Landroid/media/metrics/MediaItemInfo;
    .locals 5

    .line 413
    new-instance v0, Landroid/media/metrics/MediaItemInfo$Builder;

    invoke-direct {v0}, Landroid/media/metrics/MediaItemInfo$Builder;-><init>()V

    .line 414
    iget-wide v1, p0, Landroidx/media3/transformer/ExportResult;->approximateDurationMs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 415
    iget-wide v1, p0, Landroidx/media3/transformer/ExportResult;->approximateDurationMs:J

    invoke-virtual {v0, v1, v2}, Landroid/media/metrics/MediaItemInfo$Builder;->setDurationMillis(J)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 417
    :cond_0
    iget-object v1, p0, Landroidx/media3/transformer/ExportResult;->audioMimeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 418
    iget-object v1, p0, Landroidx/media3/transformer/ExportResult;->audioMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/metrics/MediaItemInfo$Builder;->addSampleMimeType(Ljava/lang/String;)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 419
    iget-object v1, p0, Landroidx/media3/transformer/ExportResult;->audioMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/transformer/EditingMetricsCollector;->getDataTypes(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/media/metrics/MediaItemInfo$Builder;->addDataType(J)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 421
    :cond_1
    iget-object v1, p0, Landroidx/media3/transformer/ExportResult;->videoMimeType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 422
    iget-object v1, p0, Landroidx/media3/transformer/ExportResult;->videoMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/metrics/MediaItemInfo$Builder;->addSampleMimeType(Ljava/lang/String;)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 423
    iget-object v1, p0, Landroidx/media3/transformer/ExportResult;->videoMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/transformer/EditingMetricsCollector;->getDataTypes(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/media/metrics/MediaItemInfo$Builder;->addDataType(J)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 425
    :cond_2
    iget v1, p0, Landroidx/media3/transformer/ExportResult;->channelCount:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 426
    iget v1, p0, Landroidx/media3/transformer/ExportResult;->channelCount:I

    invoke-virtual {v0, v1}, Landroid/media/metrics/MediaItemInfo$Builder;->setAudioChannelCount(I)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 428
    :cond_3
    iget v1, p0, Landroidx/media3/transformer/ExportResult;->sampleRate:I

    const v3, -0x7fffffff

    if-eq v1, v3, :cond_4

    .line 429
    iget v1, p0, Landroidx/media3/transformer/ExportResult;->sampleRate:I

    invoke-virtual {v0, v1}, Landroid/media/metrics/MediaItemInfo$Builder;->setAudioSampleRateHz(I)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 431
    :cond_4
    iget-object v1, p0, Landroidx/media3/transformer/ExportResult;->audioEncoderName:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 432
    iget-object v1, p0, Landroidx/media3/transformer/ExportResult;->audioEncoderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/metrics/MediaItemInfo$Builder;->addCodecName(Ljava/lang/String;)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 434
    :cond_5
    iget-object v1, p0, Landroidx/media3/transformer/ExportResult;->videoEncoderName:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 435
    iget-object v1, p0, Landroidx/media3/transformer/ExportResult;->videoEncoderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/metrics/MediaItemInfo$Builder;->addCodecName(Ljava/lang/String;)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 437
    :cond_6
    iget v1, p0, Landroidx/media3/transformer/ExportResult;->videoFrameCount:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/media/metrics/MediaItemInfo$Builder;->setVideoSampleCount(J)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 438
    new-instance v1, Landroid/util/Size;

    .line 440
    iget v3, p0, Landroidx/media3/transformer/ExportResult;->width:I

    if-eq v3, v2, :cond_7

    .line 441
    iget v3, p0, Landroidx/media3/transformer/ExportResult;->width:I

    goto :goto_0

    :cond_7
    move v3, v2

    .line 443
    :goto_0
    iget v4, p0, Landroidx/media3/transformer/ExportResult;->height:I

    if-eq v4, v2, :cond_8

    .line 444
    iget v2, p0, Landroidx/media3/transformer/ExportResult;->height:I

    .line 445
    :cond_8
    invoke-direct {v1, v3, v2}, Landroid/util/Size;-><init>(II)V

    .line 446
    invoke-virtual {v0, v1}, Landroid/media/metrics/MediaItemInfo$Builder;->setVideoSize(Landroid/util/Size;)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 447
    iget-object v1, p0, Landroidx/media3/transformer/ExportResult;->colorInfo:Landroidx/media3/common/ColorInfo;

    if-eqz v1, :cond_9

    .line 448
    iget-object p0, p0, Landroidx/media3/transformer/ExportResult;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {p0}, Landroidx/media3/transformer/EditingMetricsCollector;->getVideoDataSpace(Landroidx/media3/common/ColorInfo;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/media/metrics/MediaItemInfo$Builder;->setVideoDataSpace(I)Landroid/media/metrics/MediaItemInfo$Builder;

    .line 450
    :cond_9
    invoke-virtual {v0}, Landroid/media/metrics/MediaItemInfo$Builder;->build()Landroid/media/metrics/MediaItemInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getVideoDataSpace(Landroidx/media3/common/ColorInfo;)I
    .locals 4

    .line 468
    sget-object v0, Landroidx/media3/transformer/EditingMetricsCollector;->DATA_SPACE_STANDARD_CONVERSION_MAP:Landroid/util/SparseIntArray;

    iget v1, p0, Landroidx/media3/common/ColorInfo;->colorSpace:I

    const/4 v2, 0x0

    .line 469
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 471
    sget-object v1, Landroidx/media3/transformer/EditingMetricsCollector;->DATA_SPACE_TRANSFER_CONVERSION_MAP:Landroid/util/SparseIntArray;

    iget v3, p0, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    .line 472
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 474
    sget-object v3, Landroidx/media3/transformer/EditingMetricsCollector;->DATA_SPACE_RANGE_CONVERSION_MAP:Landroid/util/SparseIntArray;

    iget p0, p0, Landroidx/media3/common/ColorInfo;->colorRange:I

    .line 475
    invoke-virtual {v3, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    .line 476
    invoke-static {v0, v1, p0}, Landroid/hardware/DataSpace;->pack(III)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$populateOperationTypes$0(Landroidx/media3/transformer/ExportResult$ProcessedInput;)Z
    .locals 0

    .line 493
    iget-object p0, p0, Landroidx/media3/transformer/ExportResult$ProcessedInput;->audioFormat:Landroidx/media3/common/Format;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$populateOperationTypes$1(Landroidx/media3/transformer/ExportResult$ProcessedInput;)Z
    .locals 0

    .line 496
    iget-object p0, p0, Landroidx/media3/transformer/ExportResult$ProcessedInput;->videoFormat:Landroidx/media3/common/Format;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private populateOperationTypes(Landroid/media/metrics/EditingEndedEvent$Builder;Landroidx/media3/transformer/ExportResult;Z)V
    .locals 3

    if-eqz p3, :cond_0

    const-wide/16 v0, 0x80

    .line 488
    invoke-virtual {p1, v0, v1}, Landroid/media/metrics/EditingEndedEvent$Builder;->addOperationType(J)Landroid/media/metrics/EditingEndedEvent$Builder;

    .line 491
    :cond_0
    iget-object p3, p2, Landroidx/media3/transformer/ExportResult;->processedInputs:Lcom/google/common/collect/ImmutableList;

    new-instance v0, Landroidx/media3/transformer/EditingMetricsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/transformer/EditingMetricsCollector$$ExternalSyntheticLambda0;-><init>()V

    .line 492
    invoke-static {p3, v0}, Lcom/google/common/collect/Iterables;->any(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result p3

    .line 494
    iget-object v0, p2, Landroidx/media3/transformer/ExportResult;->processedInputs:Lcom/google/common/collect/ImmutableList;

    new-instance v1, Landroidx/media3/transformer/EditingMetricsCollector$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroidx/media3/transformer/EditingMetricsCollector$$ExternalSyntheticLambda1;-><init>()V

    .line 495
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->any(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result v0

    if-eqz p3, :cond_2

    .line 499
    iget-object p3, p2, Landroidx/media3/transformer/ExportResult;->audioEncoderName:Ljava/lang/String;

    if-eqz p3, :cond_1

    const-wide/16 v1, 0x2

    .line 500
    invoke-virtual {p1, v1, v2}, Landroid/media/metrics/EditingEndedEvent$Builder;->addOperationType(J)Landroid/media/metrics/EditingEndedEvent$Builder;

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x20

    .line 502
    invoke-virtual {p1, v1, v2}, Landroid/media/metrics/EditingEndedEvent$Builder;->addOperationType(J)Landroid/media/metrics/EditingEndedEvent$Builder;

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 506
    iget-object p2, p2, Landroidx/media3/transformer/ExportResult;->videoEncoderName:Ljava/lang/String;

    if-eqz p2, :cond_3

    const-wide/16 p2, 0x1

    .line 507
    invoke-virtual {p1, p2, p3}, Landroid/media/metrics/EditingEndedEvent$Builder;->addOperationType(J)Landroid/media/metrics/EditingEndedEvent$Builder;

    goto :goto_1

    :cond_3
    const-wide/16 p2, 0x10

    .line 509
    invoke-virtual {p1, p2, p3}, Landroid/media/metrics/EditingEndedEvent$Builder;->addOperationType(J)Landroid/media/metrics/EditingEndedEvent$Builder;

    .line 512
    :cond_4
    :goto_1
    iget-boolean p2, p0, Landroidx/media3/transformer/EditingMetricsCollector;->compositionHasAudioProcessors:Z

    if-eqz p2, :cond_5

    const-wide/16 p2, 0x8

    .line 513
    invoke-virtual {p1, p2, p3}, Landroid/media/metrics/EditingEndedEvent$Builder;->addOperationType(J)Landroid/media/metrics/EditingEndedEvent$Builder;

    .line 515
    :cond_5
    iget-boolean p2, p0, Landroidx/media3/transformer/EditingMetricsCollector;->compositionHasVideoEffects:Z

    if-eqz p2, :cond_6

    const-wide/16 p2, 0x4

    .line 516
    invoke-virtual {p1, p2, p3}, Landroid/media/metrics/EditingEndedEvent$Builder;->addOperationType(J)Landroid/media/metrics/EditingEndedEvent$Builder;

    :cond_6
    return-void
.end method


# virtual methods
.method public onExportCancelled(I)V
    .locals 3

    const/4 v0, 0x2

    .line 322
    invoke-direct {p0, v0}, Landroidx/media3/transformer/EditingMetricsCollector;->createEditingEndedEventBuilder(I)Landroid/media/metrics/EditingEndedEvent$Builder;

    move-result-object v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    int-to-float p1, p1

    .line 324
    invoke-virtual {v0, p1}, Landroid/media/metrics/EditingEndedEvent$Builder;->setFinalProgressPercent(F)Landroid/media/metrics/EditingEndedEvent$Builder;

    .line 326
    :cond_0
    iget-boolean p1, p0, Landroidx/media3/transformer/EditingMetricsCollector;->compositionHasAudioProcessors:Z

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x8

    .line 327
    invoke-virtual {v0, v1, v2}, Landroid/media/metrics/EditingEndedEvent$Builder;->addOperationType(J)Landroid/media/metrics/EditingEndedEvent$Builder;

    .line 329
    :cond_1
    iget-boolean p1, p0, Landroidx/media3/transformer/EditingMetricsCollector;->compositionHasVideoEffects:Z

    if-eqz p1, :cond_2

    const-wide/16 v1, 0x4

    .line 330
    invoke-virtual {v0, v1, v2}, Landroid/media/metrics/EditingEndedEvent$Builder;->addOperationType(J)Landroid/media/metrics/EditingEndedEvent$Builder;

    .line 333
    :cond_2
    iget-object p1, p0, Landroidx/media3/transformer/EditingMetricsCollector;->metricsReporter:Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;

    invoke-virtual {v0}, Landroid/media/metrics/EditingEndedEvent$Builder;->build()Landroid/media/metrics/EditingEndedEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;->reportMetrics(Landroid/media/metrics/EditingEndedEvent;)V

    .line 335
    :try_start_0
    iget-object p1, p0, Landroidx/media3/transformer/EditingMetricsCollector;->metricsReporter:Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;

    invoke-interface {p1}, Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 337
    const-string v0, "EditingMetricsCollector"

    const-string v1, "error while closing the metrics reporter"

    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onExportError(ILandroidx/media3/transformer/ExportException;Landroidx/media3/transformer/ExportResult;Z)V
    .locals 1

    const/4 v0, 0x3

    .line 291
    invoke-direct {p0, v0}, Landroidx/media3/transformer/EditingMetricsCollector;->createEditingEndedEventBuilder(I)Landroid/media/metrics/EditingEndedEvent$Builder;

    move-result-object v0

    iget p2, p2, Landroidx/media3/transformer/ExportException;->errorCode:I

    .line 292
    invoke-static {p2}, Landroidx/media3/transformer/EditingMetricsCollector;->getEditingEndedEventErrorCode(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/media/metrics/EditingEndedEvent$Builder;->setErrorCode(I)Landroid/media/metrics/EditingEndedEvent$Builder;

    move-result-object p2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    int-to-float p1, p1

    .line 294
    invoke-virtual {p2, p1}, Landroid/media/metrics/EditingEndedEvent$Builder;->setFinalProgressPercent(F)Landroid/media/metrics/EditingEndedEvent$Builder;

    .line 296
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Landroidx/media3/transformer/EditingMetricsCollector;->populateOperationTypes(Landroid/media/metrics/EditingEndedEvent$Builder;Landroidx/media3/transformer/ExportResult;Z)V

    .line 298
    iget-object p1, p3, Landroidx/media3/transformer/ExportResult;->processedInputs:Lcom/google/common/collect/ImmutableList;

    .line 299
    invoke-static {p1}, Landroidx/media3/transformer/EditingMetricsCollector;->getInputMediaItemInfos(Lcom/google/common/collect/ImmutableList;)Ljava/util/List;

    move-result-object p1

    const/4 p4, 0x0

    .line 300
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_1

    .line 301
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/metrics/MediaItemInfo;

    .line 302
    invoke-virtual {p2, v0}, Landroid/media/metrics/EditingEndedEvent$Builder;->addInputMediaItemInfo(Landroid/media/metrics/MediaItemInfo;)Landroid/media/metrics/EditingEndedEvent$Builder;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 304
    :cond_1
    invoke-static {p3}, Landroidx/media3/transformer/EditingMetricsCollector;->getOutputMediaItemInfo(Landroidx/media3/transformer/ExportResult;)Landroid/media/metrics/MediaItemInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/metrics/EditingEndedEvent$Builder;->setOutputMediaItemInfo(Landroid/media/metrics/MediaItemInfo;)Landroid/media/metrics/EditingEndedEvent$Builder;

    .line 306
    iget-object p1, p0, Landroidx/media3/transformer/EditingMetricsCollector;->metricsReporter:Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;

    invoke-virtual {p2}, Landroid/media/metrics/EditingEndedEvent$Builder;->build()Landroid/media/metrics/EditingEndedEvent;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;->reportMetrics(Landroid/media/metrics/EditingEndedEvent;)V

    .line 308
    :try_start_0
    iget-object p1, p0, Landroidx/media3/transformer/EditingMetricsCollector;->metricsReporter:Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;

    invoke-interface {p1}, Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 310
    const-string p2, "EditingMetricsCollector"

    const-string p3, "error while closing the metrics reporter"

    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onExportSuccess(Landroidx/media3/transformer/ExportResult;Z)V
    .locals 3

    const/4 v0, 0x1

    .line 257
    invoke-direct {p0, v0}, Landroidx/media3/transformer/EditingMetricsCollector;->createEditingEndedEventBuilder(I)Landroid/media/metrics/EditingEndedEvent$Builder;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    .line 258
    invoke-virtual {v0, v1}, Landroid/media/metrics/EditingEndedEvent$Builder;->setFinalProgressPercent(F)Landroid/media/metrics/EditingEndedEvent$Builder;

    move-result-object v0

    .line 259
    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/transformer/EditingMetricsCollector;->populateOperationTypes(Landroid/media/metrics/EditingEndedEvent$Builder;Landroidx/media3/transformer/ExportResult;Z)V

    .line 261
    iget-object p2, p1, Landroidx/media3/transformer/ExportResult;->processedInputs:Lcom/google/common/collect/ImmutableList;

    .line 262
    invoke-static {p2}, Landroidx/media3/transformer/EditingMetricsCollector;->getInputMediaItemInfos(Lcom/google/common/collect/ImmutableList;)Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    .line 263
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 264
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/metrics/MediaItemInfo;

    .line 265
    invoke-virtual {v0, v2}, Landroid/media/metrics/EditingEndedEvent$Builder;->addInputMediaItemInfo(Landroid/media/metrics/MediaItemInfo;)Landroid/media/metrics/EditingEndedEvent$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    :cond_0
    invoke-static {p1}, Landroidx/media3/transformer/EditingMetricsCollector;->getOutputMediaItemInfo(Landroidx/media3/transformer/ExportResult;)Landroid/media/metrics/MediaItemInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/metrics/EditingEndedEvent$Builder;->setOutputMediaItemInfo(Landroid/media/metrics/MediaItemInfo;)Landroid/media/metrics/EditingEndedEvent$Builder;

    .line 269
    iget-object p1, p0, Landroidx/media3/transformer/EditingMetricsCollector;->metricsReporter:Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;

    invoke-virtual {v0}, Landroid/media/metrics/EditingEndedEvent$Builder;->build()Landroid/media/metrics/EditingEndedEvent;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;->reportMetrics(Landroid/media/metrics/EditingEndedEvent;)V

    .line 271
    :try_start_0
    iget-object p1, p0, Landroidx/media3/transformer/EditingMetricsCollector;->metricsReporter:Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;

    invoke-interface {p1}, Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 273
    const-string p2, "EditingMetricsCollector"

    const-string v0, "error while closing the metrics reporter"

    invoke-static {p2, v0, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
