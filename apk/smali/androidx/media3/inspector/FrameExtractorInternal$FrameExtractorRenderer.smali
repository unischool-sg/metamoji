.class final Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;
.super Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;
.source "FrameExtractorInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/inspector/FrameExtractorInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FrameExtractorRenderer"
.end annotation


# instance fields
.field private effectsFromPlayer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private final extractedFrameNeedsRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private frameRenderedSinceLastPositionReset:Z

.field private final glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

.field private final internal:Landroidx/media3/inspector/FrameExtractorInternal;

.field private rotation:Landroidx/media3/common/Effect;

.field private final toneMapHdrToSdr:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/exoplayer/video/VideoRendererEventListener;ZLandroidx/media3/common/GlObjectsProvider;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/media3/inspector/FrameExtractorInternal;)V
    .locals 2

    .line 626
    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;-><init>(Landroid/content/Context;)V

    .line 628
    invoke-virtual {v0, p3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setMediaCodecSelector(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 629
    invoke-virtual {p1, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setAllowedJoiningTimeMs(J)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    .line 630
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setEventHandler(Landroid/os/Handler;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    .line 631
    invoke-virtual {p1, p4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setEventListener(Landroidx/media3/exoplayer/video/VideoRendererEventListener;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 632
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setMaxDroppedFramesToNotify(I)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    .line 626
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)V

    .line 633
    iput-boolean p5, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->toneMapHdrToSdr:Z

    .line 634
    iput-object p6, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    .line 635
    iput-object p7, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->extractedFrameNeedsRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 636
    iput-object p8, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->internal:Landroidx/media3/inspector/FrameExtractorInternal;

    .line 637
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->effectsFromPlayer:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/exoplayer/video/VideoRendererEventListener;ZLandroidx/media3/common/GlObjectsProvider;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/media3/inspector/FrameExtractorInternal;Landroidx/media3/inspector/FrameExtractorInternal$1;)V
    .locals 0

    .line 607
    invoke-direct/range {p0 .. p8}, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/exoplayer/video/VideoRendererEventListener;ZLandroidx/media3/common/GlObjectsProvider;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/media3/inspector/FrameExtractorInternal;)V

    return-void
.end method

.method private setEffectsWithRotation()V
    .locals 2

    .line 727
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 728
    iget-object v1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->rotation:Landroidx/media3/common/Effect;

    if-eqz v1, :cond_0

    .line 729
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 731
    :cond_0
    iget-object v1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->effectsFromPlayer:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 732
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->setVideoEffects(Ljava/util/List;)V

    return-void
.end method

.method private setRotation(Landroidx/media3/common/Effect;)V
    .locals 0

    .line 722
    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->rotation:Landroidx/media3/common/Effect;

    .line 723
    invoke-direct {p0}, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->setEffectsWithRotation()V

    return-void
.end method


# virtual methods
.method protected createPlaybackVideoGraphWrapper(Landroid/content/Context;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
    .locals 2

    .line 643
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    if-nez v0, :cond_0

    .line 644
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->createPlaybackVideoGraphWrapper(Landroid/content/Context;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    move-result-object p1

    return-object p1

    .line 646
    :cond_0
    new-instance v0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;

    invoke-direct {v0}, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;-><init>()V

    iget-object v1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    .line 647
    invoke-virtual {v0, v1}, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;->setGlObjectsProvider(Landroidx/media3/common/GlObjectsProvider;)Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;

    move-result-object v0

    .line 648
    new-instance v1, Landroidx/media3/effect/SingleInputVideoGraph$Factory;

    .line 649
    invoke-virtual {v0}, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;->build()Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/media3/effect/SingleInputVideoGraph$Factory;-><init>(Landroidx/media3/common/VideoFrameProcessor$Factory;)V

    .line 650
    new-instance v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;)V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 651
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->experimentalSetLateThresholdToDropInputUs(J)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 652
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->setEnablePlaylistMode(Z)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    move-result-object p1

    .line 653
    invoke-virtual {p0}, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->getClock()Landroidx/media3/common/util/Clock;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->setClock(Landroidx/media3/common/util/Clock;)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    move-result-object p1

    .line 654
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->setVideoGraphFactory(Landroidx/media3/common/VideoGraph$Factory;)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    move-result-object p1

    .line 655
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->build()Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    move-result-object p1

    return-object p1
.end method

.method public isReady()Z
    .locals 1

    .line 741
    iget-boolean v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->frameRenderedSinceLastPositionReset:Z

    return v0
.end method

.method protected maybeInitializeProcessingPipeline(Landroidx/media3/common/Format;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 694
    iget-object v0, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v0}, Landroidx/media3/common/ColorInfo;->isTransferHdr(Landroidx/media3/common/ColorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->toneMapHdrToSdr:Z

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p1

    sget-object v0, Landroidx/media3/common/ColorInfo;->SDR_BT709_LIMITED:Landroidx/media3/common/ColorInfo;

    invoke-virtual {p1, v0}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    .line 698
    :cond_0
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeInitializeProcessingPipeline(Landroidx/media3/common/Format;)Z

    move-result p1

    return p1
.end method

.method protected onInputFormatChanged(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 705
    iget-object v0, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    .line 707
    iget v1, v0, Landroidx/media3/common/Format;->rotationDegrees:I

    if-eqz v1, :cond_0

    .line 711
    new-instance v1, Landroidx/media3/effect/ScaleAndRotateTransformation$Builder;

    invoke-direct {v1}, Landroidx/media3/effect/ScaleAndRotateTransformation$Builder;-><init>()V

    iget v2, v0, Landroidx/media3/common/Format;->rotationDegrees:I

    rsub-int v2, v2, 0x168

    int-to-float v2, v2

    .line 713
    invoke-virtual {v1, v2}, Landroidx/media3/effect/ScaleAndRotateTransformation$Builder;->setRotationDegrees(F)Landroidx/media3/effect/ScaleAndRotateTransformation$Builder;

    move-result-object v1

    .line 714
    invoke-virtual {v1}, Landroidx/media3/effect/ScaleAndRotateTransformation$Builder;->build()Landroidx/media3/effect/ScaleAndRotateTransformation;

    move-result-object v1

    .line 711
    invoke-direct {p0, v1}, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->setRotation(Landroidx/media3/common/Effect;)V

    .line 715
    invoke-virtual {v0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setRotationDegrees(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    iput-object v0, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    .line 718
    :cond_0
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onInputFormatChanged(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object p1

    return-object p1
.end method

.method protected onPositionReset(JZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 797
    iput-boolean v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->frameRenderedSinceLastPositionReset:Z

    .line 798
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->extractedFrameNeedsRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 799
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onPositionReset(JZZ)V

    return-void
.end method

.method protected onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 665
    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    move-object p2, p1

    move-object p1, p0

    const/4 p3, 0x0

    .line 666
    iput-boolean p3, p1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->frameRenderedSinceLastPositionReset:Z

    const/4 p4, 0x0

    .line 667
    invoke-direct {p0, p4}, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->setRotation(Landroidx/media3/common/Effect;)V

    .line 669
    array-length p4, p2

    :goto_0
    if-ge p3, p4, :cond_1

    aget-object p5, p2, p3

    .line 670
    iget-object p6, p5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p6}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_0

    .line 671
    iget-object p6, p5, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-eqz p6, :cond_0

    .line 673
    iget-object p5, p5, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    const-class p6, Landroidx/media3/extractor/metadata/ThumbnailMetadata;

    .line 674
    invoke-virtual {p5, p6}, Landroidx/media3/common/Metadata;->getFirstEntryOfType(Ljava/lang/Class;)Landroidx/media3/common/Metadata$Entry;

    move-result-object p5

    check-cast p5, Landroidx/media3/extractor/metadata/ThumbnailMetadata;

    if-eqz p5, :cond_0

    .line 675
    iget-wide v0, p5, Landroidx/media3/extractor/metadata/ThumbnailMetadata;->presentationTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long p6, v0, v2

    if-ltz p6, :cond_0

    .line 676
    iget-object p2, p1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->internal:Landroidx/media3/inspector/FrameExtractorInternal;

    iget-wide p3, p5, Landroidx/media3/extractor/metadata/ThumbnailMetadata;->presentationTimeUs:J

    .line 677
    invoke-static {p3, p4}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide p3

    .line 676
    invoke-static {p2, p3, p4}, Landroidx/media3/inspector/FrameExtractorInternal;->access$502(Landroidx/media3/inspector/FrameExtractorInternal;J)J

    return-void

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected processOutputBuffer(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 765
    iget-boolean v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->frameRenderedSinceLastPositionReset:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 768
    :cond_0
    invoke-super/range {p0 .. p14}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->processOutputBuffer(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z

    move-result p1

    return p1
.end method

.method public render(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 746
    iget-boolean v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->frameRenderedSinceLastPositionReset:Z

    if-nez v0, :cond_0

    .line 747
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->render(JJ)V

    :cond_0
    return-void
.end method

.method protected renderOutputBufferV21(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V
    .locals 1

    .line 785
    iget-boolean v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->frameRenderedSinceLastPositionReset:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 789
    iput-boolean v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->frameRenderedSinceLastPositionReset:Z

    .line 790
    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V

    return-void
.end method

.method public setVideoEffects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)V"
        }
    .end annotation

    .line 687
    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->effectsFromPlayer:Ljava/util/List;

    .line 688
    invoke-direct {p0}, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;->setEffectsWithRotation()V

    return-void
.end method
