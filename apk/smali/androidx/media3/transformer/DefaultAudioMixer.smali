.class public final Landroidx/media3/transformer/DefaultAudioMixer;
.super Ljava/lang/Object;
.source "DefaultAudioMixer.java"

# interfaces
.implements Landroidx/media3/transformer/AudioMixer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;,
        Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;,
        Landroidx/media3/transformer/DefaultAudioMixer$Factory;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE_MS:I = 0x1f4


# instance fields
.field private bufferSizeFrames:I

.field private final clipFloatOutput:Z

.field private endPosition:J

.field private inputLimit:J

.field private maxPositionOfRemovedSources:J

.field private mixerStartTimeUs:J

.field private mixingBuffers:[Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;

.field private nextSourceId:I

.field private outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

.field private outputPosition:J

.field private final outputSilenceWithNoSources:Z

.field private final sources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final useConstantPowerMixingMatrices:Z


# direct methods
.method private constructor <init>(ZZZ)V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-boolean p1, p0, Landroidx/media3/transformer/DefaultAudioMixer;->outputSilenceWithNoSources:Z

    .line 152
    iput-boolean p2, p0, Landroidx/media3/transformer/DefaultAudioMixer;->clipFloatOutput:Z

    .line 153
    iput-boolean p3, p0, Landroidx/media3/transformer/DefaultAudioMixer;->useConstantPowerMixingMatrices:Z

    .line 154
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Landroidx/media3/transformer/DefaultAudioMixer;->sources:Landroid/util/SparseArray;

    .line 155
    sget-object p2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object p2, p0, Landroidx/media3/transformer/DefaultAudioMixer;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    const/4 p2, -0x1

    .line 156
    iput p2, p0, Landroidx/media3/transformer/DefaultAudioMixer;->bufferSizeFrames:I

    const/4 p2, 0x0

    .line 157
    new-array p2, p2, [Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;

    iput-object p2, p0, Landroidx/media3/transformer/DefaultAudioMixer;->mixingBuffers:[Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 158
    iput-wide p2, p0, Landroidx/media3/transformer/DefaultAudioMixer;->mixerStartTimeUs:J

    const-wide/16 p2, -0x1

    .line 159
    iput-wide p2, p0, Landroidx/media3/transformer/DefaultAudioMixer;->inputLimit:J

    const-wide p2, 0x7fffffffffffffffL

    .line 160
    iput-wide p2, p0, Landroidx/media3/transformer/DefaultAudioMixer;->endPosition:J

    if-eqz p1, :cond_0

    .line 162
    iput-wide p2, p0, Landroidx/media3/transformer/DefaultAudioMixer;->maxPositionOfRemovedSources:J

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(ZZZLandroidx/media3/transformer/DefaultAudioMixer$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/transformer/DefaultAudioMixer;-><init>(ZZZ)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/transformer/DefaultAudioMixer;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->clipFloatOutput:Z

    return p0
.end method

.method private allocateMixingBuffer(J)Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;
    .locals 8

    .line 389
    iget v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->bufferSizeFrames:I

    iget-object v1, p0, Landroidx/media3/transformer/DefaultAudioMixer;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v1, v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    mul-int/2addr v0, v1

    .line 390
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 391
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 392
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 393
    new-instance v2, Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;

    iget v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->bufferSizeFrames:I

    int-to-long v0, v0

    add-long v6, p1, v0

    move-wide v4, p1

    invoke-direct/range {v2 .. v7}, Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;-><init>(Ljava/nio/ByteBuffer;JJ)V

    return-object v2
.end method

.method private checkStateIsConfigured()V
    .locals 2

    .line 385
    iget-object v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    sget-object v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-virtual {v0, v1}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Audio mixer is not configured."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method

.method private getSourceById(I)Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;
    .locals 2

    .line 401
    iget-object v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->sources:Landroid/util/SparseArray;

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v0

    const-string v1, "Source not found."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 402
    iget-object v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->sources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;

    return-object p1
.end method

.method private updateInputFrameLimit()V
    .locals 6

    .line 397
    iget-wide v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->endPosition:J

    iget-wide v2, p0, Landroidx/media3/transformer/DefaultAudioMixer;->outputPosition:J

    iget v4, p0, Landroidx/media3/transformer/DefaultAudioMixer;->bufferSizeFrames:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->inputLimit:J

    return-void
.end method


# virtual methods
.method public addSource(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;J)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Landroidx/media3/transformer/DefaultAudioMixer;->checkStateIsConfigured()V

    .line 217
    invoke-virtual {p0, p1}, Landroidx/media3/transformer/DefaultAudioMixer;->supportsSourceAudioFormat(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    iget-wide v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->mixerStartTimeUs:J

    sub-long v0, p2, v0

    iget v2, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 223
    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->durationUsToSampleCount(JI)J

    move-result-wide v7

    .line 225
    iget v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->nextSourceId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/media3/transformer/DefaultAudioMixer;->nextSourceId:I

    .line 226
    iget-object v1, p0, Landroidx/media3/transformer/DefaultAudioMixer;->sources:Landroid/util/SparseArray;

    new-instance v3, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;

    .line 230
    iget-boolean v2, p0, Landroidx/media3/transformer/DefaultAudioMixer;->useConstantPowerMixingMatrices:Z

    if-eqz v2, :cond_0

    .line 231
    iget v2, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    iget-object v4, p0, Landroidx/media3/transformer/DefaultAudioMixer;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v4, v4, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-static {v2, v4}, Landroidx/media3/common/audio/ChannelMixingMatrix;->createForConstantPower(II)Landroidx/media3/common/audio/ChannelMixingMatrix;

    move-result-object v2

    goto :goto_0

    .line 232
    :cond_0
    iget v2, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    iget-object v4, p0, Landroidx/media3/transformer/DefaultAudioMixer;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v4, v4, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-static {v2, v4}, Landroidx/media3/common/audio/ChannelMixingMatrix;->createForConstantGain(II)Landroidx/media3/common/audio/ChannelMixingMatrix;

    move-result-object v2

    :goto_0
    move-object v4, p0

    move-object v5, p1

    move-object v6, v2

    invoke-direct/range {v3 .. v8}, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;-><init>(Landroidx/media3/transformer/DefaultAudioMixer;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;Landroidx/media3/common/audio/ChannelMixingMatrix;J)V

    .line 226
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 240
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, v5}, [Ljava/lang/Object;

    move-result-object v10

    .line 235
    const-string v5, "AudioMixer"

    const-string v6, "RegisterNewInputStream"

    const-string/jumbo v9, "source(%s):%s"

    move-wide v7, p2

    invoke-static/range {v5 .. v10}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    move-object v4, p0

    move-object v5, p1

    .line 218
    new-instance p1, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Can not add source. MixerFormat="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v4, Landroidx/media3/transformer/DefaultAudioMixer;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v5}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Ljava/lang/String;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    throw p1
.end method

.method public configure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    sget-object v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 170
    invoke-virtual {v0, v1}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Audio mixer already configured."

    .line 169
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x1f4

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 175
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 177
    invoke-static {p1}, Landroidx/media3/common/audio/AudioMixingUtil;->canMix(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    iput-object p1, p0, Landroidx/media3/transformer/DefaultAudioMixer;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 182
    iget v2, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    mul-int/2addr p2, v2

    div-int/lit16 p2, p2, 0x3e8

    iput p2, p0, Landroidx/media3/transformer/DefaultAudioMixer;->bufferSizeFrames:I

    .line 183
    iput-wide p3, p0, Landroidx/media3/transformer/DefaultAudioMixer;->mixerStartTimeUs:J

    .line 184
    const-string v6, "%s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v2, "AudioMixer"

    const-string v3, "OutputFormat"

    move-wide v4, p3

    invoke-static/range {v2 .. v7}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 191
    new-array p1, p1, [Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;

    const-wide/16 p2, 0x0

    .line 192
    invoke-direct {p0, p2, p3}, Landroidx/media3/transformer/DefaultAudioMixer;->allocateMixingBuffer(J)Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;

    move-result-object p2

    aput-object p2, p1, v1

    iget p2, p0, Landroidx/media3/transformer/DefaultAudioMixer;->bufferSizeFrames:I

    int-to-long p2, p2

    invoke-direct {p0, p2, p3}, Landroidx/media3/transformer/DefaultAudioMixer;->allocateMixingBuffer(J)Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;

    move-result-object p2

    aput-object p2, p1, v0

    iput-object p1, p0, Landroidx/media3/transformer/DefaultAudioMixer;->mixingBuffers:[Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;

    .line 193
    invoke-direct {p0}, Landroidx/media3/transformer/DefaultAudioMixer;->updateInputFrameLimit()V

    return-void

    .line 178
    :cond_2
    new-instance p2, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    const-string p3, "Can not mix to this AudioFormat."

    invoke-direct {p2, p3, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Ljava/lang/String;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    throw p2
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 11

    .line 319
    invoke-direct {p0}, Landroidx/media3/transformer/DefaultAudioMixer;->checkStateIsConfigured()V

    .line 320
    invoke-virtual {p0}, Landroidx/media3/transformer/DefaultAudioMixer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    .line 324
    :cond_0
    iget-wide v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->endPosition:J

    .line 325
    iget-object v2, p0, Landroidx/media3/transformer/DefaultAudioMixer;->sources:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 326
    iget-wide v2, p0, Landroidx/media3/transformer/DefaultAudioMixer;->maxPositionOfRemovedSources:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    .line 329
    :goto_0
    iget-object v4, p0, Landroidx/media3/transformer/DefaultAudioMixer;->sources:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 330
    iget-object v4, p0, Landroidx/media3/transformer/DefaultAudioMixer;->sources:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;

    iget-wide v4, v4, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->position:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 333
    :cond_2
    iget-wide v3, p0, Landroidx/media3/transformer/DefaultAudioMixer;->outputPosition:J

    cmp-long v3, v0, v3

    if-gtz v3, :cond_3

    .line 334
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    .line 337
    :cond_3
    iget-object v3, p0, Landroidx/media3/transformer/DefaultAudioMixer;->mixingBuffers:[Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;

    aget-object v3, v3, v2

    .line 338
    iget-wide v4, v3, Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;->limit:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 339
    iget-object v4, v3, Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 340
    iget-wide v5, p0, Landroidx/media3/transformer/DefaultAudioMixer;->outputPosition:J

    iget-wide v7, v3, Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;->position:J

    sub-long/2addr v5, v7

    long-to-int v5, v5

    iget-object v6, p0, Landroidx/media3/transformer/DefaultAudioMixer;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v6, v6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    mul-int/2addr v5, v6

    .line 341
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    iget-wide v6, v3, Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;->position:J

    sub-long v6, v0, v6

    long-to-int v6, v6

    iget-object v7, p0, Landroidx/media3/transformer/DefaultAudioMixer;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v7, v7, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    mul-int/2addr v6, v7

    .line 342
    invoke-virtual {v5, v6}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 343
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 345
    iget-wide v5, v3, Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;->limit:J

    cmp-long v3, v0, v5

    if-nez v3, :cond_4

    .line 347
    iget-object v3, p0, Landroidx/media3/transformer/DefaultAudioMixer;->mixingBuffers:[Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    aput-object v6, v3, v2

    .line 348
    iget-wide v6, v6, Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;->limit:J

    invoke-direct {p0, v6, v7}, Landroidx/media3/transformer/DefaultAudioMixer;->allocateMixingBuffer(J)Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;

    move-result-object v2

    aput-object v2, v3, v5

    .line 351
    :cond_4
    iput-wide v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->outputPosition:J

    .line 352
    invoke-direct {p0}, Landroidx/media3/transformer/DefaultAudioMixer;->updateInputFrameLimit()V

    .line 359
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v10

    .line 354
    const-string v5, "AudioMixer"

    const-string v6, "ProducedOutput"

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-string v9, "bytesOutput=%s"

    invoke-static/range {v5 .. v10}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V

    return-object v4
.end method

.method public hasSource(I)Z
    .locals 1

    .line 248
    invoke-direct {p0}, Landroidx/media3/transformer/DefaultAudioMixer;->checkStateIsConfigured()V

    .line 249
    iget-object v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->sources:Landroid/util/SparseArray;

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result p1

    return p1
.end method

.method public isEnded()Z
    .locals 4

    .line 365
    invoke-direct {p0}, Landroidx/media3/transformer/DefaultAudioMixer;->checkStateIsConfigured()V

    .line 366
    iget-wide v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->outputPosition:J

    iget-wide v2, p0, Landroidx/media3/transformer/DefaultAudioMixer;->endPosition:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    iget-wide v2, p0, Landroidx/media3/transformer/DefaultAudioMixer;->maxPositionOfRemovedSources:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->sources:Landroid/util/SparseArray;

    .line 367
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public queueInput(ILjava/nio/ByteBuffer;)V
    .locals 11

    .line 271
    invoke-direct {p0}, Landroidx/media3/transformer/DefaultAudioMixer;->checkStateIsConfigured()V

    .line 272
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 276
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/transformer/DefaultAudioMixer;->getSourceById(I)Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;

    move-result-object v1

    .line 277
    iget-wide v2, v1, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->position:J

    iget-wide v4, p0, Landroidx/media3/transformer/DefaultAudioMixer;->inputLimit:J

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    goto/16 :goto_2

    .line 281
    :cond_1
    invoke-virtual {v1, p2}, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->getPositionAfterBuffer(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/media3/transformer/DefaultAudioMixer;->inputLimit:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 282
    invoke-virtual {v1}, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->getChannelMixingMatrix()Landroidx/media3/common/audio/ChannelMixingMatrix;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/audio/ChannelMixingMatrix;->isZero()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 284
    invoke-virtual {v1, p2, v7, v8}, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->discardTo(Ljava/nio/ByteBuffer;J)V

    return-void

    .line 288
    :cond_2
    iget-wide v2, v1, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->position:J

    iget-wide v4, p0, Landroidx/media3/transformer/DefaultAudioMixer;->outputPosition:J

    cmp-long p1, v2, v4

    if-gez p1, :cond_3

    .line 290
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3}, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->discardTo(Ljava/nio/ByteBuffer;J)V

    .line 291
    iget-wide v2, v1, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->position:J

    cmp-long p1, v2, v7

    if-nez p1, :cond_3

    goto :goto_2

    .line 296
    :cond_3
    iget-object p1, p0, Landroidx/media3/transformer/DefaultAudioMixer;->mixingBuffers:[Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;

    array-length v0, p1

    const/4 v2, 0x0

    move v9, v2

    :goto_0
    if-ge v9, v0, :cond_6

    aget-object v10, p1, v9

    .line 297
    iget-wide v2, v1, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->position:J

    iget-wide v4, v10, Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;->limit:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    move-object v2, p2

    goto :goto_1

    .line 301
    :cond_4
    iget-wide v2, v1, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->position:J

    iget-wide v4, v10, Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;->position:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iget-object v3, p0, Landroidx/media3/transformer/DefaultAudioMixer;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v3, v3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    mul-int/2addr v2, v3

    .line 303
    iget-object v3, v10, Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v4, v10, Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 304
    iget-wide v2, v10, Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;->limit:J

    .line 306
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iget-object v5, v10, Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Landroidx/media3/transformer/DefaultAudioMixer;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    move-object v2, p2

    .line 304
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->mixTo(Ljava/nio/ByteBuffer;JLjava/nio/ByteBuffer;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    .line 309
    iget-object p2, v10, Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 311
    iget-wide v3, v1, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->position:J

    cmp-long p2, v3, v7

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v9, v9, 0x1

    move-object p2, v2

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method public removeSource(I)V
    .locals 4

    .line 263
    invoke-direct {p0}, Landroidx/media3/transformer/DefaultAudioMixer;->checkStateIsConfigured()V

    .line 264
    iget-wide v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->maxPositionOfRemovedSources:J

    .line 265
    invoke-direct {p0, p1}, Landroidx/media3/transformer/DefaultAudioMixer;->getSourceById(I)Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;

    move-result-object v2

    iget-wide v2, v2, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->position:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->maxPositionOfRemovedSources:J

    .line 266
    iget-object v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->sources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public reset()V
    .locals 5

    .line 372
    iget-object v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->sources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 373
    iput v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->nextSourceId:I

    .line 374
    sget-object v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v1, p0, Landroidx/media3/transformer/DefaultAudioMixer;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    const/4 v1, -0x1

    .line 375
    iput v1, p0, Landroidx/media3/transformer/DefaultAudioMixer;->bufferSizeFrames:I

    .line 376
    new-array v0, v0, [Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;

    iput-object v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->mixingBuffers:[Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 377
    iput-wide v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->mixerStartTimeUs:J

    const-wide/16 v0, -0x1

    .line 378
    iput-wide v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->inputLimit:J

    const-wide/16 v0, 0x0

    .line 379
    iput-wide v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->outputPosition:J

    const-wide v2, 0x7fffffffffffffffL

    .line 380
    iput-wide v2, p0, Landroidx/media3/transformer/DefaultAudioMixer;->endPosition:J

    .line 381
    iget-boolean v4, p0, Landroidx/media3/transformer/DefaultAudioMixer;->outputSilenceWithNoSources:Z

    if-eqz v4, :cond_0

    move-wide v0, v2

    :cond_0
    iput-wide v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->maxPositionOfRemovedSources:J

    return-void
.end method

.method public setEndTimeUs(J)V
    .locals 2

    .line 198
    invoke-direct {p0}, Landroidx/media3/transformer/DefaultAudioMixer;->checkStateIsConfigured()V

    .line 199
    iget-wide v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->mixerStartTimeUs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "End time must be at least the configured start time."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 202
    iget-wide v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->mixerStartTimeUs:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v0, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 203
    invoke-static {p1, p2, v0}, Landroidx/media3/common/util/Util;->durationUsToSampleCount(JI)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/transformer/DefaultAudioMixer;->endPosition:J

    .line 204
    invoke-direct {p0}, Landroidx/media3/transformer/DefaultAudioMixer;->updateInputFrameLimit()V

    return-void
.end method

.method public setSourceVolume(IF)V
    .locals 2

    .line 254
    invoke-direct {p0}, Landroidx/media3/transformer/DefaultAudioMixer;->checkStateIsConfigured()V

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 255
    :goto_0
    const-string v1, "Volume must be non-negative."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 257
    invoke-direct {p0, p1}, Landroidx/media3/transformer/DefaultAudioMixer;->getSourceById(I)Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;

    move-result-object p1

    .line 258
    invoke-virtual {p1, p2}, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->setVolume(F)V

    return-void
.end method

.method public supportsSourceAudioFormat(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Z
    .locals 1

    .line 209
    invoke-direct {p0}, Landroidx/media3/transformer/DefaultAudioMixer;->checkStateIsConfigured()V

    .line 210
    iget-object v0, p0, Landroidx/media3/transformer/DefaultAudioMixer;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-static {p1, v0}, Landroidx/media3/common/audio/AudioMixingUtil;->canMix(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Z

    move-result p1

    return p1
.end method
