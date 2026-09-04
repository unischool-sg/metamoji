.class Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;
.super Ljava/lang/Object;
.source "CompositionVideoPacketReleaseControl.java"

# interfaces
.implements Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;


# instance fields
.field private final downstreamConsumer:Landroidx/media3/effect/PacketConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/effect/PacketConsumer<",
            "Ljava/util/List<",
            "Landroidx/media3/effect/GlTextureFrame;",
            ">;>;"
        }
    .end annotation
.end field

.field private final packetQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/effect/GlTextureFrame;",
            ">;>;"
        }
    .end annotation
.end field

.field private final videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

.field private final videoFrameReleaseInfo:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;Landroidx/media3/effect/PacketConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;",
            "Landroidx/media3/effect/PacketConsumer<",
            "Ljava/util/List<",
            "Landroidx/media3/effect/GlTextureFrame;",
            ">;>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 59
    iput-object p2, p0, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->downstreamConsumer:Landroidx/media3/effect/PacketConsumer;

    .line 60
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->packetQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 61
    new-instance p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    invoke-direct {p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->videoFrameReleaseInfo:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    return-void
.end method

.method private maybeQueuePacketDownstream(ILcom/google/common/collect/ImmutableList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/effect/GlTextureFrame;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 184
    :cond_2
    invoke-direct {p0, p2}, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->releasePacket(Lcom/google/common/collect/ImmutableList;)V

    return v0

    .line 190
    :cond_3
    iget-object p1, p0, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->videoFrameReleaseInfo:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    .line 191
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->getReleaseTimeNs()J

    move-result-wide v0

    .line 190
    invoke-direct {p0, p2, v0, v1}, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->setReleaseTimeAndQueueDownstream(Lcom/google/common/collect/ImmutableList;J)Z

    move-result p1

    return p1

    .line 187
    :cond_4
    sget-object p1, Landroidx/media3/common/util/SystemClock;->DEFAULT:Landroidx/media3/common/util/Clock;

    .line 188
    invoke-interface {p1}, Landroidx/media3/common/util/Clock;->nanoTime()J

    move-result-wide v0

    .line 187
    invoke-direct {p0, p2, v0, v1}, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->setReleaseTimeAndQueueDownstream(Lcom/google/common/collect/ImmutableList;J)Z

    move-result p1

    return p1
.end method

.method private releasePacket(Lcom/google/common/collect/ImmutableList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/effect/GlTextureFrame;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 198
    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 199
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/effect/GlTextureFrame;

    invoke-virtual {v1}, Landroidx/media3/effect/GlTextureFrame;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setReleaseTimeAndQueueDownstream(Lcom/google/common/collect/ImmutableList;J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/effect/GlTextureFrame;",
            ">;J)Z"
        }
    .end annotation

    .line 216
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 217
    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 218
    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/effect/GlTextureFrame;

    invoke-static {v2, p2, p3}, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->updateReleaseTime(Landroidx/media3/effect/GlTextureFrame;J)Landroidx/media3/effect/GlTextureFrame;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_0
    iget-object p1, p0, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->downstreamConsumer:Landroidx/media3/effect/PacketConsumer;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-static {p2}, Landroidx/media3/effect/PacketConsumer$Packet;->of(Ljava/lang/Object;)Landroidx/media3/effect/PacketConsumer$Packet;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media3/effect/PacketConsumer;->tryQueuePacket(Landroidx/media3/effect/PacketConsumer$Packet;)Z

    move-result p1

    return p1
.end method

.method private static updateReleaseTime(Landroidx/media3/effect/GlTextureFrame;J)Landroidx/media3/effect/GlTextureFrame;
    .locals 4

    .line 226
    new-instance v0, Landroidx/media3/effect/GlTextureFrame$Builder;

    iget-object v1, p0, Landroidx/media3/effect/GlTextureFrame;->glTextureInfo:Landroidx/media3/common/GlTextureInfo;

    iget-object v2, p0, Landroidx/media3/effect/GlTextureFrame;->releaseTextureExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroidx/media3/effect/GlTextureFrame;->releaseTextureCallback:Landroidx/media3/common/util/Consumer;

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/effect/GlTextureFrame$Builder;-><init>(Landroidx/media3/common/GlTextureInfo;Ljava/util/concurrent/Executor;Landroidx/media3/common/util/Consumer;)V

    iget-wide v1, p0, Landroidx/media3/effect/GlTextureFrame;->presentationTimeUs:J

    .line 228
    invoke-virtual {v0, v1, v2}, Landroidx/media3/effect/GlTextureFrame$Builder;->setPresentationTimeUs(J)Landroidx/media3/effect/GlTextureFrame$Builder;

    move-result-object v0

    .line 229
    invoke-virtual {v0, p1, p2}, Landroidx/media3/effect/GlTextureFrame$Builder;->setReleaseTimeNs(J)Landroidx/media3/effect/GlTextureFrame$Builder;

    move-result-object p1

    .line 230
    invoke-virtual {p0}, Landroidx/media3/effect/GlTextureFrame;->getMetadata()Landroidx/media3/effect/Frame$Metadata;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/media3/effect/GlTextureFrame$Builder;->setMetadata(Landroidx/media3/effect/Frame$Metadata;)Landroidx/media3/effect/GlTextureFrame$Builder;

    move-result-object p0

    .line 231
    invoke-virtual {p0}, Landroidx/media3/effect/GlTextureFrame$Builder;->build()Landroidx/media3/effect/GlTextureFrame;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onRender(JJJ)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 106
    :goto_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->packetQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 108
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/effect/GlTextureFrame;

    iget-wide v3, v1, Landroidx/media3/effect/GlTextureFrame;->presentationTimeUs:J

    .line 110
    iget-object v2, p0, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    const/4 v12, 0x0

    iget-object v13, p0, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->videoFrameReleaseInfo:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    const/4 v11, 0x0

    move-wide v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    .line 111
    invoke-virtual/range {v2 .. v13}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->getFrameReleaseAction(JJJJZZLandroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)I

    move-result v1

    .line 119
    invoke-direct {p0, v1, v0}, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->maybeQueuePacketDownstream(ILcom/google/common/collect/ImmutableList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    iget-object v1, p0, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->packetQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addFirst(Ljava/lang/Object;)V

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->onFrameReleasedIsFirstFrame()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStarted()V
    .locals 1

    .line 133
    iget-object v0, p0, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->onStarted()V

    return-void
.end method

.method public onStopped()V
    .locals 1

    .line 142
    iget-object v0, p0, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->onStopped()V

    return-void
.end method

.method public queue(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/effect/GlTextureFrame;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 80
    iget-object v0, p0, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->packetQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 82
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/effect/GlTextureFrame;

    iget-wide v2, v2, Landroidx/media3/effect/GlTextureFrame;->presentationTimeUs:J

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/effect/GlTextureFrame;

    iget-wide v0, v0, Landroidx/media3/effect/GlTextureFrame;->presentationTimeUs:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->reset()V

    .line 85
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->packetQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 1

    .line 151
    :goto_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->packetQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0, v0}, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->releasePacket(Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->reset()V

    return-void
.end method

.method public setOutputSurface(Landroid/view/Surface;)V
    .locals 1

    .line 164
    iget-object v0, p0, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method
