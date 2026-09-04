.class final Landroidx/media3/muxer/Track;
.super Ljava/lang/Object;
.source "Track.java"


# instance fields
.field public endOfStreamTimestampUs:J

.field public final format:Landroidx/media3/common/Format;

.field public hadKeyframe:Z

.field public final id:I

.field public parsedCsd:[B

.field public final pendingSamplesBufferInfo:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroidx/media3/muxer/BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final pendingSamplesByteBuffer:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final sampleCopyEnabled:Z

.field public final sortKey:I

.field public final writtenChunkOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final writtenChunkSampleCounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final writtenSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/muxer/BufferInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroidx/media3/common/Format;IZ)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Landroidx/media3/muxer/Track;->id:I

    .line 61
    iput-object p2, p0, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    .line 62
    iput p3, p0, Landroidx/media3/muxer/Track;->sortKey:I

    .line 63
    iput-boolean p4, p0, Landroidx/media3/muxer/Track;->sampleCopyEnabled:Z

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/muxer/Track;->writtenSamples:Ljava/util/List;

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/muxer/Track;->writtenChunkOffsets:Ljava/util/List;

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/muxer/Track;->writtenChunkSampleCounts:Ljava/util/List;

    .line 67
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/muxer/Track;->pendingSamplesBufferInfo:Ljava/util/Deque;

    .line 68
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/muxer/Track;->pendingSamplesByteBuffer:Ljava/util/Deque;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 69
    iput-wide p1, p0, Landroidx/media3/muxer/Track;->endOfStreamTimestampUs:J

    return-void
.end method

.method public constructor <init>(ILandroidx/media3/common/Format;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 48
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/muxer/Track;-><init>(ILandroidx/media3/common/Format;IZ)V

    return-void
.end method


# virtual methods
.method public videoUnitTimebase()I
    .locals 1

    .line 113
    iget-object v0, p0, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->sampleRate:I

    return v0

    :cond_0
    const v0, 0x15f90

    return v0
.end method

.method public writeSampleData(Ljava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V
    .locals 4

    .line 73
    iget-wide v0, p0, Landroidx/media3/muxer/Track;->endOfStreamTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Samples can not be written after writing a sample with MediaCodec.BUFFER_FLAG_END_OF_STREAM flag"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 78
    iget v0, p2, Landroidx/media3/muxer/BufferInfo;->size:I

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 85
    :cond_1
    iget v0, p2, Landroidx/media3/muxer/BufferInfo;->flags:I

    and-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 86
    iput-boolean v1, p0, Landroidx/media3/muxer/Track;->hadKeyframe:Z

    .line 90
    :cond_2
    iget-boolean v0, p0, Landroidx/media3/muxer/Track;->hadKeyframe:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 95
    :cond_3
    iget-boolean v0, p0, Landroidx/media3/muxer/Track;->sampleCopyEnabled:Z

    if-eqz v0, :cond_4

    .line 97
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 99
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object p1, v0

    .line 103
    :cond_4
    new-instance v0, Landroidx/media3/muxer/BufferInfo;

    iget-wide v1, p2, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    .line 105
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    iget p2, p2, Landroidx/media3/muxer/BufferInfo;->flags:I

    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/media3/muxer/BufferInfo;-><init>(JII)V

    .line 107
    iget-object p2, p0, Landroidx/media3/muxer/Track;->pendingSamplesBufferInfo:Ljava/util/Deque;

    invoke-interface {p2, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 108
    iget-object p2, p0, Landroidx/media3/muxer/Track;->pendingSamplesByteBuffer:Ljava/util/Deque;

    invoke-interface {p2, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    return-void

    .line 79
    :cond_5
    :goto_1
    iget p1, p2, Landroidx/media3/muxer/BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_6

    .line 80
    iget-wide p1, p2, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    iput-wide p1, p0, Landroidx/media3/muxer/Track;->endOfStreamTimestampUs:J

    :cond_6
    :goto_2
    return-void
.end method
