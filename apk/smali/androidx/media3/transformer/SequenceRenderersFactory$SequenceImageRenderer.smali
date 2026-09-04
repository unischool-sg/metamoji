.class final Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;
.super Landroidx/media3/exoplayer/image/ImageRenderer;
.source "SequenceRenderersFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/SequenceRenderersFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SequenceImageRenderer"
.end annotation


# instance fields
.field private compositionRendererListener:Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;

.field private compositionTextureListener:Landroidx/media3/transformer/CompositionTextureListener;

.field private inputStreamPending:Z

.field private mayRenderStartOfStream:Z

.field private nextFirstFrameReleaseInstruction:I

.field private offsetToCompositionTimeUs:J

.field private pendingExoPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

.field private streamStartPositionUs:J

.field private timestampIterator:Landroidx/media3/common/util/ConstantRateTimestampIterator;

.field private videoEffects:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private final videoSink:Landroidx/media3/exoplayer/video/VideoSink;

.field private wakeupListener:Landroidx/media3/exoplayer/Renderer$WakeupListener;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/image/ImageDecoder$Factory;Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 1

    .line 627
    sget-object v0, Landroidx/media3/exoplayer/image/ImageOutput;->NO_OP:Landroidx/media3/exoplayer/image/ImageOutput;

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/image/ImageRenderer;-><init>(Landroidx/media3/exoplayer/image/ImageDecoder$Factory;Landroidx/media3/exoplayer/image/ImageOutput;)V

    .line 628
    iput-object p2, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    .line 629
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoEffects:Lcom/google/common/collect/ImmutableList;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 630
    iput-wide p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->streamStartPositionUs:J

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;)V
    .locals 0

    .line 610
    invoke-direct {p0, p1}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->setOnRenderListener(Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;)V

    return-void
.end method

.method static synthetic access$1000(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;)Landroidx/media3/exoplayer/Renderer$WakeupListener;
    .locals 0

    .line 610
    iget-object p0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->wakeupListener:Landroidx/media3/exoplayer/Renderer$WakeupListener;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;Landroidx/media3/transformer/CompositionTextureListener;)V
    .locals 0

    .line 610
    invoke-direct {p0, p1}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->setCompositionTextureListener(Landroidx/media3/transformer/CompositionTextureListener;)V

    return-void
.end method

.method private createTimestampIterator(J)Landroidx/media3/common/util/ConstantRateTimestampIterator;
    .locals 11

    .line 815
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->getMediaPeriodId()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v0, v1}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$600(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/transformer/EditedMediaItem;

    move-result-object v0

    .line 816
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->getStreamOffsetUs()J

    move-result-wide v1

    invoke-virtual {v0}, Landroidx/media3/transformer/EditedMediaItem;->getPresentationDurationUs()J

    move-result-wide v3

    add-long v8, v1, v3

    .line 817
    new-instance v5, Landroidx/media3/common/util/ConstantRateTimestampIterator;

    const/high16 v10, 0x41f00000    # 30.0f

    move-wide v6, p1

    invoke-direct/range {v5 .. v10}, Landroidx/media3/common/util/ConstantRateTimestampIterator;-><init>(JJF)V

    return-object v5
.end method

.method private setCompositionTextureListener(Landroidx/media3/transformer/CompositionTextureListener;)V
    .locals 0

    .line 829
    iput-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->compositionTextureListener:Landroidx/media3/transformer/CompositionTextureListener;

    return-void
.end method

.method private setOnRenderListener(Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;)V
    .locals 0

    .line 824
    iput-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->compositionRendererListener:Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;

    return-void
.end method


# virtual methods
.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    .line 809
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/image/ImageRenderer;->handleMessage(ILjava/lang/Object;)V

    return-void

    .line 802
    :cond_0
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/Renderer$WakeupListener;

    iput-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->wakeupListener:Landroidx/media3/exoplayer/Renderer$WakeupListener;

    return-void

    .line 805
    :cond_1
    iget-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    .line 806
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 805
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/video/VideoSink;->setVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V

    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 659
    invoke-super {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    .line 660
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->timestampIterator:Landroidx/media3/common/util/ConstantRateTimestampIterator;

    if-eqz v0, :cond_0

    .line 661
    invoke-virtual {v0}, Landroidx/media3/common/util/ConstantRateTimestampIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 2

    .line 666
    iget-boolean v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->mayRenderStartOfStream:Z

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-super {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->isReady()Z

    move-result v1

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/video/VideoSink;->isReady(Z)Z

    move-result v0

    return v0

    .line 673
    :cond_0
    invoke-super {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->isReady()Z

    move-result v0

    return v0
.end method

.method protected maybeInitializeProcessingPipeline()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 696
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 699
    :cond_0
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    .line 701
    :try_start_0
    iget-object v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/video/VideoSink;->initialize(Landroidx/media3/common/Format;)Z

    move-result v0
    :try_end_0
    .catch Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const/16 v2, 0x1b58

    .line 703
    invoke-virtual {p0, v1, v0, v2}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method protected onEnabled(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 638
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/image/ImageRenderer;->onEnabled(ZZ)V

    .line 639
    iput-boolean p2, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->mayRenderStartOfStream:Z

    xor-int/lit8 p1, p2, 0x1

    .line 643
    iput p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->nextFirstFrameReleaseInstruction:I

    .line 645
    iget-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    new-instance p2, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer$1;

    invoke-direct {p2, p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer$1;-><init>(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;)V

    .line 654
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 645
    invoke-interface {p1, p2, v0}, Landroidx/media3/exoplayer/video/VideoSink;->setListener(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected onPositionReset(JZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 688
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/video/VideoSink;->flush(Z)V

    .line 689
    invoke-direct {p0, p1, p2}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->createTimestampIterator(J)Landroidx/media3/common/util/ConstantRateTimestampIterator;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->timestampIterator:Landroidx/media3/common/util/ConstantRateTimestampIterator;

    .line 691
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/image/ImageRenderer;->onPositionReset(JZZ)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 679
    invoke-super {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->onReset()V

    const/4 v0, 0x0

    .line 680
    iput-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->pendingExoPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

    return-void
.end method

.method protected onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 714
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 715
    iput-wide p2, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->streamStartPositionUs:J

    .line 717
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-static {v0, p6}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$600(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/transformer/EditedMediaItem;

    move-result-object v0

    .line 719
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v2

    invoke-static {v2, p6, p4, p5}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$500(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->offsetToCompositionTimeUs:J

    .line 720
    iget-object v4, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v4, v2, v3}, Landroidx/media3/exoplayer/video/VideoSink;->setBufferTimestampAdjustmentUs(J)V

    .line 721
    invoke-direct {p0, p2, p3}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->createTimestampIterator(J)Landroidx/media3/common/util/ConstantRateTimestampIterator;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->timestampIterator:Landroidx/media3/common/util/ConstantRateTimestampIterator;

    .line 722
    iget-object v0, v0, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    iget-object v0, v0, Landroidx/media3/transformer/Effects;->videoEffects:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoEffects:Lcom/google/common/collect/ImmutableList;

    .line 723
    iput-boolean v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->inputStreamPending:Z

    .line 724
    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/image/ImageRenderer;->onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method protected processOutputBuffer(JJLandroid/graphics/Bitmap;J)Z
    .locals 7

    .line 752
    iget-boolean p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->inputStreamPending:Z

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 753
    iget-wide p6, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->streamStartPositionUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p6, v0

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 754
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    new-instance p1, Landroidx/media3/common/Format$Builder;

    invoke-direct {p1}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string p4, "image/raw"

    .line 757
    invoke-virtual {p1, p4}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 758
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    invoke-virtual {p1, p4}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 759
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    invoke-virtual {p1, p4}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    sget-object p4, Landroidx/media3/common/ColorInfo;->SRGB_BT709_FULL:Landroidx/media3/common/ColorInfo;

    .line 760
    invoke-virtual {p1, p4}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const/high16 p4, 0x41f00000    # 30.0f

    .line 761
    invoke-virtual {p1, p4}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 762
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    iget-wide v3, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->streamStartPositionUs:J

    iget v5, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->nextFirstFrameReleaseInstruction:I

    iget-object v6, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoEffects:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x2

    .line 754
    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/video/VideoSink;->onInputStreamChanged(ILandroidx/media3/common/Format;JILjava/util/List;)V

    const/4 p1, 0x2

    .line 766
    iput p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->nextFirstFrameReleaseInstruction:I

    .line 767
    iput-boolean p3, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->inputStreamPending:Z

    .line 770
    :cond_1
    iget-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->compositionTextureListener:Landroidx/media3/transformer/CompositionTextureListener;

    if-eqz p1, :cond_2

    .line 771
    iget-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->timestampIterator:Landroidx/media3/common/util/ConstantRateTimestampIterator;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/util/ConstantRateTimestampIterator;

    invoke-virtual {p1}, Landroidx/media3/common/util/ConstantRateTimestampIterator;->copyOf()Landroidx/media3/common/util/ConstantRateTimestampIterator;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 773
    :goto_1
    iget-object p4, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    iget-object p6, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->timestampIterator:Landroidx/media3/common/util/ConstantRateTimestampIterator;

    invoke-static {p6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroidx/media3/common/util/TimestampIterator;

    invoke-interface {p4, p5, p6}, Landroidx/media3/exoplayer/video/VideoSink;->handleInputBitmap(Landroid/graphics/Bitmap;Landroidx/media3/common/util/TimestampIterator;)Z

    move-result p4

    if-nez p4, :cond_3

    return p3

    .line 776
    :cond_3
    iget-object p3, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->compositionTextureListener:Landroidx/media3/transformer/CompositionTextureListener;

    if-eqz p3, :cond_4

    .line 780
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object p3

    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->getMediaPeriodId()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p4

    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p4, p4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p3, p4}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p3

    .line 781
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    :goto_2
    invoke-interface {p1}, Landroidx/media3/common/util/TimestampIterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 785
    invoke-interface {p1}, Landroidx/media3/common/util/TimestampIterator;->next()J

    move-result-wide p4

    .line 786
    iget-object p6, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->compositionTextureListener:Landroidx/media3/transformer/CompositionTextureListener;

    iget-wide v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->offsetToCompositionTimeUs:J

    add-long/2addr p4, v0

    invoke-virtual {p6, p4, p5, p3}, Landroidx/media3/transformer/CompositionTextureListener;->willOutputFrame(JI)V

    goto :goto_2

    .line 790
    :cond_4
    iget-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {p1}, Landroidx/media3/exoplayer/video/VideoSink;->signalEndOfCurrentInputStream()V

    .line 791
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->getMediaPeriodId()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p3

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {p1, p3}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$700(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 792
    iget-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {p1}, Landroidx/media3/exoplayer/video/VideoSink;->signalEndOfInput()V

    :cond_5
    return p2
.end method

.method public render(JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 729
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->pendingExoPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-nez v0, :cond_1

    .line 735
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/image/ImageRenderer;->render(JJ)V

    .line 736
    iget-object v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->compositionRendererListener:Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;

    if-eqz v1, :cond_0

    .line 737
    iget-wide v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->offsetToCompositionTimeUs:J

    move-wide v4, v2

    add-long v2, p1, v4

    iget-wide v6, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->streamStartPositionUs:J

    add-long/2addr v6, v4

    move-wide v4, p3

    invoke-interface/range {v1 .. v7}, Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;->onRender(JJJ)V

    goto :goto_0

    :cond_0
    move-wide v4, p3

    .line 743
    :goto_0
    :try_start_0
    iget-object p3, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {p3, p1, p2, v4, v5}, Landroidx/media3/exoplayer/video/VideoSink;->render(JJ)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 745
    iget-object p2, p1, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;->format:Landroidx/media3/common/Format;

    const/16 p3, 0x1b59

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 731
    iput-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->pendingExoPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 732
    throw v0
.end method
