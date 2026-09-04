.class final Landroidx/media3/transformer/AudioGraphInput;
.super Ljava/lang/Object;
.source "AudioGraphInput.java"

# interfaces
.implements Landroidx/media3/transformer/GraphInput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;
    }
.end annotation


# static fields
.field private static final MAX_AUDIO_DRIFT_ALLOWED_US:J = 0x7d0L

.field private static final MAX_INPUT_BUFFER_COUNT:I = 0xa


# instance fields
.field private audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

.field private final availableInputBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroidx/media3/decoder/DecoderInputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private currentInputBufferBeingOutput:Landroidx/media3/decoder/DecoderInputBuffer;

.field private currentItemExpectedInputDurationUs:J

.field private currentItemInputBytesRead:J

.field private currentItemSilenceAppended:Z

.field private inputBlocked:Z

.field private isCurrentItemLast:Z

.field private final outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

.field private final pendingInputBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroidx/media3/decoder/DecoderInputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingMediaItemChanges:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;",
            ">;"
        }
    .end annotation
.end field

.field private processedFirstMediaItemChange:Z

.field private queueEndOfStreamAfterSilence:Z

.field private receivedEndOfStreamFromInput:Z

.field private silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

.field private final startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-direct {v0, p3}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(Landroidx/media3/common/Format;)V

    .line 101
    invoke-static {v0}, Landroidx/media3/transformer/AudioGraph;->isInputAudioFormatValid(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Z

    move-result v1

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 104
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Landroidx/media3/transformer/AudioGraphInput;->availableInputBuffers:Ljava/util/Queue;

    const/4 v1, 0x0

    .line 105
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    move v3, v1

    :goto_0
    const/16 v4, 0xa

    const/4 v5, 0x2

    if-ge v3, v4, :cond_0

    .line 107
    new-instance v4, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {v4, v5}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    .line 108
    iput-object v2, v4, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 109
    iget-object v5, p0, Landroidx/media3/transformer/AudioGraphInput;->availableInputBuffers:Ljava/util/Queue;

    invoke-interface {v5, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    :cond_0
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingInputBuffers:Ljava/util/Queue;

    .line 112
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingMediaItemChanges:Ljava/util/Queue;

    .line 113
    new-instance v2, Landroidx/media3/transformer/SilentAudioGenerator;

    invoke-direct {v2, v0}, Landroidx/media3/transformer/SilentAudioGenerator;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    iput-object v2, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    .line 115
    invoke-static {p2, p3, v0, p1}, Landroidx/media3/transformer/AudioGraphInput;->configureProcessing(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessingPipeline;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    .line 118
    sget-object p2, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;->DEFAULT:Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;

    invoke-virtual {p1, p2}, Landroidx/media3/common/audio/AudioProcessingPipeline;->flush(Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;)V

    .line 119
    iget-object p1, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {p1}, Landroidx/media3/common/audio/AudioProcessingPipeline;->getOutputAudioFormat()Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/AudioGraphInput;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 120
    iget p2, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    if-ne p2, v5, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 122
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Landroidx/media3/transformer/AudioGraphInput;->startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 123
    iput-wide p2, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemExpectedInputDurationUs:J

    return-void
.end method

.method private appendSilence()V
    .locals 5

    .line 512
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    iget-wide v1, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemExpectedInputDurationUs:J

    .line 513
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->currentItemActualInputDurationUs()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 512
    invoke-virtual {v0, v1, v2}, Landroidx/media3/transformer/SilentAudioGenerator;->addSilence(J)V

    const/4 v0, 0x1

    .line 514
    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemSilenceAppended:Z

    .line 515
    iget-boolean v1, p0, Landroidx/media3/transformer/AudioGraphInput;->isCurrentItemLast:Z

    if-eqz v1, :cond_0

    .line 516
    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->queueEndOfStreamAfterSilence:Z

    :cond_0
    return-void
.end method

.method private clearAndAddToAvailableBuffers(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 2

    .line 450
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    const-wide/16 v0, 0x0

    .line 451
    iput-wide v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 452
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->availableInputBuffers:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private configureForPendingMediaItemChange()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingMediaItemChanges:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;

    const-wide/16 v1, 0x0

    .line 465
    iput-wide v1, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemInputBytesRead:J

    .line 466
    iget-boolean v3, v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->isLast:Z

    iput-boolean v3, p0, Landroidx/media3/transformer/AudioGraphInput;->isCurrentItemLast:Z

    const/4 v3, 0x0

    .line 467
    iput-boolean v3, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemSilenceAppended:Z

    .line 469
    iget-object v4, v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->format:Landroidx/media3/common/Format;

    if-eqz v4, :cond_0

    .line 470
    iget-wide v1, v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->durationUs:J

    iput-wide v1, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemExpectedInputDurationUs:J

    .line 471
    new-instance v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget-object v2, v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->format:Landroidx/media3/common/Format;

    invoke-direct {v1, v2}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(Landroidx/media3/common/Format;)V

    .line 472
    new-instance v2, Landroidx/media3/transformer/SilentAudioGenerator;

    invoke-direct {v2, v1}, Landroidx/media3/transformer/SilentAudioGenerator;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    iput-object v2, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    goto :goto_1

    .line 475
    :cond_0
    iget-object v4, v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-object v4, v4, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    iget-object v4, v4, Landroidx/media3/transformer/Effects;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 478
    iget-object v4, v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-wide v5, v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->durationUs:J

    .line 479
    invoke-virtual {v4, v5, v6}, Landroidx/media3/transformer/EditedMediaItem;->getDurationAfterEffectsApplied(J)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemExpectedInputDurationUs:J

    goto :goto_0

    .line 483
    :cond_1
    iget-wide v4, v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->durationUs:J

    iput-wide v4, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemExpectedInputDurationUs:J

    .line 485
    :goto_0
    iget-object v4, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    iget-object v4, v4, Landroidx/media3/transformer/SilentAudioGenerator;->audioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 486
    iget-object v5, p0, Landroidx/media3/transformer/AudioGraphInput;->startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v5, v6, v7, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 487
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->appendSilence()V

    move-object v1, v4

    .line 490
    :goto_1
    iget-boolean v2, p0, Landroidx/media3/transformer/AudioGraphInput;->processedFirstMediaItemChange:Z

    if-eqz v2, :cond_2

    .line 492
    iget-object v2, v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-object v4, v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->format:Landroidx/media3/common/Format;

    iget-object v5, p0, Landroidx/media3/transformer/AudioGraphInput;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 493
    invoke-static {v2, v4, v1, v5}, Landroidx/media3/transformer/AudioGraphInput;->configureProcessing(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessingPipeline;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    .line 499
    :cond_2
    iget-object v1, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    new-instance v2, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;

    iget-wide v4, v0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->positionOffsetUs:J

    invoke-direct {v2, v4, v5}, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;-><init>(J)V

    invoke-virtual {v1, v2}, Landroidx/media3/common/audio/AudioProcessingPipeline;->flush(Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;)V

    .line 500
    iput-boolean v3, p0, Landroidx/media3/transformer/AudioGraphInput;->receivedEndOfStreamFromInput:Z

    const/4 v0, 0x1

    .line 501
    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->processedFirstMediaItemChange:Z

    return-void
.end method

.method private static configureProcessing(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessingPipeline;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 541
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 542
    iget-boolean v1, p0, Landroidx/media3/transformer/EditedMediaItem;->flattenForSlowMotion:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-eqz v1, :cond_0

    .line 545
    new-instance v1, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;

    new-instance v2, Landroidx/media3/transformer/SegmentSpeedProvider;

    iget-object p1, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-direct {v2, p1}, Landroidx/media3/transformer/SegmentSpeedProvider;-><init>(Landroidx/media3/common/Metadata;)V

    invoke-direct {v1, v2}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;-><init>(Landroidx/media3/common/audio/SpeedProvider;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 548
    :cond_0
    iget-object p0, p0, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    iget-object p0, p0, Landroidx/media3/transformer/Effects;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 550
    iget p0, p3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    .line 551
    new-instance p0, Landroidx/media3/common/audio/SonicAudioProcessor;

    invoke-direct {p0}, Landroidx/media3/common/audio/SonicAudioProcessor;-><init>()V

    .line 552
    iget v1, p3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    invoke-virtual {p0, v1}, Landroidx/media3/common/audio/SonicAudioProcessor;->setOutputSampleRateHz(I)V

    .line 553
    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 558
    :cond_1
    iget p0, p3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    iget p0, p3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    if-ne p0, v1, :cond_3

    .line 560
    :cond_2
    new-instance p0, Landroidx/media3/common/audio/ChannelMixingAudioProcessor;

    invoke-direct {p0}, Landroidx/media3/common/audio/ChannelMixingAudioProcessor;-><init>()V

    .line 561
    iget v3, p3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    .line 562
    invoke-static {v2, v3}, Landroidx/media3/common/audio/ChannelMixingMatrix;->createForConstantGain(II)Landroidx/media3/common/audio/ChannelMixingMatrix;

    move-result-object v2

    .line 561
    invoke-virtual {p0, v2}, Landroidx/media3/common/audio/ChannelMixingAudioProcessor;->putChannelMixingMatrix(Landroidx/media3/common/audio/ChannelMixingMatrix;)V

    .line 564
    iget v2, p3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    .line 565
    invoke-static {v1, v2}, Landroidx/media3/common/audio/ChannelMixingMatrix;->createForConstantGain(II)Landroidx/media3/common/audio/ChannelMixingMatrix;

    move-result-object v1

    .line 564
    invoke-virtual {p0, v1}, Landroidx/media3/common/audio/ChannelMixingAudioProcessor;->putChannelMixingMatrix(Landroidx/media3/common/audio/ChannelMixingMatrix;)V

    .line 567
    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 570
    :cond_3
    new-instance p0, Landroidx/media3/common/audio/AudioProcessingPipeline;

    .line 571
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 572
    invoke-virtual {p0, p2}, Landroidx/media3/common/audio/AudioProcessingPipeline;->configure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    move-result-object v0

    .line 573
    iget v1, p3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    if-eq v1, p1, :cond_4

    iget v1, p3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget v2, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    if-ne v1, v2, :cond_6

    :cond_4
    iget v1, p3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    if-eq v1, p1, :cond_5

    iget v1, p3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    iget v2, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    if-ne v1, v2, :cond_6

    :cond_5
    iget v1, p3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    if-eq v1, p1, :cond_7

    iget p1, p3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    iget p3, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    if-ne p1, p3, :cond_6

    goto :goto_0

    .line 579
    :cond_6
    new-instance p0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    const-string p1, "Audio can not be modified to match downstream format"

    invoke-direct {p0, p1, p2}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Ljava/lang/String;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    throw p0

    :cond_7
    :goto_0
    return-object p0
.end method

.method private currentItemActualInputDurationUs()J
    .locals 4

    .line 521
    iget-wide v0, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemInputBytesRead:J

    iget-object v2, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    iget-object v2, v2, Landroidx/media3/transformer/SilentAudioGenerator;->audioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v2, v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 522
    iget-object v2, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    iget-object v2, v2, Landroidx/media3/transformer/SilentAudioGenerator;->audioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v2, v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private feedOutputFromInput()Ljava/nio/ByteBuffer;
    .locals 6

    .line 381
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    invoke-virtual {v0}, Landroidx/media3/transformer/SilentAudioGenerator;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    invoke-virtual {v0}, Landroidx/media3/transformer/SilentAudioGenerator;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 388
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->currentInputBufferBeingOutput:Landroidx/media3/decoder/DecoderInputBuffer;

    if-eqz v0, :cond_2

    .line 389
    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 390
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 394
    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->currentInputBufferBeingOutput:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {p0, v0}, Landroidx/media3/transformer/AudioGraphInput;->clearAndAddToAvailableBuffers(Landroidx/media3/decoder/DecoderInputBuffer;)V

    const/4 v0, 0x0

    .line 395
    iput-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->currentInputBufferBeingOutput:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 398
    :cond_2
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    if-nez v0, :cond_4

    .line 400
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingMediaItemChanges:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->shouldAppendSilence()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 401
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->appendSilence()V

    .line 403
    :cond_3
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    .line 405
    :cond_4
    iget-object v1, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 406
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v2

    iput-boolean v2, p0, Landroidx/media3/transformer/AudioGraphInput;->receivedEndOfStreamFromInput:Z

    if-eqz v1, :cond_6

    .line 411
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Landroidx/media3/transformer/AudioGraphInput;->receivedEndOfStreamFromInput:Z

    if-eqz v2, :cond_5

    goto :goto_0

    .line 420
    :cond_5
    iput-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->currentInputBufferBeingOutput:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 423
    iget-wide v2, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemInputBytesRead:J

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemInputBytesRead:J

    return-object v1

    .line 413
    :cond_6
    :goto_0
    invoke-direct {p0, v0}, Landroidx/media3/transformer/AudioGraphInput;->clearAndAddToAvailableBuffers(Landroidx/media3/decoder/DecoderInputBuffer;)V

    .line 414
    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->receivedEndOfStreamFromInput:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->shouldAppendSilence()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 415
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->appendSilence()V

    .line 417
    :cond_7
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private feedProcessingPipelineFromInput()Z
    .locals 7

    .line 331
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    invoke-virtual {v0}, Landroidx/media3/transformer/SilentAudioGenerator;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 332
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    invoke-virtual {v0}, Landroidx/media3/transformer/SilentAudioGenerator;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 333
    iget-object v3, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v3, v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->queueInput(Ljava/nio/ByteBuffer;)V

    .line 334
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 337
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    invoke-virtual {v0}, Landroidx/media3/transformer/SilentAudioGenerator;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->queueEndOfStream()V

    return v2

    :cond_1
    return v1

    .line 344
    :cond_2
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    if-nez v0, :cond_5

    .line 346
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingMediaItemChanges:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 347
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->shouldAppendSilence()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 348
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->appendSilence()V

    return v1

    .line 351
    :cond_3
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->queueEndOfStream()V

    :cond_4
    return v2

    .line 356
    :cond_5
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 357
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->shouldAppendSilence()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 358
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->appendSilence()V

    .line 359
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {p0, v0}, Landroidx/media3/transformer/AudioGraphInput;->clearAndAddToAvailableBuffers(Landroidx/media3/decoder/DecoderInputBuffer;)V

    return v1

    .line 362
    :cond_6
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->queueEndOfStream()V

    .line 363
    iput-boolean v1, p0, Landroidx/media3/transformer/AudioGraphInput;->receivedEndOfStreamFromInput:Z

    .line 364
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {p0, v0}, Landroidx/media3/transformer/AudioGraphInput;->clearAndAddToAvailableBuffers(Landroidx/media3/decoder/DecoderInputBuffer;)V

    return v2

    .line 368
    :cond_7
    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 369
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    int-to-long v3, v3

    .line 370
    iget-object v5, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v5, v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->queueInput(Ljava/nio/ByteBuffer;)V

    .line 371
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    .line 372
    iget-wide v5, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemInputBytesRead:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemInputBytesRead:J

    .line 373
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    .line 376
    :cond_8
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {p0, v0}, Landroidx/media3/transformer/AudioGraphInput;->clearAndAddToAvailableBuffers(Landroidx/media3/decoder/DecoderInputBuffer;)V

    return v1
.end method

.method private getOutputInternal()Ljava/nio/ByteBuffer;
    .locals 1

    .line 317
    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->processedFirstMediaItemChange:Z

    if-nez v0, :cond_0

    .line 318
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    .line 321
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->feedOutputFromInput()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 326
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->feedProcessingPipelineFromInput()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 327
    :cond_2
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private hasDataToOutput()Z
    .locals 3

    .line 428
    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->processedFirstMediaItemChange:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 432
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->currentInputBufferBeingOutput:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->currentInputBufferBeingOutput:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 434
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 437
    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    invoke-virtual {v0}, Landroidx/media3/transformer/SilentAudioGenerator;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 440
    :cond_2
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 443
    :cond_3
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isEnded()Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method private shouldAppendSilence()Z
    .locals 4

    .line 505
    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemSilenceAppended:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemExpectedInputDurationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 507
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->currentItemActualInputDurationUs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blockInput()V
    .locals 1

    const/4 v0, 0x1

    .line 229
    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->inputBlocked:Z

    return-void
.end method

.method public flush(J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 257
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 258
    iget-object v2, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingMediaItemChanges:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 259
    iput-boolean v3, p0, Landroidx/media3/transformer/AudioGraphInput;->processedFirstMediaItemChange:Z

    .line 260
    iget-object v2, p0, Landroidx/media3/transformer/AudioGraphInput;->availableInputBuffers:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 263
    iget-object v2, p0, Landroidx/media3/transformer/AudioGraphInput;->availableInputBuffers:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {p0, v2}, Landroidx/media3/transformer/AudioGraphInput;->clearAndAddToAvailableBuffers(Landroidx/media3/decoder/DecoderInputBuffer;)V

    .line 265
    :cond_1
    iget-object v2, p0, Landroidx/media3/transformer/AudioGraphInput;->currentInputBufferBeingOutput:Landroidx/media3/decoder/DecoderInputBuffer;

    if-eqz v2, :cond_2

    .line 266
    invoke-direct {p0, v2}, Landroidx/media3/transformer/AudioGraphInput;->clearAndAddToAvailableBuffers(Landroidx/media3/decoder/DecoderInputBuffer;)V

    const/4 v2, 0x0

    .line 267
    iput-object v2, p0, Landroidx/media3/transformer/AudioGraphInput;->currentInputBufferBeingOutput:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 269
    :cond_2
    :goto_1
    iget-object v2, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 270
    iget-object v2, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {p0, v2}, Landroidx/media3/transformer/AudioGraphInput;->clearAndAddToAvailableBuffers(Landroidx/media3/decoder/DecoderInputBuffer;)V

    goto :goto_1

    .line 272
    :cond_3
    iget-object v2, p0, Landroidx/media3/transformer/AudioGraphInput;->availableInputBuffers:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    const/16 v5, 0xa

    if-ne v2, v5, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 273
    iget-object v2, p0, Landroidx/media3/transformer/AudioGraphInput;->silentAudioGenerator:Landroidx/media3/transformer/SilentAudioGenerator;

    invoke-virtual {v2}, Landroidx/media3/transformer/SilentAudioGenerator;->flush()V

    .line 274
    iget-object v2, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    new-instance v3, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;

    invoke-direct {v3, p1, p2}, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;-><init>(J)V

    invoke-virtual {v2, v3}, Landroidx/media3/common/audio/AudioProcessingPipeline;->flush(Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;)V

    .line 275
    iput-boolean v4, p0, Landroidx/media3/transformer/AudioGraphInput;->receivedEndOfStreamFromInput:Z

    .line 276
    iput-boolean v4, p0, Landroidx/media3/transformer/AudioGraphInput;->queueEndOfStreamAfterSilence:Z

    .line 277
    iget-object p1, p0, Landroidx/media3/transformer/AudioGraphInput;->startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 278
    iput-wide v2, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemExpectedInputDurationUs:J

    .line 279
    iput-wide v0, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemInputBytesRead:J

    .line 280
    iput-boolean v4, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemSilenceAppended:Z

    .line 281
    iput-boolean v4, p0, Landroidx/media3/transformer/AudioGraphInput;->isCurrentItemLast:Z

    return-void
.end method

.method public getInputBuffer()Landroidx/media3/decoder/DecoderInputBuffer;
    .locals 1

    .line 191
    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->inputBlocked:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingMediaItemChanges:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->availableInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->getOutputInternal()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 147
    :cond_0
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->hasDataToOutput()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingMediaItemChanges:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->configureForPendingMediaItemChange()V

    .line 151
    :cond_1
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getOutputAudioFormat()Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 1

    .line 128
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    return-object v0
.end method

.method public getStartTimeUs()J
    .locals 2

    .line 220
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEnded()Z
    .locals 6

    .line 299
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInput;->hasDataToOutput()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 302
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingMediaItemChanges:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 305
    :cond_1
    iget-wide v2, p0, Landroidx/media3/transformer/AudioGraphInput;->currentItemExpectedInputDurationUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 309
    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->isCurrentItemLast:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->receivedEndOfStreamFromInput:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->queueEndOfStreamAfterSilence:Z

    if-eqz v0, :cond_3

    :cond_2
    return v2

    :cond_3
    return v1

    .line 313
    :cond_4
    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->receivedEndOfStreamFromInput:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->queueEndOfStreamAfterSilence:Z

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v2
.end method

.method public onMediaItemChanged(Landroidx/media3/transformer/EditedMediaItem;JLandroidx/media3/common/Format;ZJ)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 168
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    if-nez p4, :cond_2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v3

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 171
    :goto_1
    const-string v0, "Could not generate silent audio because duration is unknown."

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_2

    .line 175
    :cond_2
    iget-object v0, p4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 176
    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-direct {v0, p4}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(Landroidx/media3/common/Format;)V

    .line 177
    invoke-static {v0}, Landroidx/media3/transformer/AudioGraph;->isInputAudioFormatValid(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Z

    move-result v1

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 179
    :goto_2
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingMediaItemChanges:Ljava/util/Queue;

    new-instance v1, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    move-wide v7, p6

    invoke-direct/range {v1 .. v8}, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;-><init>(Landroidx/media3/transformer/EditedMediaItem;JLandroidx/media3/common/Format;ZJ)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public queueInputBuffer()Z
    .locals 6

    .line 204
    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->inputBlocked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 207
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingMediaItemChanges:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 208
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->availableInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 209
    iget-object v1, p0, Landroidx/media3/transformer/AudioGraphInput;->pendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, p0, Landroidx/media3/transformer/AudioGraphInput;->startTimeUs:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v4, v0, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 1

    .line 290
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInput;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->reset()V

    return-void
.end method

.method public unblockInput()V
    .locals 1

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInput;->inputBlocked:Z

    return-void
.end method
