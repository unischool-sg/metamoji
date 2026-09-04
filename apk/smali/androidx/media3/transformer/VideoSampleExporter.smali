.class final Landroidx/media3/transformer/VideoSampleExporter;
.super Landroidx/media3/transformer/SampleExporter;
.source "VideoSampleExporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;,
        Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;,
        Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;
    }
.end annotation


# instance fields
.field private final encoderOutputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field private final encoderWrapper:Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;

.field private volatile finalFramePresentationTimeUs:J

.field private hasMuxedTimestampZero:Z

.field private lastMuxerInputBufferTimestampUs:J

.field private final videoGraph:Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/common/Format;Landroidx/media3/transformer/TransformationRequest;Landroidx/media3/common/VideoCompositorSettings;Ljava/util/List;Landroidx/media3/common/VideoFrameProcessor$Factory;Landroidx/media3/transformer/Codec$EncoderFactory;Landroidx/media3/transformer/MuxerWrapper;Landroidx/media3/common/util/Consumer;Landroidx/media3/transformer/FallbackListener;Landroidx/media3/common/DebugViewProvider;JZLcom/google/common/collect/ImmutableList;ILandroid/media/metrics/LogSessionId;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media3/common/Format;",
            "Landroidx/media3/transformer/TransformationRequest;",
            "Landroidx/media3/common/VideoCompositorSettings;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;",
            "Landroidx/media3/common/VideoFrameProcessor$Factory;",
            "Landroidx/media3/transformer/Codec$EncoderFactory;",
            "Landroidx/media3/transformer/MuxerWrapper;",
            "Landroidx/media3/common/util/Consumer<",
            "Landroidx/media3/transformer/ExportException;",
            ">;",
            "Landroidx/media3/transformer/FallbackListener;",
            "Landroidx/media3/common/DebugViewProvider;",
            "JZ",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;I",
            "Landroid/media/metrics/LogSessionId;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p8

    .line 110
    invoke-direct {v1, v0, v3}, Landroidx/media3/transformer/SampleExporter;-><init>(Landroidx/media3/common/Format;Landroidx/media3/transformer/MuxerWrapper;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    move/from16 v11, p16

    if-ge v11, v5, :cond_0

    move v12, v5

    goto :goto_0

    :cond_0
    move v12, v4

    :goto_0
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 114
    iput-wide v6, v1, Landroidx/media3/transformer/VideoSampleExporter;->finalFramePresentationTimeUs:J

    .line 115
    iput-wide v6, v1, Landroidx/media3/transformer/VideoSampleExporter;->lastMuxerInputBufferTimestampUs:J

    .line 117
    iget-object v6, v0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/ColorInfo;

    .line 119
    iget-object v7, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v8, "image/jpeg_r"

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_1

    iget v7, v6, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    if-ne v7, v8, :cond_1

    .line 124
    new-instance v7, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v7}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    const/4 v9, 0x6

    .line 126
    invoke-virtual {v7, v9}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v7

    const/4 v9, 0x7

    .line 127
    invoke-virtual {v7, v9}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v7

    .line 128
    invoke-virtual {v7, v5}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v5

    .line 129
    invoke-virtual {v5}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v5

    goto :goto_2

    .line 130
    :cond_1
    iget v5, v6, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    if-eq v5, v8, :cond_3

    iget v5, v6, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    const/16 v7, 0xa

    if-ne v5, v7, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, v6

    goto :goto_2

    .line 135
    :cond_3
    :goto_1
    sget-object v5, Landroidx/media3/common/ColorInfo;->SDR_BT709_LIMITED:Landroidx/media3/common/ColorInfo;

    .line 140
    :goto_2
    new-instance v13, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;

    .line 143
    invoke-virtual {v0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v15

    .line 145
    invoke-virtual {v3, v8}, Landroidx/media3/transformer/MuxerWrapper;->getSupportedSampleMimeTypes(I)Lcom/google/common/collect/ImmutableList;

    move-result-object v17

    move-object/from16 v18, p3

    move-object/from16 v14, p7

    move-object/from16 v19, p10

    move-object/from16 v16, p15

    move-object/from16 v20, p17

    invoke-direct/range {v13 .. v20}, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;-><init>(Landroidx/media3/transformer/Codec$EncoderFactory;Landroidx/media3/common/Format;Lcom/google/common/collect/ImmutableList;Ljava/util/List;Landroidx/media3/transformer/TransformationRequest;Landroidx/media3/transformer/FallbackListener;Landroid/media/metrics/LogSessionId;)V

    iput-object v13, v1, Landroidx/media3/transformer/VideoSampleExporter;->encoderWrapper:Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;

    .line 149
    new-instance v0, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {v0, v4}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, v1, Landroidx/media3/transformer/VideoSampleExporter;->encoderOutputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 153
    invoke-virtual {v13}, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->getHdrModeAfterFallback()I

    move-result v0

    if-ne v0, v8, :cond_4

    .line 154
    invoke-static {v6}, Landroidx/media3/common/ColorInfo;->isTransferHdr(Landroidx/media3/common/ColorInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    sget-object v5, Landroidx/media3/common/ColorInfo;->SDR_BT709_LIMITED:Landroidx/media3/common/ColorInfo;

    :cond_4
    move-object v4, v5

    .line 160
    :try_start_0
    new-instance v0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;

    if-eqz p14, :cond_5

    .line 164
    new-instance v3, Landroidx/media3/effect/MultipleInputVideoGraph$Factory;

    invoke-direct {v3, v2}, Landroidx/media3/effect/MultipleInputVideoGraph$Factory;-><init>(Landroidx/media3/common/VideoFrameProcessor$Factory;)V

    goto :goto_3

    .line 165
    :cond_5
    new-instance v3, Landroidx/media3/effect/SingleInputVideoGraph$Factory;

    invoke-direct {v3, v2}, Landroidx/media3/effect/SingleInputVideoGraph$Factory;-><init>(Landroidx/media3/common/VideoFrameProcessor$Factory;)V

    :goto_3
    move-object/from16 v2, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p9

    move-object/from16 v5, p11

    move-wide/from16 v9, p12

    invoke-direct/range {v0 .. v12}, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;-><init>(Landroidx/media3/transformer/VideoSampleExporter;Landroid/content/Context;Landroidx/media3/common/VideoGraph$Factory;Landroidx/media3/common/ColorInfo;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/VideoCompositorSettings;Ljava/util/List;Landroidx/media3/common/util/Consumer;JIZ)V

    iput-object v0, v1, Landroidx/media3/transformer/VideoSampleExporter;->videoGraph:Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;

    .line 174
    invoke-virtual {v0}, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;->initialize()V
    :try_end_0
    .catch Landroidx/media3/common/VideoFrameProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 176
    invoke-static {v0}, Landroidx/media3/transformer/ExportException;->createForVideoFrameProcessingException(Landroidx/media3/common/VideoFrameProcessingException;)Landroidx/media3/transformer/ExportException;

    move-result-object v0

    throw v0
.end method

.method static synthetic access$000(Landroidx/media3/transformer/VideoSampleExporter;)Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;
    .locals 0

    .line 75
    iget-object p0, p0, Landroidx/media3/transformer/VideoSampleExporter;->encoderWrapper:Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/media3/transformer/VideoSampleExporter;)J
    .locals 2

    .line 75
    iget-wide v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->finalFramePresentationTimeUs:J

    return-wide v0
.end method

.method static synthetic access$102(Landroidx/media3/transformer/VideoSampleExporter;J)J
    .locals 0

    .line 75
    iput-wide p1, p0, Landroidx/media3/transformer/VideoSampleExporter;->finalFramePresentationTimeUs:J

    return-wide p1
.end method


# virtual methods
.method public getInput(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;I)Landroidx/media3/transformer/GraphInput;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 184
    :try_start_0
    iget-object p1, p0, Landroidx/media3/transformer/VideoSampleExporter;->videoGraph:Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;

    invoke-virtual {p1, p3}, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;->createInput(I)Landroidx/media3/transformer/GraphInput;

    move-result-object p1
    :try_end_0
    .catch Landroidx/media3/common/VideoFrameProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 186
    invoke-static {p1}, Landroidx/media3/transformer/ExportException;->createForVideoFrameProcessingException(Landroidx/media3/common/VideoFrameProcessingException;)Landroidx/media3/transformer/ExportException;

    move-result-object p1

    throw p1
.end method

.method protected getMuxerInputBuffer()Landroidx/media3/decoder/DecoderInputBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->encoderOutputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v1, p0, Landroidx/media3/transformer/VideoSampleExporter;->encoderWrapper:Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;

    invoke-virtual {v1}, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->getOutputBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 206
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->encoderOutputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 209
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->encoderWrapper:Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;

    invoke-virtual {v0}, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    .line 210
    iget-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 214
    iget-object v1, p0, Landroidx/media3/transformer/VideoSampleExporter;->videoGraph:Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;

    invoke-virtual {v1}, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;->hasProducedFrameWithTimestampZero()Z

    move-result v1

    iget-boolean v2, p0, Landroidx/media3/transformer/VideoSampleExporter;->hasMuxedTimestampZero:Z

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Landroidx/media3/transformer/VideoSampleExporter;->finalFramePresentationTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v1, :cond_1

    .line 217
    iget-wide v1, p0, Landroidx/media3/transformer/VideoSampleExporter;->finalFramePresentationTimeUs:J

    iput-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 220
    :cond_1
    iget-object v1, p0, Landroidx/media3/transformer/VideoSampleExporter;->encoderOutputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v2, v1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 221
    iget-object v1, p0, Landroidx/media3/transformer/VideoSampleExporter;->encoderOutputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v1, v2}, Landroidx/media3/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 222
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->lastMuxerInputBufferTimestampUs:J

    .line 223
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->encoderOutputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    return-object v0
.end method

.method protected getMuxerInputFormat()Landroidx/media3/common/Format;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->encoderWrapper:Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;

    invoke-virtual {v0}, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->getOutputFormat()Landroidx/media3/common/Format;

    move-result-object v0

    return-object v0
.end method

.method protected isMuxerInputEnded()Z
    .locals 1

    .line 240
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->encoderWrapper:Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;

    invoke-virtual {v0}, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->isEnded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->videoGraph:Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;

    invoke-virtual {v0}, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;->hasEncoderReleasedAllBuffersAfterEndOfStream()Z

    move-result v0

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

.method public release()V
    .locals 1

    .line 192
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->videoGraph:Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;

    invoke-virtual {v0}, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;->release()V

    .line 193
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->encoderWrapper:Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;

    invoke-virtual {v0}, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->release()V

    return-void
.end method

.method protected releaseMuxerInputBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 228
    iget-wide v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->lastMuxerInputBufferTimestampUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 229
    iput-boolean v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->hasMuxedTimestampZero:Z

    .line 231
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->encoderWrapper:Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->releaseOutputBuffer(Z)V

    .line 232
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter;->videoGraph:Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;

    invoke-virtual {v0}, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphWrapper;->onEncoderBufferReleased()V

    return-void
.end method
