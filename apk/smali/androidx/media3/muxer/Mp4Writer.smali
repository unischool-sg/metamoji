.class final Landroidx/media3/muxer/Mp4Writer;
.super Ljava/lang/Object;
.source "Mp4Writer.java"


# static fields
.field private static final DEFAULT_MOOV_BOX_SIZE_BYTES:I = 0x61a80

.field private static final FREE_BOX_TYPE:Ljava/lang/String; = "free"

.field private static final INTERLEAVE_DURATION_US:J = 0xf4240L

.field private static final MOOV_BOX_UPDATE_INTERVAL_US:J = 0xf4240L


# instance fields
.field private final annexBToAvccConverter:Landroidx/media3/muxer/AnnexBToAvccConverter;

.field private final auxiliaryTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/muxer/Track;",
            ">;"
        }
    .end annotation
.end field

.field private canWriteMoovAtStart:Z

.field private final freeSpaceAfterFtypInBytes:I

.field private final hasWrittenSamples:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastMoovWritten:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastMoovWrittenAtSampleTimestampUs:J

.field private final lastSampleDurationBehavior:I

.field private final linearByteBufferAllocator:Landroidx/media3/muxer/LinearByteBufferAllocator;

.field private mdatDataEnd:J

.field private mdatEnd:J

.field private mdatStart:J

.field private final metadataCollector:Landroidx/media3/muxer/MetadataCollector;

.field private final muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

.field private reservedMoovSpaceEnd:J

.field private reservedMoovSpaceStart:J

.field private final sampleBatchingEnabled:Z

.field private final sampleCopyEnabled:Z

.field private final tracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/muxer/Track;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/muxer/SeekableMuxerOutput;Landroidx/media3/muxer/MetadataCollector;Landroidx/media3/muxer/AnnexBToAvccConverter;IZZZI)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    .line 104
    iput-object p2, p0, Landroidx/media3/muxer/Mp4Writer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    .line 105
    iput-object p3, p0, Landroidx/media3/muxer/Mp4Writer;->annexBToAvccConverter:Landroidx/media3/muxer/AnnexBToAvccConverter;

    .line 106
    iput p4, p0, Landroidx/media3/muxer/Mp4Writer;->lastSampleDurationBehavior:I

    .line 107
    iput-boolean p5, p0, Landroidx/media3/muxer/Mp4Writer;->sampleCopyEnabled:Z

    .line 108
    iput-boolean p6, p0, Landroidx/media3/muxer/Mp4Writer;->sampleBatchingEnabled:Z

    const/4 p1, 0x0

    if-lez p8, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p7, :cond_1

    const p8, 0x61a80

    goto :goto_0

    :cond_1
    move p8, p1

    .line 112
    :goto_0
    iput p8, p0, Landroidx/media3/muxer/Mp4Writer;->freeSpaceAfterFtypInBytes:I

    .line 113
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/media3/muxer/Mp4Writer;->tracks:Ljava/util/List;

    .line 114
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/media3/muxer/Mp4Writer;->auxiliaryTracks:Ljava/util/List;

    .line 115
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Landroidx/media3/muxer/Mp4Writer;->hasWrittenSamples:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    iput-boolean p7, p0, Landroidx/media3/muxer/Mp4Writer;->canWriteMoovAtStart:Z

    const-wide/16 p2, 0x0

    .line 117
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object p4

    iput-object p4, p0, Landroidx/media3/muxer/Mp4Writer;->lastMoovWritten:Lcom/google/common/collect/Range;

    .line 118
    iput-wide p2, p0, Landroidx/media3/muxer/Mp4Writer;->lastMoovWrittenAtSampleTimestampUs:J

    .line 119
    new-instance p2, Landroidx/media3/muxer/LinearByteBufferAllocator;

    invoke-direct {p2, p1}, Landroidx/media3/muxer/LinearByteBufferAllocator;-><init>(I)V

    iput-object p2, p0, Landroidx/media3/muxer/Mp4Writer;->linearByteBufferAllocator:Landroidx/media3/muxer/LinearByteBufferAllocator;

    return-void
.end method

.method private assembleCurrentMoovData()Ljava/nio/ByteBuffer;
    .locals 4

    .line 341
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->tracks:Ljava/util/List;

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Writer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    const/4 v2, 0x0

    iget v3, p0, Landroidx/media3/muxer/Mp4Writer;->lastSampleDurationBehavior:I

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/muxer/Boxes;->moov(Ljava/util/List;Landroidx/media3/muxer/MetadataCollector;ZI)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private doInterleave()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->tracks:Ljava/util/List;

    invoke-direct {p0, v0}, Landroidx/media3/muxer/Mp4Writer;->maybeWritePendingTrackSamples(Ljava/util/List;)Z

    move-result v0

    .line 525
    iget-object v1, p0, Landroidx/media3/muxer/Mp4Writer;->auxiliaryTracks:Ljava/util/List;

    invoke-direct {p0, v1}, Landroidx/media3/muxer/Mp4Writer;->maybeWritePendingTrackSamples(Ljava/util/List;)Z

    if-eqz v0, :cond_0

    .line 527
    iget-boolean v0, p0, Landroidx/media3/muxer/Mp4Writer;->canWriteMoovAtStart:Z

    if-eqz v0, :cond_0

    .line 528
    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Writer;->maybeWriteMoovAtStart()V

    :cond_0
    return-void
.end method

.method private getAxteBox()Ljava/nio/ByteBuffer;
    .locals 6

    .line 233
    invoke-static {}, Landroidx/media3/muxer/Boxes;->ftyp()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 234
    new-instance v1, Landroidx/media3/muxer/MetadataCollector;

    invoke-direct {v1}, Landroidx/media3/muxer/MetadataCollector;-><init>()V

    .line 235
    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    iget-object v2, v2, Landroidx/media3/muxer/MetadataCollector;->timestampData:Landroidx/media3/container/Mp4TimestampData;

    iget-object v3, p0, Landroidx/media3/muxer/Mp4Writer;->auxiliaryTracks:Ljava/util/List;

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Landroidx/media3/muxer/MuxerUtil;->populateAuxiliaryTracksMetadata(Landroidx/media3/muxer/MetadataCollector;Landroidx/media3/container/Mp4TimestampData;ZLjava/util/List;)V

    .line 240
    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->auxiliaryTracks:Ljava/util/List;

    iget v3, p0, Landroidx/media3/muxer/Mp4Writer;->lastSampleDurationBehavior:I

    const/4 v5, 0x0

    .line 241
    invoke-static {v2, v1, v5, v3}, Landroidx/media3/muxer/Boxes;->moov(Ljava/util/List;Landroidx/media3/muxer/MetadataCollector;ZI)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 247
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v2, v3}, Landroidx/media3/muxer/Boxes;->getAxteBoxHeader(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x3

    .line 248
    new-array v3, v3, [Ljava/nio/ByteBuffer;

    aput-object v2, v3, v5

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    invoke-static {v3}, Landroidx/media3/muxer/BoxUtils;->concatenateBuffers([Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private getMdatExtensionAmount(J)J
    .locals 2

    const v0, 0x3e4ccccd    # 0.2f

    long-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-long p1, p1

    const-wide/32 v0, 0x7a120

    .line 548
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0x3b9aca00

    .line 547
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method static synthetic lambda$addAuxiliaryTrack$1(Landroidx/media3/muxer/Track;Landroidx/media3/muxer/Track;)I
    .locals 0

    .line 150
    iget p0, p0, Landroidx/media3/muxer/Track;->sortKey:I

    iget p1, p1, Landroidx/media3/muxer/Track;->sortKey:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$addTrack$0(Landroidx/media3/muxer/Track;Landroidx/media3/muxer/Track;)I
    .locals 0

    .line 133
    iget p0, p0, Landroidx/media3/muxer/Track;->sortKey:I

    iget p1, p1, Landroidx/media3/muxer/Track;->sortKey:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private maybeExtendMdatAndRewriteMoov(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    iget-boolean v0, p0, Landroidx/media3/muxer/Mp4Writer;->canWriteMoovAtStart:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 506
    :cond_0
    iget-wide v0, p0, Landroidx/media3/muxer/Mp4Writer;->mdatDataEnd:J

    add-long v2, v0, p1

    iget-wide v4, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 509
    invoke-direct {p0, v0, v1}, Landroidx/media3/muxer/Mp4Writer;->getMdatExtensionAmount(J)J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 508
    invoke-direct {p0, v0, v1}, Landroidx/media3/muxer/Mp4Writer;->rewriteMoovWithMdatEmptySpace(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeWriteMoovAtStart()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Writer;->assembleCurrentMoovData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 388
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    iget-wide v4, p0, Landroidx/media3/muxer/Mp4Writer;->reservedMoovSpaceEnd:J

    iget-wide v6, p0, Landroidx/media3/muxer/Mp4Writer;->reservedMoovSpaceStart:J

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    const-string v3, "free"

    const-wide/16 v4, 0x8

    if-gtz v2, :cond_0

    .line 389
    iget-object v1, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v1, v6, v7}, Landroidx/media3/muxer/SeekableMuxerOutput;->setPosition(J)V

    .line 390
    iget-object v1, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v1, v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    .line 392
    iget-wide v0, p0, Landroidx/media3/muxer/Mp4Writer;->reservedMoovSpaceEnd:J

    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v2}, Landroidx/media3/muxer/SeekableMuxerOutput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v0, v6

    sub-long/2addr v0, v4

    long-to-int v0, v0

    .line 393
    iget-object v1, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v3, v0}, Landroidx/media3/muxer/BoxUtils;->wrapIntoBox(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 396
    iput-boolean v2, p0, Landroidx/media3/muxer/Mp4Writer;->canWriteMoovAtStart:Z

    .line 397
    iget-wide v6, p0, Landroidx/media3/muxer/Mp4Writer;->mdatDataEnd:J

    iput-wide v6, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    .line 398
    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v2, v6, v7}, Landroidx/media3/muxer/SeekableMuxerOutput;->setPosition(J)V

    .line 399
    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v2, v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    .line 400
    iget-wide v6, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v6, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    int-to-long v1, v1

    add-long/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->lastMoovWritten:Lcom/google/common/collect/Range;

    .line 402
    iget-wide v0, p0, Landroidx/media3/muxer/Mp4Writer;->reservedMoovSpaceEnd:J

    iget-wide v6, p0, Landroidx/media3/muxer/Mp4Writer;->reservedMoovSpaceStart:J

    sub-long/2addr v0, v6

    sub-long/2addr v0, v4

    long-to-int v0, v0

    .line 403
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v3, v0}, Landroidx/media3/muxer/BoxUtils;->wrapIntoBox(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 404
    iget-object v1, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    iget-wide v2, p0, Landroidx/media3/muxer/Mp4Writer;->reservedMoovSpaceStart:J

    invoke-interface {v1, v2, v3}, Landroidx/media3/muxer/SeekableMuxerOutput;->setPosition(J)V

    .line 405
    iget-object v1, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v1, v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    .line 407
    :goto_0
    iget-wide v0, p0, Landroidx/media3/muxer/Mp4Writer;->mdatDataEnd:J

    iget-wide v2, p0, Landroidx/media3/muxer/Mp4Writer;->mdatStart:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Landroidx/media3/muxer/Mp4Writer;->updateMdatSize(J)V

    return-void
.end method

.method private maybeWritePendingTrackSamples(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/muxer/Track;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 432
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 433
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/muxer/Track;

    .line 435
    iget-object v3, v2, Landroidx/media3/muxer/Track;->pendingSamplesBufferInfo:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 436
    iget-object v3, v2, Landroidx/media3/muxer/Track;->pendingSamplesBufferInfo:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/muxer/BufferInfo;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/muxer/BufferInfo;

    .line 437
    iget-object v4, v2, Landroidx/media3/muxer/Track;->pendingSamplesBufferInfo:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/muxer/BufferInfo;

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/muxer/BufferInfo;

    .line 439
    iget-wide v4, v4, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    iget-wide v6, v3, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 442
    invoke-direct {p0, v2}, Landroidx/media3/muxer/Mp4Writer;->writePendingTrackSamples(Landroidx/media3/muxer/Track;)V

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private rewriteMoovWithMdatEmptySpace(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    iget-wide v0, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    add-long/2addr v0, p1

    iget-object p1, p0, Landroidx/media3/muxer/Mp4Writer;->lastMoovWritten:Lcom/google/common/collect/Range;

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 419
    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Writer;->assembleCurrentMoovData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 421
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/muxer/Mp4Writer;->safelyReplaceMoovAtEnd(JLjava/nio/ByteBuffer;)V

    return-void
.end method

.method private safelyReplaceMoovAtEnd(JLjava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->lastMoovWritten:Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 362
    iget-wide v3, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    cmp-long v0, p1, v3

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 365
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v0, p1, p2}, Landroidx/media3/muxer/SeekableMuxerOutput;->setPosition(J)V

    .line 366
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    const-string v1, "free"

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/media3/muxer/BoxUtils;->wrapIntoBox(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    const-wide/16 v0, 0x8

    add-long/2addr v0, p1

    .line 373
    iput-wide v0, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    .line 374
    iget-wide v2, p0, Landroidx/media3/muxer/Mp4Writer;->mdatStart:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Landroidx/media3/muxer/Mp4Writer;->updateMdatSize(J)V

    .line 377
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p3

    int-to-long v1, p3

    add-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/muxer/Mp4Writer;->lastMoovWritten:Lcom/google/common/collect/Range;

    return-void
.end method

.method private updateMdatSize(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    iget-wide v1, p0, Landroidx/media3/muxer/Mp4Writer;->mdatStart:J

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Landroidx/media3/muxer/SeekableMuxerOutput;->setPosition(J)V

    const/16 v0, 0x8

    .line 517
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 518
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 519
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 520
    iget-object p1, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {p1, v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private writeAxteBox()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 215
    invoke-static {v0, v1}, Landroidx/media3/muxer/MuxerUtil;->getAuxiliaryTracksOffsetMetadata(J)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object v0

    .line 216
    iget-object v1, p0, Landroidx/media3/muxer/Mp4Writer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    invoke-virtual {v1, v0}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    .line 217
    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Writer;->getAxteBox()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 218
    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Landroidx/media3/muxer/MuxerUtil;->getAuxiliaryTracksLengthMetadata(J)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    .line 219
    invoke-virtual {p0}, Landroidx/media3/muxer/Mp4Writer;->finalizeMoovBox()V

    .line 221
    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    invoke-virtual {v2, v0}, Landroidx/media3/muxer/MetadataCollector;->removeMdtaMetadataEntry(Landroidx/media3/container/MdtaMetadataEntry;)V

    .line 222
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v2}, Landroidx/media3/muxer/SeekableMuxerOutput;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/media3/muxer/MuxerUtil;->getAuxiliaryTracksOffsetMetadata(J)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    .line 223
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->getSize()J

    move-result-wide v2

    .line 224
    invoke-virtual {p0}, Landroidx/media3/muxer/Mp4Writer;->finalizeMoovBox()V

    .line 225
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->getSize()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 227
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->getSize()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Landroidx/media3/muxer/SeekableMuxerOutput;->setPosition(J)V

    .line 228
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v0, v1}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private writeHeader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Landroidx/media3/muxer/SeekableMuxerOutput;->setPosition(J)V

    .line 316
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-static {}, Landroidx/media3/muxer/Boxes;->ftyp()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    .line 318
    iget v0, p0, Landroidx/media3/muxer/Mp4Writer;->freeSpaceAfterFtypInBytes:I

    if-lez v0, :cond_0

    .line 319
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/muxer/Mp4Writer;->reservedMoovSpaceStart:J

    .line 320
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    iget v1, p0, Landroidx/media3/muxer/Mp4Writer;->freeSpaceAfterFtypInBytes:I

    .line 321
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v2, "free"

    invoke-static {v2, v1}, Landroidx/media3/muxer/BoxUtils;->wrapIntoBox(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 320
    invoke-interface {v0, v1}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    .line 322
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/muxer/Mp4Writer;->reservedMoovSpaceEnd:J

    .line 326
    :cond_0
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/muxer/Mp4Writer;->mdatStart:J

    const/16 v0, 0x10

    .line 327
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    .line 328
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 329
    const-string v1, "mdat"

    invoke-static {v1}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x10

    .line 330
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 331
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 332
    iget-object v3, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v3, v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    .line 335
    iget-wide v3, p0, Landroidx/media3/muxer/Mp4Writer;->mdatStart:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Landroidx/media3/muxer/Mp4Writer;->mdatDataEnd:J

    .line 336
    iget-boolean v0, p0, Landroidx/media3/muxer/Mp4Writer;->canWriteMoovAtStart:Z

    if-eqz v0, :cond_1

    const-wide v3, 0x7fffffffffffffffL

    :cond_1
    iput-wide v3, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    return-void
.end method

.method private writePendingTrackSamples(Landroidx/media3/muxer/Track;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    iget-object v0, p1, Landroidx/media3/muxer/Track;->pendingSamplesByteBuffer:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p1, Landroidx/media3/muxer/Track;->pendingSamplesBufferInfo:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 452
    iget-object v0, p1, Landroidx/media3/muxer/Track;->pendingSamplesBufferInfo:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 456
    :cond_1
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->hasWrittenSamples:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 457
    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Writer;->writeHeader()V

    .line 462
    :cond_2
    iget-object v0, p1, Landroidx/media3/muxer/Track;->pendingSamplesByteBuffer:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v4, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 463
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    goto :goto_1

    .line 466
    :cond_3
    invoke-direct {p0, v4, v5}, Landroidx/media3/muxer/Mp4Writer;->maybeExtendMdatAndRewriteMoov(J)V

    .line 468
    iget-object v0, p1, Landroidx/media3/muxer/Track;->writtenChunkOffsets:Ljava/util/List;

    iget-wide v4, p0, Landroidx/media3/muxer/Mp4Writer;->mdatDataEnd:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v0, p1, Landroidx/media3/muxer/Track;->writtenChunkSampleCounts:Ljava/util/List;

    iget-object v1, p1, Landroidx/media3/muxer/Track;->pendingSamplesBufferInfo:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_4
    iget-object v0, p1, Landroidx/media3/muxer/Track;->pendingSamplesBufferInfo:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/muxer/BufferInfo;

    .line 473
    iget-object v1, p1, Landroidx/media3/muxer/Track;->pendingSamplesByteBuffer:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 477
    iget-object v4, p1, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    invoke-static {v4}, Landroidx/media3/muxer/AnnexBUtils;->doesSampleContainAnnexBNalUnits(Landroidx/media3/common/Format;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 478
    iget-object v4, p0, Landroidx/media3/muxer/Mp4Writer;->annexBToAvccConverter:Landroidx/media3/muxer/AnnexBToAvccConverter;

    iget-object v5, p0, Landroidx/media3/muxer/Mp4Writer;->linearByteBufferAllocator:Landroidx/media3/muxer/LinearByteBufferAllocator;

    .line 479
    invoke-interface {v4, v1, v5}, Landroidx/media3/muxer/AnnexBToAvccConverter;->process(Ljava/nio/ByteBuffer;Landroidx/media3/muxer/ByteBufferAllocator;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 480
    new-instance v4, Landroidx/media3/muxer/BufferInfo;

    iget-wide v5, v0, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    .line 483
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    iget v0, v0, Landroidx/media3/muxer/BufferInfo;->flags:I

    invoke-direct {v4, v5, v6, v7, v0}, Landroidx/media3/muxer/BufferInfo;-><init>(JII)V

    move-object v0, v4

    .line 489
    :cond_5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, v4, v5}, Landroidx/media3/muxer/Mp4Writer;->maybeExtendMdatAndRewriteMoov(J)V

    .line 491
    iget-object v4, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    iget-wide v5, p0, Landroidx/media3/muxer/Mp4Writer;->mdatDataEnd:J

    invoke-interface {v4, v5, v6}, Landroidx/media3/muxer/SeekableMuxerOutput;->setPosition(J)V

    .line 492
    iget-wide v4, p0, Landroidx/media3/muxer/Mp4Writer;->mdatDataEnd:J

    iget-object v6, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v6, v1}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media3/muxer/Mp4Writer;->mdatDataEnd:J

    .line 493
    iget-object v1, p0, Landroidx/media3/muxer/Mp4Writer;->linearByteBufferAllocator:Landroidx/media3/muxer/LinearByteBufferAllocator;

    invoke-virtual {v1}, Landroidx/media3/muxer/LinearByteBufferAllocator;->reset()V

    .line 494
    iget-object v1, p1, Landroidx/media3/muxer/Track;->writtenSamples:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    iget-object v0, p1, Landroidx/media3/muxer/Track;->pendingSamplesBufferInfo:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 496
    iget-wide v0, p0, Landroidx/media3/muxer/Mp4Writer;->mdatDataEnd:J

    iget-wide v4, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    cmp-long p1, v0, v4

    if-gtz p1, :cond_6

    move v2, v3

    :cond_6
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return-void
.end method


# virtual methods
.method public addAuxiliaryTrack(IILandroidx/media3/common/Format;)Landroidx/media3/muxer/Track;
    .locals 2

    .line 148
    new-instance v0, Landroidx/media3/muxer/Track;

    iget-boolean v1, p0, Landroidx/media3/muxer/Mp4Writer;->sampleCopyEnabled:Z

    invoke-direct {v0, p1, p3, p2, v1}, Landroidx/media3/muxer/Track;-><init>(ILandroidx/media3/common/Format;IZ)V

    .line 149
    iget-object p1, p0, Landroidx/media3/muxer/Mp4Writer;->auxiliaryTracks:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object p1, p0, Landroidx/media3/muxer/Mp4Writer;->auxiliaryTracks:Ljava/util/List;

    new-instance p2, Landroidx/media3/muxer/Mp4Writer$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Landroidx/media3/muxer/Mp4Writer$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public addTrack(IILandroidx/media3/common/Format;)Landroidx/media3/muxer/Track;
    .locals 2

    .line 131
    new-instance v0, Landroidx/media3/muxer/Track;

    iget-boolean v1, p0, Landroidx/media3/muxer/Mp4Writer;->sampleCopyEnabled:Z

    invoke-direct {v0, p1, p3, p2, v1}, Landroidx/media3/muxer/Track;-><init>(ILandroidx/media3/common/Format;IZ)V

    .line 132
    iget-object p1, p0, Landroidx/media3/muxer/Mp4Writer;->tracks:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object p1, p0, Landroidx/media3/muxer/Mp4Writer;->tracks:Ljava/util/List;

    new-instance p2, Landroidx/media3/muxer/Mp4Writer$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Landroidx/media3/muxer/Mp4Writer$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public finalizeMoovBox()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    iget-boolean v0, p0, Landroidx/media3/muxer/Mp4Writer;->canWriteMoovAtStart:Z

    if-eqz v0, :cond_0

    .line 260
    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Writer;->maybeWriteMoovAtStart()V

    return-void

    .line 269
    :cond_0
    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Writer;->assembleCurrentMoovData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/lit8 v2, v1, 0x8

    .line 276
    iget-wide v3, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    iget-wide v5, p0, Landroidx/media3/muxer/Mp4Writer;->mdatDataEnd:J

    sub-long/2addr v3, v5

    int-to-long v5, v2

    cmp-long v2, v3, v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_2

    .line 279
    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->lastMoovWritten:Lcom/google/common/collect/Range;

    .line 280
    invoke-virtual {v2}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v7, v5

    .line 279
    invoke-direct {p0, v7, v8, v0}, Landroidx/media3/muxer/Mp4Writer;->safelyReplaceMoovAtEnd(JLjava/nio/ByteBuffer;)V

    .line 281
    iget-wide v7, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    iget-wide v9, p0, Landroidx/media3/muxer/Mp4Writer;->mdatDataEnd:J

    sub-long/2addr v7, v9

    cmp-long v2, v7, v5

    if-ltz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 285
    :cond_2
    iget-wide v5, p0, Landroidx/media3/muxer/Mp4Writer;->mdatDataEnd:J

    .line 286
    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v2, v5, v6}, Landroidx/media3/muxer/SeekableMuxerOutput;->setPosition(J)V

    .line 287
    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v2, v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    .line 290
    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->lastMoovWritten:Lcom/google/common/collect/Range;

    invoke-virtual {v2}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    int-to-long v1, v1

    add-long/2addr v1, v5

    sub-long/2addr v7, v1

    const-wide/32 v9, 0x7fffffff

    cmp-long v9, v7, v9

    if-gez v9, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    .line 293
    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const/16 v3, 0x8

    .line 295
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    long-to-int v4, v7

    .line 296
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 297
    const-string v4, "free"

    invoke-static {v4}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 298
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 299
    iget-object v4, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v4, v3}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    .line 306
    iput-wide v5, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    .line 307
    iget-wide v3, p0, Landroidx/media3/muxer/Mp4Writer;->mdatStart:J

    sub-long v3, v5, v3

    invoke-direct {p0, v3, v4}, Landroidx/media3/muxer/Mp4Writer;->updateMdatSize(J)V

    .line 308
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v7, v0

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->lastMoovWritten:Lcom/google/common/collect/Range;

    .line 311
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v0, v1, v2}, Landroidx/media3/muxer/SeekableMuxerOutput;->truncate(J)V

    return-void
.end method

.method public finishWritingSamplesAndFinalizeMoovBox()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 193
    :goto_0
    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->tracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 194
    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->tracks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/muxer/Track;

    invoke-direct {p0, v2}, Landroidx/media3/muxer/Mp4Writer;->writePendingTrackSamples(Landroidx/media3/muxer/Track;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_0
    :goto_1
    iget-object v1, p0, Landroidx/media3/muxer/Mp4Writer;->auxiliaryTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 197
    iget-object v1, p0, Landroidx/media3/muxer/Mp4Writer;->auxiliaryTracks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/muxer/Track;

    invoke-direct {p0, v1}, Landroidx/media3/muxer/Mp4Writer;->writePendingTrackSamples(Landroidx/media3/muxer/Track;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    :cond_1
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->hasWrittenSamples:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 205
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/muxer/Mp4Writer;->finalizeMoovBox()V

    .line 207
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->auxiliaryTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 208
    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Writer;->writeAxteBox()V

    :cond_3
    :goto_2
    return-void
.end method

.method public writeSampleData(Landroidx/media3/muxer/Track;Ljava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p1, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/av01"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 165
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/media3/muxer/Track;->parsedCsd:[B

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/muxer/Av1ConfigUtil;->createAv1CodecConfigurationRecord(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p1, Landroidx/media3/muxer/Track;->parsedCsd:[B

    .line 169
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroidx/media3/muxer/Track;->writeSampleData(Ljava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V

    .line 170
    iget-boolean p2, p0, Landroidx/media3/muxer/Mp4Writer;->sampleBatchingEnabled:Z

    if-eqz p2, :cond_1

    .line 171
    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Writer;->doInterleave()V

    return-void

    .line 173
    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/muxer/Mp4Writer;->writePendingTrackSamples(Landroidx/media3/muxer/Track;)V

    .line 174
    iget-object p2, p0, Landroidx/media3/muxer/Mp4Writer;->tracks:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 175
    iget-wide p2, p3, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    if-eqz p1, :cond_2

    .line 176
    iget-boolean p1, p0, Landroidx/media3/muxer/Mp4Writer;->canWriteMoovAtStart:Z

    if-eqz p1, :cond_2

    iget-wide v0, p0, Landroidx/media3/muxer/Mp4Writer;->lastMoovWrittenAtSampleTimestampUs:J

    sub-long v0, p2, v0

    const-wide/32 v2, 0xf4240

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    .line 180
    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Writer;->maybeWriteMoovAtStart()V

    .line 181
    iput-wide p2, p0, Landroidx/media3/muxer/Mp4Writer;->lastMoovWrittenAtSampleTimestampUs:J

    :cond_2
    return-void
.end method
