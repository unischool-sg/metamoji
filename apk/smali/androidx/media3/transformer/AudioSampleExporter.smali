.class final Landroidx/media3/transformer/AudioSampleExporter;
.super Landroidx/media3/transformer/SampleExporter;
.source "AudioSampleExporter.java"


# instance fields
.field private final audioGraph:Landroidx/media3/transformer/AudioGraph;

.field private final encoder:Landroidx/media3/transformer/Codec;

.field private final encoderInputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

.field private final encoderOutputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field private encoderTotalInputBytes:J

.field private final firstInput:Landroidx/media3/transformer/AudioGraphInput;

.field private final firstInputFormat:Landroidx/media3/common/Format;

.field private final nextEncoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field private partiallyFilledEncoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field private returnedFirstInput:Z


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;Landroidx/media3/common/Format;Landroidx/media3/transformer/TransformationRequest;Landroidx/media3/transformer/EditedMediaItem;Lcom/google/common/collect/ImmutableList;Landroidx/media3/transformer/AudioMixer$Factory;Landroidx/media3/transformer/Codec$EncoderFactory;Landroidx/media3/transformer/MuxerWrapper;Landroidx/media3/transformer/FallbackListener;Landroid/media/metrics/LogSessionId;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Format;",
            "Landroidx/media3/common/Format;",
            "Landroidx/media3/transformer/TransformationRequest;",
            "Landroidx/media3/transformer/EditedMediaItem;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/audio/AudioProcessor;",
            ">;",
            "Landroidx/media3/transformer/AudioMixer$Factory;",
            "Landroidx/media3/transformer/Codec$EncoderFactory;",
            "Landroidx/media3/transformer/MuxerWrapper;",
            "Landroidx/media3/transformer/FallbackListener;",
            "Landroid/media/metrics/LogSessionId;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p8}, Landroidx/media3/transformer/SampleExporter;-><init>(Landroidx/media3/common/Format;Landroidx/media3/transformer/MuxerWrapper;)V

    .line 67
    new-instance v0, Landroidx/media3/common/audio/SonicAudioProcessor;

    invoke-direct {v0}, Landroidx/media3/common/audio/SonicAudioProcessor;-><init>()V

    .line 68
    new-instance v1, Landroidx/media3/transformer/AudioGraph;

    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 72
    invoke-virtual {v2, p5}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p5

    .line 73
    invoke-virtual {p5, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p5

    .line 74
    invoke-virtual {p5}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p5

    invoke-direct {v1, p6, p5}, Landroidx/media3/transformer/AudioGraph;-><init>(Landroidx/media3/transformer/AudioMixer$Factory;Lcom/google/common/collect/ImmutableList;)V

    iput-object v1, p0, Landroidx/media3/transformer/AudioSampleExporter;->audioGraph:Landroidx/media3/transformer/AudioGraph;

    .line 75
    iput-object p2, p0, Landroidx/media3/transformer/AudioSampleExporter;->firstInputFormat:Landroidx/media3/common/Format;

    .line 77
    invoke-virtual {v1, p4, p2}, Landroidx/media3/transformer/AudioGraph;->registerInput(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;)Landroidx/media3/transformer/AudioGraphInput;

    move-result-object p5

    .line 78
    invoke-virtual {v1}, Landroidx/media3/transformer/AudioGraph;->getOutputAudioFormat()Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    move-result-object p6

    .line 79
    sget-object v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-virtual {p6, v2}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 81
    new-instance v2, Landroidx/media3/common/Format$Builder;

    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 84
    iget-object v4, p3, Landroidx/media3/transformer/TransformationRequest;->audioMimeType:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 85
    iget-object p1, p3, Landroidx/media3/transformer/TransformationRequest;->audioMimeType:Ljava/lang/String;

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 83
    :goto_0
    invoke-virtual {v2, p1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    iget v2, p6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 87
    invoke-virtual {p1, v2}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    iget v2, p6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    .line 88
    invoke-virtual {p1, v2}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    iget v2, p6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    .line 89
    invoke-virtual {p1, v2}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    iget-object v2, p2, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 90
    invoke-virtual {p1, v2}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 101
    invoke-virtual {p8, v3}, Landroidx/media3/transformer/MuxerWrapper;->getSupportedSampleMimeTypes(I)Lcom/google/common/collect/ImmutableList;

    move-result-object p8

    .line 99
    invoke-static {p1, p8}, Landroidx/media3/transformer/AudioSampleExporter;->findSupportedMimeTypeForEncoderAndMuxer(Landroidx/media3/common/Format;Ljava/util/List;)Ljava/lang/String;

    move-result-object p8

    .line 98
    invoke-virtual {v2, p8}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p8

    .line 102
    invoke-virtual {p8}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p8

    .line 95
    invoke-interface {p7, p8, p10}, Landroidx/media3/transformer/Codec$EncoderFactory;->createForAudioEncoding(Landroidx/media3/common/Format;Landroid/media/metrics/LogSessionId;)Landroidx/media3/transformer/Codec;

    move-result-object p7

    iput-object p7, p0, Landroidx/media3/transformer/AudioSampleExporter;->encoder:Landroidx/media3/transformer/Codec;

    .line 105
    new-instance p8, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-interface {p7}, Landroidx/media3/transformer/Codec;->getInputFormat()Landroidx/media3/common/Format;

    move-result-object p10

    invoke-direct {p8, p10}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(Landroidx/media3/common/Format;)V

    .line 109
    iget p10, p8, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget v2, p6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    if-eq p10, v2, :cond_1

    .line 110
    invoke-virtual {v1}, Landroidx/media3/transformer/AudioGraph;->reset()V

    .line 111
    iget p5, p8, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    invoke-virtual {v0, p5}, Landroidx/media3/common/audio/SonicAudioProcessor;->setOutputSampleRateHz(I)V

    .line 112
    invoke-virtual {v1, p4, p2}, Landroidx/media3/transformer/AudioGraph;->registerInput(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;)Landroidx/media3/transformer/AudioGraphInput;

    move-result-object p5

    .line 113
    invoke-virtual {v1}, Landroidx/media3/transformer/AudioGraph;->getOutputAudioFormat()Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    move-result-object p6

    .line 115
    :cond_1
    iput-object p5, p0, Landroidx/media3/transformer/AudioSampleExporter;->firstInput:Landroidx/media3/transformer/AudioGraphInput;

    .line 116
    iput-object p6, p0, Landroidx/media3/transformer/AudioSampleExporter;->encoderInputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 118
    new-instance p2, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p2, p0, Landroidx/media3/transformer/AudioSampleExporter;->nextEncoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 119
    new-instance p2, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {p2, p4}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p2, p0, Landroidx/media3/transformer/AudioSampleExporter;->encoderOutputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 125
    invoke-interface {p7}, Landroidx/media3/transformer/Codec;->getConfigurationFormat()Landroidx/media3/common/Format;

    move-result-object p2

    .line 122
    invoke-static {p3, p1, p2}, Landroidx/media3/transformer/AudioSampleExporter;->createFallbackTransformationRequest(Landroidx/media3/transformer/TransformationRequest;Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/transformer/TransformationRequest;

    move-result-object p1

    .line 121
    invoke-virtual {p9, p1}, Landroidx/media3/transformer/FallbackListener;->onTransformationRequestFinalized(Landroidx/media3/transformer/TransformationRequest;)V

    return-void
.end method

.method private static createFallbackTransformationRequest(Landroidx/media3/transformer/TransformationRequest;Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/transformer/TransformationRequest;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 249
    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 252
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/transformer/TransformationRequest;->buildUpon()Landroidx/media3/transformer/TransformationRequest$Builder;

    move-result-object p0

    iget-object p1, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/media3/transformer/TransformationRequest$Builder;->setAudioMimeType(Ljava/lang/String;)Landroidx/media3/transformer/TransformationRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/transformer/TransformationRequest$Builder;->build()Landroidx/media3/transformer/TransformationRequest;

    move-result-object p0

    return-object p0
.end method

.method private getOutputAudioDurationUs()J
    .locals 4

    .line 256
    iget-wide v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->encoderTotalInputBytes:J

    iget-object v2, p0, Landroidx/media3/transformer/AudioSampleExporter;->encoderInputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v2, v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    .line 257
    iget-object v2, p0, Landroidx/media3/transformer/AudioSampleExporter;->encoderInputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v2, v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private maybeFeedEncoder()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->partiallyFilledEncoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->nextEncoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 204
    :cond_0
    iget-object v1, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 207
    :goto_0
    iget-object v2, p0, Landroidx/media3/transformer/AudioSampleExporter;->audioGraph:Landroidx/media3/transformer/AudioGraph;

    invoke-virtual {v2}, Landroidx/media3/transformer/AudioGraph;->isEnded()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/media3/transformer/AudioSampleExporter;->audioGraph:Landroidx/media3/transformer/AudioGraph;

    .line 208
    invoke-virtual {v2}, Landroidx/media3/transformer/AudioGraph;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_1

    .line 210
    iget-object v2, p0, Landroidx/media3/transformer/AudioSampleExporter;->audioGraph:Landroidx/media3/transformer/AudioGraph;

    invoke-virtual {v2}, Landroidx/media3/transformer/AudioGraph;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 212
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 213
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 214
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 215
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 216
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/transformer/AudioSampleExporter;->audioGraph:Landroidx/media3/transformer/AudioGraph;

    invoke-virtual {v2}, Landroidx/media3/transformer/AudioGraph;->isEnded()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 228
    :cond_2
    iput-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->partiallyFilledEncoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    return v3

    .line 220
    :cond_3
    :goto_1
    invoke-direct {p0}, Landroidx/media3/transformer/AudioSampleExporter;->getOutputAudioDurationUs()J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 221
    iget-wide v4, p0, Landroidx/media3/transformer/AudioSampleExporter;->encoderTotalInputBytes:J

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v4, v1

    iput-wide v4, p0, Landroidx/media3/transformer/AudioSampleExporter;->encoderTotalInputBytes:J

    .line 222
    invoke-virtual {v0, v3}, Landroidx/media3/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 223
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    .line 224
    iget-object v1, p0, Landroidx/media3/transformer/AudioSampleExporter;->encoder:Landroidx/media3/transformer/Codec;

    invoke-interface {v1, v0}, Landroidx/media3/transformer/Codec;->queueInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)V

    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->partiallyFilledEncoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v0, 0x1

    return v0
.end method

.method private queueEndOfStreamToEncoder()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->partiallyFilledEncoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->nextEncoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 236
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 234
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 237
    iget-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->nextEncoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {p0}, Landroidx/media3/transformer/AudioSampleExporter;->getOutputAudioDurationUs()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 238
    iget-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->nextEncoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 239
    iget-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->nextEncoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    .line 241
    iget-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->encoder:Landroidx/media3/transformer/Codec;

    iget-object v1, p0, Landroidx/media3/transformer/AudioSampleExporter;->nextEncoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-interface {v0, v1}, Landroidx/media3/transformer/Codec;->queueInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)V

    return-void
.end method


# virtual methods
.method public getInput(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;I)Landroidx/media3/transformer/AudioGraphInput;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 131
    iget-boolean p3, p0, Landroidx/media3/transformer/AudioSampleExporter;->returnedFirstInput:Z

    if-nez p3, :cond_0

    const/4 p1, 0x1

    .line 133
    iput-boolean p1, p0, Landroidx/media3/transformer/AudioSampleExporter;->returnedFirstInput:Z

    .line 134
    iget-object p1, p0, Landroidx/media3/transformer/AudioSampleExporter;->firstInputFormat:Landroidx/media3/common/Format;

    invoke-virtual {p2, p1}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 135
    iget-object p1, p0, Landroidx/media3/transformer/AudioSampleExporter;->firstInput:Landroidx/media3/transformer/AudioGraphInput;

    return-object p1

    .line 137
    :cond_0
    iget-object p3, p0, Landroidx/media3/transformer/AudioSampleExporter;->audioGraph:Landroidx/media3/transformer/AudioGraph;

    invoke-virtual {p3, p1, p2}, Landroidx/media3/transformer/AudioGraph;->registerInput(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;)Landroidx/media3/transformer/AudioGraphInput;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getInput(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;I)Landroidx/media3/transformer/GraphInput;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/transformer/AudioSampleExporter;->getInput(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;I)Landroidx/media3/transformer/AudioGraphInput;

    move-result-object p1

    return-object p1
.end method

.method protected getMuxerInputBuffer()Landroidx/media3/decoder/DecoderInputBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->encoderOutputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v1, p0, Landroidx/media3/transformer/AudioSampleExporter;->encoder:Landroidx/media3/transformer/Codec;

    invoke-interface {v1}, Landroidx/media3/transformer/Codec;->getOutputBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 180
    iget-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->encoderOutputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 183
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->encoderOutputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v1, p0, Landroidx/media3/transformer/AudioSampleExporter;->encoder:Landroidx/media3/transformer/Codec;

    invoke-interface {v1}, Landroidx/media3/transformer/Codec;->getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v1, v0, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 184
    iget-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->encoderOutputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 185
    iget-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->encoderOutputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    return-object v0
.end method

.method protected getMuxerInputFormat()Landroidx/media3/common/Format;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->encoder:Landroidx/media3/transformer/Codec;

    invoke-interface {v0}, Landroidx/media3/transformer/Codec;->getOutputFormat()Landroidx/media3/common/Format;

    move-result-object v0

    return-object v0
.end method

.method protected isMuxerInputEnded()Z
    .locals 1

    .line 195
    iget-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->encoder:Landroidx/media3/transformer/Codec;

    invoke-interface {v0}, Landroidx/media3/transformer/Codec;->isEnded()Z

    move-result v0

    return v0
.end method

.method protected processDataUpToMuxer()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->partiallyFilledEncoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->encoder:Landroidx/media3/transformer/Codec;

    iget-object v2, p0, Landroidx/media3/transformer/AudioSampleExporter;->nextEncoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-interface {v0, v2}, Landroidx/media3/transformer/Codec;->maybeDequeueInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 154
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->audioGraph:Landroidx/media3/transformer/AudioGraph;

    invoke-virtual {v0}, Landroidx/media3/transformer/AudioGraph;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->partiallyFilledEncoderInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0}, Landroidx/media3/transformer/AudioSampleExporter;->maybeFeedEncoder()Z

    .line 159
    :cond_1
    const-string v0, "OutputEnded"

    const-wide/high16 v2, -0x8000000000000000L

    const-string v4, "AudioGraph"

    invoke-static {v4, v0, v2, v3}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 163
    invoke-direct {p0}, Landroidx/media3/transformer/AudioSampleExporter;->queueEndOfStreamToEncoder()V

    return v1

    .line 167
    :cond_2
    invoke-direct {p0}, Landroidx/media3/transformer/AudioSampleExporter;->maybeFeedEncoder()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .line 142
    iget-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->audioGraph:Landroidx/media3/transformer/AudioGraph;

    invoke-virtual {v0}, Landroidx/media3/transformer/AudioGraph;->reset()V

    .line 143
    iget-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->encoder:Landroidx/media3/transformer/Codec;

    invoke-interface {v0}, Landroidx/media3/transformer/Codec;->release()V

    return-void
.end method

.method protected releaseMuxerInputBuffer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Landroidx/media3/transformer/AudioSampleExporter;->encoder:Landroidx/media3/transformer/Codec;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/media3/transformer/Codec;->releaseOutputBuffer(Z)V

    return-void
.end method
