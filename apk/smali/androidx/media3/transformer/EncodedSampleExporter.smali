.class final Landroidx/media3/transformer/EncodedSampleExporter;
.super Landroidx/media3/transformer/SampleExporter;
.source "EncodedSampleExporter.java"

# interfaces
.implements Landroidx/media3/transformer/GraphInput;


# static fields
.field static final ALLOCATION_SIZE_TARGET_BYTES:J = 0x200000L

.field private static final EMPTY_BUFFER:Ljava/nio/ByteBuffer;

.field static final MAX_INPUT_BUFFER_COUNT:I = 0xc8

.field static final MIN_INPUT_BUFFER_COUNT:I = 0xa


# instance fields
.field private final availableInputBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroidx/media3/decoder/DecoderInputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final format:Landroidx/media3/common/Format;

.field private hasReachedAllocationTarget:Z

.field private final initialTimestampOffsetUs:J

.field private volatile inputEnded:Z

.field private mediaItemOffsetUs:J

.field private nextInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field private final nextMediaItemOffsetUs:Ljava/util/concurrent/atomic/AtomicLong;

.field private final pendingInputBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroidx/media3/decoder/DecoderInputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private totalBufferSizeBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 48
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Landroidx/media3/transformer/EncodedSampleExporter;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/Format;Landroidx/media3/transformer/TransformationRequest;Landroidx/media3/transformer/MuxerWrapper;Landroidx/media3/transformer/FallbackListener;J)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p3}, Landroidx/media3/transformer/SampleExporter;-><init>(Landroidx/media3/common/Format;Landroidx/media3/transformer/MuxerWrapper;)V

    .line 74
    iput-object p1, p0, Landroidx/media3/transformer/EncodedSampleExporter;->format:Landroidx/media3/common/Format;

    .line 75
    iput-wide p5, p0, Landroidx/media3/transformer/EncodedSampleExporter;->initialTimestampOffsetUs:J

    .line 76
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/EncodedSampleExporter;->nextMediaItemOffsetUs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 77
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/EncodedSampleExporter;->availableInputBuffers:Ljava/util/Queue;

    .line 78
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/EncodedSampleExporter;->pendingInputBuffers:Ljava/util/Queue;

    .line 79
    invoke-virtual {p4, p2}, Landroidx/media3/transformer/FallbackListener;->onTransformationRequestFinalized(Landroidx/media3/transformer/TransformationRequest;)V

    return-void
.end method


# virtual methods
.method public getInput(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;I)Landroidx/media3/transformer/GraphInput;
    .locals 0

    return-object p0
.end method

.method public getInputBuffer()Landroidx/media3/decoder/DecoderInputBuffer;
    .locals 5

    .line 96
    iget-object v0, p0, Landroidx/media3/transformer/EncodedSampleExporter;->nextInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Landroidx/media3/transformer/EncodedSampleExporter;->availableInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    iput-object v0, p0, Landroidx/media3/transformer/EncodedSampleExporter;->nextInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 98
    iget-boolean v1, p0, Landroidx/media3/transformer/EncodedSampleExporter;->hasReachedAllocationTarget:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/transformer/EncodedSampleExporter;->nextInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 101
    sget-object v1, Landroidx/media3/transformer/EncodedSampleExporter;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 105
    :cond_0
    iget-wide v1, p0, Landroidx/media3/transformer/EncodedSampleExporter;->totalBufferSizeBytes:J

    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/transformer/EncodedSampleExporter;->totalBufferSizeBytes:J

    .line 109
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/transformer/EncodedSampleExporter;->nextInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    return-object v0
.end method

.method protected getMuxerInputBuffer()Landroidx/media3/decoder/DecoderInputBuffer;
    .locals 1

    .line 149
    iget-object v0, p0, Landroidx/media3/transformer/EncodedSampleExporter;->pendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    return-object v0
.end method

.method protected getMuxerInputFormat()Landroidx/media3/common/Format;
    .locals 1

    .line 143
    iget-object v0, p0, Landroidx/media3/transformer/EncodedSampleExporter;->format:Landroidx/media3/common/Format;

    return-object v0
.end method

.method protected isMuxerInputEnded()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Landroidx/media3/transformer/EncodedSampleExporter;->inputEnded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/EncodedSampleExporter;->pendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onMediaItemChanged(Landroidx/media3/transformer/EditedMediaItem;JLandroidx/media3/common/Format;ZJ)V
    .locals 0

    .line 89
    iget-object p1, p0, Landroidx/media3/transformer/EncodedSampleExporter;->nextMediaItemOffsetUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p4

    iput-wide p4, p0, Landroidx/media3/transformer/EncodedSampleExporter;->mediaItemOffsetUs:J

    .line 90
    iget-object p1, p0, Landroidx/media3/transformer/EncodedSampleExporter;->nextMediaItemOffsetUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public queueInputBuffer()Z
    .locals 9

    .line 114
    iget-object v0, p0, Landroidx/media3/transformer/EncodedSampleExporter;->nextInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    .line 115
    iput-object v1, p0, Landroidx/media3/transformer/EncodedSampleExporter;->nextInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 116
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 117
    iput-boolean v2, p0, Landroidx/media3/transformer/EncodedSampleExporter;->inputEnded:Z

    goto :goto_0

    .line 119
    :cond_0
    iget-wide v3, v0, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v5, p0, Landroidx/media3/transformer/EncodedSampleExporter;->mediaItemOffsetUs:J

    iget-wide v7, p0, Landroidx/media3/transformer/EncodedSampleExporter;->initialTimestampOffsetUs:J

    add-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 120
    iget-object v1, p0, Landroidx/media3/transformer/EncodedSampleExporter;->pendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 122
    :goto_0
    iget-boolean v1, p0, Landroidx/media3/transformer/EncodedSampleExporter;->hasReachedAllocationTarget:Z

    if-nez v1, :cond_3

    .line 123
    iget-object v1, p0, Landroidx/media3/transformer/EncodedSampleExporter;->availableInputBuffers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    iget-object v3, p0, Landroidx/media3/transformer/EncodedSampleExporter;->pendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 124
    iget-wide v3, p0, Landroidx/media3/transformer/EncodedSampleExporter;->totalBufferSizeBytes:J

    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media3/transformer/EncodedSampleExporter;->totalBufferSizeBytes:J

    const/16 v0, 0xa

    if-lt v1, v0, :cond_2

    const/16 v0, 0xc8

    if-ge v1, v0, :cond_1

    const-wide/32 v0, 0x200000

    cmp-long v0, v3, v0

    if-ltz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 125
    :goto_1
    iput-boolean v0, p0, Landroidx/media3/transformer/EncodedSampleExporter;->hasReachedAllocationTarget:Z

    :cond_3
    return v2
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method protected releaseMuxerInputBuffer()V
    .locals 3

    .line 154
    iget-object v0, p0, Landroidx/media3/transformer/EncodedSampleExporter;->pendingInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 155
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    const-wide/16 v1, 0x0

    .line 156
    iput-wide v1, v0, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 157
    iget-object v1, p0, Landroidx/media3/transformer/EncodedSampleExporter;->availableInputBuffers:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
