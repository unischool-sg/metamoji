.class final Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;
.super Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;
.source "SequenceRenderersFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/SequenceRenderersFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SequenceVideoRenderer"
.end annotation


# instance fields
.field private final bufferingVideoSink:Landroidx/media3/transformer/BufferingVideoSink;

.field private compositionRendererListener:Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;

.field private compositionTextureListener:Landroidx/media3/transformer/CompositionTextureListener;

.field private offsetToCompositionTimeUs:J

.field private pendingEffects:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private requestMediaCodecToneMapping:Z

.field private streamStartPositionUs:J

.field final synthetic this$0:Landroidx/media3/transformer/SequenceRenderersFactory;


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/SequenceRenderersFactory;Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/transformer/BufferingVideoSink;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 396
    iput-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->this$0:Landroidx/media3/transformer/SequenceRenderersFactory;

    .line 397
    new-instance p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->DEFAULT:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 399
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setMediaCodecSelector(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    .line 400
    invoke-static {p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;->getDefault(Landroid/content/Context;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setCodecAdapterFactory(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    const-wide/16 v0, 0x1388

    .line 401
    invoke-virtual {p1, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setAllowedJoiningTimeMs(J)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 402
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setEnableDecoderFallback(Z)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    .line 403
    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setEventHandler(Landroid/os/Handler;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    .line 404
    invoke-virtual {p1, p4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setEventListener(Landroidx/media3/exoplayer/video/VideoRendererEventListener;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    const/16 p2, 0x32

    .line 405
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setMaxDroppedFramesToNotify(I)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    const/high16 p2, 0x41f00000    # 30.0f

    .line 406
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setAssumedMinimumCodecOperatingRate(F)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    .line 407
    invoke-virtual {p1, p5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setVideoSink(Landroidx/media3/exoplayer/video/VideoSink;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    .line 397
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)V

    .line 408
    iput-object p5, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->bufferingVideoSink:Landroidx/media3/transformer/BufferingVideoSink;

    .line 409
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->pendingEffects:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;)V
    .locals 0

    .line 381
    invoke-direct {p0, p1}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->setOnRenderListener(Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;Landroidx/media3/transformer/CompositionTextureListener;)V
    .locals 0

    .line 381
    invoke-direct {p0, p1}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->setCompositionTextureListener(Landroidx/media3/transformer/CompositionTextureListener;)V

    return-void
.end method

.method private activateBufferingVideoSink()V
    .locals 3

    .line 565
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->bufferingVideoSink:Landroidx/media3/transformer/BufferingVideoSink;

    invoke-virtual {v0}, Landroidx/media3/transformer/BufferingVideoSink;->getVideoSink()Landroidx/media3/exoplayer/video/VideoSink;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 568
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->this$0:Landroidx/media3/transformer/SequenceRenderersFactory;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$900(Landroidx/media3/transformer/SequenceRenderersFactory;)Landroidx/media3/exoplayer/video/VideoSink;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/VideoSink;

    .line 569
    iget-object v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->bufferingVideoSink:Landroidx/media3/transformer/BufferingVideoSink;

    invoke-virtual {v1, v0}, Landroidx/media3/transformer/BufferingVideoSink;->setVideoSink(Landroidx/media3/exoplayer/video/VideoSink;)V

    .line 570
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v1

    .line 571
    iget-object v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->this$0:Landroidx/media3/transformer/SequenceRenderersFactory;

    invoke-static {v2}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$800(Landroidx/media3/transformer/SequenceRenderersFactory;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 572
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 574
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->getCodecInfo()Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 575
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->setOutputSurfaceV23(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroid/view/Surface;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private deactivateBufferingVideoSink()V
    .locals 2

    .line 580
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->this$0:Landroidx/media3/transformer/SequenceRenderersFactory;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$800(Landroidx/media3/transformer/SequenceRenderersFactory;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 583
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->bufferingVideoSink:Landroidx/media3/transformer/BufferingVideoSink;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/transformer/BufferingVideoSink;->setVideoSink(Landroidx/media3/exoplayer/video/VideoSink;)V

    .line 587
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->bufferingVideoSink:Landroidx/media3/transformer/BufferingVideoSink;

    invoke-virtual {v0}, Landroidx/media3/transformer/BufferingVideoSink;->clearPendingOperations()V

    .line 588
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 592
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->getCodecInfo()Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 594
    iget-object v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->bufferingVideoSink:Landroidx/media3/transformer/BufferingVideoSink;

    invoke-virtual {v1}, Landroidx/media3/transformer/BufferingVideoSink;->getInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->setOutputSurfaceV23(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroid/view/Surface;)V

    return-void

    .line 596
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->releaseCodec()V

    return-void
.end method

.method private setCompositionTextureListener(Landroidx/media3/transformer/CompositionTextureListener;)V
    .locals 0

    .line 606
    iput-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->compositionTextureListener:Landroidx/media3/transformer/CompositionTextureListener;

    return-void
.end method

.method private setOnRenderListener(Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;)V
    .locals 0

    .line 601
    iput-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->compositionRendererListener:Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;

    return-void
.end method


# virtual methods
.method protected changeVideoSinkInputStream(Landroidx/media3/exoplayer/video/VideoSink;ILandroidx/media3/common/Format;I)V
    .locals 7

    .line 544
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->getOutputStreamStartPositionUs()J

    move-result-wide v3

    iget-object v6, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->pendingEffects:Lcom/google/common/collect/ImmutableList;

    move-object v0, p1

    move v1, p2

    move-object v2, p3

    move v5, p4

    .line 541
    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/video/VideoSink;->onInputStreamChanged(ILandroidx/media3/common/Format;JILjava/util/List;)V

    return-void
.end method

.method protected getBufferTimestampAdjustmentUs()J
    .locals 2

    .line 524
    iget-wide v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->offsetToCompositionTimeUs:J

    return-wide v0
.end method

.method protected getMediaFormat(Landroidx/media3/common/Format;Ljava/lang/String;Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;
    .locals 0

    .line 486
    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getMediaFormat(Landroidx/media3/common/Format;Ljava/lang/String;Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;

    move-result-object p1

    move-object p2, p0

    .line 493
    iget-boolean p3, p2, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->requestMediaCodecToneMapping:Z

    if-eqz p3, :cond_0

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1f

    if-lt p3, p4, :cond_0

    .line 494
    const-string p3, "color-transfer-request"

    const/4 p4, 0x3

    invoke-virtual {p1, p3, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-object p1
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    return-void

    .line 507
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->handleMessage(ILjava/lang/Object;)V

    return-void
.end method

.method protected onDisabled()V
    .locals 0

    .line 448
    invoke-super {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onDisabled()V

    .line 449
    invoke-direct {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->deactivateBufferingVideoSink()V

    return-void
.end method

.method protected onEnabled(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 433
    invoke-direct {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->activateBufferingVideoSink()V

    .line 435
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onEnabled(ZZ)V

    return-void
.end method

.method protected onRelease()V
    .locals 1

    .line 454
    invoke-super {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onRelease()V

    .line 455
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->bufferingVideoSink:Landroidx/media3/transformer/BufferingVideoSink;

    invoke-virtual {v0}, Landroidx/media3/transformer/BufferingVideoSink;->release()V

    return-void
.end method

.method protected onStarted()V
    .locals 0

    .line 442
    invoke-direct {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->activateBufferingVideoSink()V

    .line 443
    invoke-super {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onStarted()V

    return-void
.end method

.method protected onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 465
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 469
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-static {v0, p6}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$600(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/transformer/EditedMediaItem;

    move-result-object v0

    .line 470
    iput-wide p2, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->streamStartPositionUs:J

    .line 472
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-static {v1, p6, p4, p5}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$500(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->offsetToCompositionTimeUs:J

    .line 473
    iget-object v0, v0, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    iget-object v0, v0, Landroidx/media3/transformer/Effects;->videoEffects:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->pendingEffects:Lcom/google/common/collect/ImmutableList;

    .line 474
    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public render(JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 418
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->render(JJ)V

    .line 419
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->compositionRendererListener:Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;

    if-eqz v0, :cond_0

    .line 420
    iget-wide v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->offsetToCompositionTimeUs:J

    add-long/2addr p1, v1

    iget-wide v3, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->streamStartPositionUs:J

    add-long v5, v3, v1

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v6}, Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;->onRender(JJJ)V

    :cond_0
    return-void
.end method

.method protected renderOutputBufferV21(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V
    .locals 4

    .line 552
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->compositionTextureListener:Landroidx/media3/transformer/CompositionTextureListener;

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->getMediaPeriodId()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 558
    iget-object v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->compositionTextureListener:Landroidx/media3/transformer/CompositionTextureListener;

    const-wide/16 v2, 0x3e8

    div-long v2, p5, v2

    invoke-virtual {v1, v2, v3, v0}, Landroidx/media3/transformer/CompositionTextureListener;->willOutputFrame(JI)V

    .line 561
    :cond_0
    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V

    return-void
.end method

.method protected renderToEndOfStream()V
    .locals 2

    .line 529
    invoke-super {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderToEndOfStream()V

    .line 530
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->getMediaPeriodId()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v0, v1}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$700(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->bufferingVideoSink:Landroidx/media3/transformer/BufferingVideoSink;

    invoke-virtual {v0}, Landroidx/media3/transformer/BufferingVideoSink;->signalEndOfInput()V

    :cond_0
    return-void
.end method

.method public setRequestMediaCodecToneMapping(Z)V
    .locals 0

    .line 413
    iput-boolean p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->requestMediaCodecToneMapping:Z

    return-void
.end method

.method protected shouldInitCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .locals 1

    .line 512
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->this$0:Landroidx/media3/transformer/SequenceRenderersFactory;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$800(Landroidx/media3/transformer/SequenceRenderersFactory;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->bufferingVideoSink:Landroidx/media3/transformer/BufferingVideoSink;

    .line 513
    invoke-virtual {v0}, Landroidx/media3/transformer/BufferingVideoSink;->getVideoSink()Landroidx/media3/exoplayer/video/VideoSink;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 514
    invoke-virtual {p0, v0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 519
    :cond_0
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldInitCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result p1

    return p1
.end method
