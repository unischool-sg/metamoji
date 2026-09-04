.class final Landroidx/media3/muxer/WebmWriter;
.super Ljava/lang/Object;
.source "WebmWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/muxer/WebmWriter$WebmFrame;
    }
.end annotation


# static fields
.field private static final MAX_CLUSTER_DURATION_US:I = 0x1e8480

.field private static final TIMESTAMP_SCALE:I = 0xf4240


# instance fields
.field private final addedTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/muxer/Track;",
            ">;"
        }
    .end annotation
.end field

.field private final cuePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private firstSampleTimestampUs:J

.field private infoElementStart:J

.field private lastSampleEndsAtTimestampUs:J

.field private final muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

.field private final prevPresentationTimeOfTrack:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final sampleCopyEnabled:Z

.field private segmentDataStart:J

.field private trackElementStart:J

.field private writtenSegmentHeader:Z


# direct methods
.method constructor <init>(Landroidx/media3/muxer/SeekableMuxerOutput;Z)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    .line 132
    iput-boolean p2, p0, Landroidx/media3/muxer/WebmWriter;->sampleCopyEnabled:Z

    .line 133
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/muxer/WebmWriter;->addedTracks:Ljava/util/List;

    .line 134
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/muxer/WebmWriter;->cuePoints:Ljava/util/List;

    .line 135
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/muxer/WebmWriter;->prevPresentationTimeOfTrack:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 136
    iput-wide p1, p0, Landroidx/media3/muxer/WebmWriter;->firstSampleTimestampUs:J

    .line 137
    iput-wide p1, p0, Landroidx/media3/muxer/WebmWriter;->lastSampleEndsAtTimestampUs:J

    return-void
.end method

.method private createCluster()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 244
    :goto_0
    iget-object v4, p0, Landroidx/media3/muxer/WebmWriter;->addedTracks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_3

    .line 245
    iget-object v4, p0, Landroidx/media3/muxer/WebmWriter;->addedTracks:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/muxer/Track;

    .line 246
    :cond_0
    :goto_1
    iget-object v6, v4, Landroidx/media3/muxer/Track;->pendingSamplesByteBuffer:Ljava/util/Deque;

    invoke-interface {v6}, Ljava/util/Deque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 247
    iget-object v6, v4, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    iget-object v6, v6, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v6}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v6

    .line 248
    new-instance v7, Landroidx/media3/muxer/WebmWriter$WebmFrame;

    if-eqz v6, :cond_1

    const/4 v8, 0x2

    goto :goto_2

    :cond_1
    move v8, v5

    .line 250
    :goto_2
    iget-object v9, v4, Landroidx/media3/muxer/Track;->pendingSamplesByteBuffer:Ljava/util/Deque;

    .line 251
    invoke-interface {v9}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    iget-object v10, v4, Landroidx/media3/muxer/Track;->pendingSamplesBufferInfo:Ljava/util/Deque;

    .line 252
    invoke-interface {v10}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/muxer/BufferInfo;

    invoke-direct {v7, v8, v9, v10, v6}, Landroidx/media3/muxer/WebmWriter$WebmFrame;-><init>(ILjava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;Z)V

    .line 254
    invoke-virtual {v0, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-static {v7}, Landroidx/media3/muxer/WebmWriter$WebmFrame;->access$000(Landroidx/media3/muxer/WebmWriter$WebmFrame;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v7}, Landroidx/media3/muxer/WebmWriter$WebmFrame;->access$100(Landroidx/media3/muxer/WebmWriter$WebmFrame;)Landroidx/media3/muxer/BufferInfo;

    move-result-object v6

    iget v6, v6, Landroidx/media3/muxer/BufferInfo;->flags:I

    and-int/2addr v6, v5

    if-lez v6, :cond_0

    move v3, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 262
    :cond_3
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    .line 266
    :cond_4
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/muxer/WebmWriter$WebmFrame;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/muxer/WebmWriter$WebmFrame;

    .line 267
    invoke-static {v2}, Landroidx/media3/muxer/WebmWriter$WebmFrame;->access$100(Landroidx/media3/muxer/WebmWriter$WebmFrame;)Landroidx/media3/muxer/BufferInfo;

    move-result-object v4

    iget-wide v6, v4, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    .line 269
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 271
    iget-wide v8, p0, Landroidx/media3/muxer/WebmWriter;->firstSampleTimestampUs:J

    sub-long v8, v6, v8

    invoke-direct {p0, v8, v9}, Landroidx/media3/muxer/WebmWriter;->usToSegmentTicks(J)J

    move-result-wide v8

    const-wide/16 v10, 0xe7

    .line 273
    invoke-static {v10, v11, v8, v9}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 272
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    :goto_3
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 276
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/muxer/WebmWriter$WebmFrame;

    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/muxer/WebmWriter$WebmFrame;

    .line 279
    invoke-static {v10}, Landroidx/media3/muxer/WebmWriter$WebmFrame;->access$200(Landroidx/media3/muxer/WebmWriter$WebmFrame;)I

    move-result v11

    .line 281
    invoke-static {v10}, Landroidx/media3/muxer/WebmWriter$WebmFrame;->access$100(Landroidx/media3/muxer/WebmWriter$WebmFrame;)Landroidx/media3/muxer/BufferInfo;

    move-result-object v12

    iget-wide v12, v12, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    sub-long/2addr v12, v6

    invoke-direct {p0, v12, v13}, Landroidx/media3/muxer/WebmWriter;->usToSegmentTicks(J)J

    move-result-wide v12

    .line 282
    invoke-static {v10}, Landroidx/media3/muxer/WebmWriter$WebmFrame;->access$100(Landroidx/media3/muxer/WebmWriter$WebmFrame;)Landroidx/media3/muxer/BufferInfo;

    move-result-object v14

    iget v14, v14, Landroidx/media3/muxer/BufferInfo;->flags:I

    and-int/2addr v14, v5

    if-lez v14, :cond_5

    move v14, v5

    goto :goto_4

    :cond_5
    move v14, v1

    .line 283
    :goto_4
    invoke-static {v10}, Landroidx/media3/muxer/WebmWriter$WebmFrame;->access$300(Landroidx/media3/muxer/WebmWriter$WebmFrame;)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 278
    invoke-static {v11, v12, v13, v14, v10}, Landroidx/media3/muxer/WebmElements;->createSimpleBlockElement(IJZLjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 277
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 288
    :cond_6
    iget-object v0, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->getPosition()J

    move-result-wide v0

    iget-wide v6, p0, Landroidx/media3/muxer/WebmWriter;->segmentDataStart:J

    sub-long/2addr v0, v6

    .line 289
    iget-object v6, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    const-wide/32 v10, 0x1f43b675

    invoke-static {v10, v11, v4}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v6, v4}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    if-eqz v3, :cond_7

    goto :goto_5

    .line 293
    :cond_7
    invoke-static {v2}, Landroidx/media3/muxer/WebmWriter$WebmFrame;->access$200(Landroidx/media3/muxer/WebmWriter$WebmFrame;)I

    move-result v5

    .line 295
    :goto_5
    iget-object v2, p0, Landroidx/media3/muxer/WebmWriter;->cuePoints:Ljava/util/List;

    .line 296
    invoke-static {v8, v9, v5, v0, v1}, Landroidx/media3/muxer/WebmElements;->createCuePointElement(JIJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 295
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private shouldCreateCluster(Landroidx/media3/muxer/Track;Landroidx/media3/muxer/BufferInfo;)Z
    .locals 5

    .line 222
    iget-object v0, p1, Landroidx/media3/muxer/Track;->pendingSamplesBufferInfo:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 226
    :cond_0
    iget-object v0, p1, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 227
    iget p1, p2, Landroidx/media3/muxer/BufferInfo;->flags:I

    and-int/2addr p1, v2

    if-lez p1, :cond_1

    return v2

    :cond_1
    return v1

    .line 229
    :cond_2
    iget-object p1, p1, Landroidx/media3/muxer/Track;->pendingSamplesBufferInfo:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/muxer/BufferInfo;

    iget-wide v3, p1, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    .line 230
    iget-wide p1, p2, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    sub-long/2addr p1, v3

    const-wide/32 v3, 0x1e8480

    cmp-long p1, p1, v3

    if-lez p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private usToSegmentTicks(J)J
    .locals 6

    const-wide/16 v2, 0x3e8

    const-wide/32 v4, 0xf4240

    move-wide v0, p1

    .line 397
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private writeSegmentHeader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-static {}, Landroidx/media3/muxer/WebmElements;->createEbmlHeaderElement()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    .line 204
    iget-object v0, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    const-wide/32 v1, 0x18538067

    invoke-static {v1, v2}, Landroidx/media3/muxer/WebmElements;->uintToMinimumLengthByteBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    .line 205
    iget-object v0, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    const-wide v1, 0x1ffffffffffffffL    # 4.77830972673648E-299

    invoke-static {v1, v2}, Landroidx/media3/muxer/WebmElements;->uintToMinimumLengthByteBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    .line 208
    iget-object v0, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/muxer/WebmWriter;->segmentDataStart:J

    .line 210
    iget-object v0, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    const/16 v1, 0x48

    invoke-static {v1}, Landroidx/media3/muxer/WebmElements;->createVoidElement(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    .line 211
    iget-object v0, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/muxer/WebmWriter;->infoElementStart:J

    .line 214
    iget-object v0, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    const/4 v1, 0x0

    invoke-static {v1}, Landroidx/media3/muxer/WebmElements;->createInfoElement(F)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    .line 215
    iget-object v0, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/muxer/WebmWriter;->trackElementStart:J

    .line 218
    iget-object v0, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    iget-object v1, p0, Landroidx/media3/muxer/WebmWriter;->addedTracks:Ljava/util/List;

    invoke-static {v1}, Landroidx/media3/muxer/WebmElements;->createTrackElements(Ljava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method


# virtual methods
.method public addTrack(ILandroidx/media3/common/Format;)Landroidx/media3/muxer/Track;
    .locals 3

    .line 149
    iget-boolean v0, p0, Landroidx/media3/muxer/WebmWriter;->writtenSegmentHeader:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 152
    new-instance v0, Landroidx/media3/muxer/Track;

    iget-boolean v2, p0, Landroidx/media3/muxer/WebmWriter;->sampleCopyEnabled:Z

    invoke-direct {v0, p1, p2, v1, v2}, Landroidx/media3/muxer/Track;-><init>(ILandroidx/media3/common/Format;IZ)V

    .line 153
    iget-object p1, p0, Landroidx/media3/muxer/WebmWriter;->addedTracks:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public close()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-direct {p0}, Landroidx/media3/muxer/WebmWriter;->createCluster()V

    .line 313
    iget-object v0, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->getPosition()J

    move-result-wide v0

    const-wide/32 v2, 0x1c53bb6b

    .line 314
    iget-object v4, p0, Landroidx/media3/muxer/WebmWriter;->cuePoints:Ljava/util/List;

    invoke-static {v2, v3, v4}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 315
    iget-object v3, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v3, v2}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    .line 317
    iget-object v2, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v2}, Landroidx/media3/muxer/SeekableMuxerOutput;->getPosition()J

    move-result-wide v2

    .line 318
    iget-wide v4, p0, Landroidx/media3/muxer/WebmWriter;->segmentDataStart:J

    sub-long/2addr v2, v4

    .line 320
    iget-object v6, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    const-wide/16 v7, 0x8

    sub-long/2addr v4, v7

    invoke-interface {v6, v4, v5}, Landroidx/media3/muxer/SeekableMuxerOutput;->setPosition(J)V

    .line 321
    iget-object v4, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    const/16 v5, 0x8

    invoke-static {v2, v3, v5}, Landroidx/media3/muxer/EbmlUtils;->encodeVIntWithWidth(JI)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v4, v2}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    .line 323
    iget-object v2, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    iget-wide v3, p0, Landroidx/media3/muxer/WebmWriter;->infoElementStart:J

    invoke-interface {v2, v3, v4}, Landroidx/media3/muxer/SeekableMuxerOutput;->setPosition(J)V

    .line 324
    iget-wide v2, p0, Landroidx/media3/muxer/WebmWriter;->lastSampleEndsAtTimestampUs:J

    iget-wide v4, p0, Landroidx/media3/muxer/WebmWriter;->firstSampleTimestampUs:J

    sub-long/2addr v2, v4

    .line 326
    iget-object v4, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    .line 327
    invoke-direct {p0, v2, v3}, Landroidx/media3/muxer/WebmWriter;->usToSegmentTicks(J)J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {v2}, Landroidx/media3/muxer/WebmElements;->createInfoElement(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 326
    invoke-interface {v4, v2}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    .line 328
    iget-object v2, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v2}, Landroidx/media3/muxer/SeekableMuxerOutput;->getPosition()J

    move-result-wide v2

    .line 330
    iget-wide v4, p0, Landroidx/media3/muxer/WebmWriter;->trackElementStart:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 333
    iget-object v2, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    iget-wide v3, p0, Landroidx/media3/muxer/WebmWriter;->segmentDataStart:J

    invoke-interface {v2, v3, v4}, Landroidx/media3/muxer/SeekableMuxerOutput;->setPosition(J)V

    .line 336
    iget-wide v2, p0, Landroidx/media3/muxer/WebmWriter;->infoElementStart:J

    iget-wide v4, p0, Landroidx/media3/muxer/WebmWriter;->segmentDataStart:J

    sub-long v6, v2, v4

    iget-wide v2, p0, Landroidx/media3/muxer/WebmWriter;->trackElementStart:J

    sub-long v8, v2, v4

    sub-long v10, v0, v4

    .line 337
    invoke-static/range {v6 .. v11}, Landroidx/media3/muxer/WebmElements;->createSeekHeadElement(JJJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 341
    iget-object v1, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v1, v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    .line 342
    iget-object v0, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->getPosition()J

    move-result-wide v0

    .line 343
    iget-wide v2, p0, Landroidx/media3/muxer/WebmWriter;->infoElementStart:J

    sub-long/2addr v2, v0

    long-to-int v0, v2

    .line 344
    invoke-static {v0}, Landroidx/media3/muxer/WebmElements;->createVoidElement(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 345
    iget-object v1, p0, Landroidx/media3/muxer/WebmWriter;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v1, v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public writeSampleData(Landroidx/media3/muxer/Track;Ljava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget-boolean v0, p0, Landroidx/media3/muxer/WebmWriter;->writtenSegmentHeader:Z

    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0}, Landroidx/media3/muxer/WebmWriter;->writeSegmentHeader()V

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Landroidx/media3/muxer/WebmWriter;->writtenSegmentHeader:Z

    .line 174
    :cond_0
    invoke-direct {p0, p1, p3}, Landroidx/media3/muxer/WebmWriter;->shouldCreateCluster(Landroidx/media3/muxer/Track;Landroidx/media3/muxer/BufferInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-direct {p0}, Landroidx/media3/muxer/WebmWriter;->createCluster()V

    .line 178
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroidx/media3/muxer/Track;->writeSampleData(Ljava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V

    .line 180
    iget-wide v0, p0, Landroidx/media3/muxer/WebmWriter;->firstSampleTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-nez p2, :cond_2

    .line 181
    iget-wide v0, p3, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    goto :goto_0

    .line 182
    :cond_2
    iget-wide v2, p3, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Landroidx/media3/muxer/WebmWriter;->firstSampleTimestampUs:J

    .line 183
    iget-object p2, p0, Landroidx/media3/muxer/WebmWriter;->prevPresentationTimeOfTrack:Landroid/util/SparseArray;

    iget v0, p1, Landroidx/media3/muxer/Track;->id:I

    iget-wide v1, p3, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    .line 184
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 186
    iget-wide v2, p0, Landroidx/media3/muxer/WebmWriter;->lastSampleEndsAtTimestampUs:J

    iget-wide v4, p3, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    iget-wide v6, p3, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    sub-long/2addr v6, v0

    add-long/2addr v4, v6

    .line 187
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/muxer/WebmWriter;->lastSampleEndsAtTimestampUs:J

    .line 191
    iget-object p2, p0, Landroidx/media3/muxer/WebmWriter;->prevPresentationTimeOfTrack:Landroid/util/SparseArray;

    iget p1, p1, Landroidx/media3/muxer/Track;->id:I

    iget-wide v0, p3, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
