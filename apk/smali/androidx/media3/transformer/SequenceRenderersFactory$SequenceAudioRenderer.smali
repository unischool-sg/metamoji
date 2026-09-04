.class final Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;
.super Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;
.source "SequenceRenderersFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/SequenceRenderersFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SequenceAudioRenderer"
.end annotation


# instance fields
.field private final audioSink:Landroidx/media3/transformer/AudioGraphInputAudioSink;

.field private compositionRendererListener:Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;

.field private pendingOffsetToCompositionTimeUs:J

.field private final playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

.field private streamStartPositionUs:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/transformer/AudioGraphInputAudioSink;Landroidx/media3/transformer/PlaybackAudioGraphWrapper;)V
    .locals 6

    .line 309
    sget-object v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->DEFAULT:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/audio/AudioSink;)V

    .line 310
    iput-object v5, v0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->audioSink:Landroidx/media3/transformer/AudioGraphInputAudioSink;

    .line 311
    iput-object p5, v0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    return-void
.end method

.method static synthetic access$200(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;)V
    .locals 0

    .line 293
    invoke-direct {p0, p1}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->setOnRenderListener(Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;)V

    return-void
.end method

.method private onMediaItemChanged()V
    .locals 6

    .line 368
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->getMediaPeriodId()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 369
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$600(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/transformer/EditedMediaItem;

    move-result-object v1

    .line 370
    iget-object v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->audioSink:Landroidx/media3/transformer/AudioGraphInputAudioSink;

    iget-wide v3, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->pendingOffsetToCompositionTimeUs:J

    .line 373
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v5

    invoke-static {v5, v0}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$700(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    .line 370
    invoke-virtual {v2, v1, v3, v4, v0}, Landroidx/media3/transformer/AudioGraphInputAudioSink;->onMediaItemChanged(Landroidx/media3/transformer/EditedMediaItem;JZ)V

    return-void
.end method

.method private setOnRenderListener(Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;)V
    .locals 0

    .line 377
    iput-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->compositionRendererListener:Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;

    return-void
.end method


# virtual methods
.method protected onPositionReset(JZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 360
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->onPositionReset(JZZ)V

    .line 361
    invoke-direct {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->onMediaItemChanged()V

    return-void
.end method

.method protected onProcessedStreamChange()V
    .locals 0

    .line 352
    invoke-super {p0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->onProcessedStreamChange()V

    .line 353
    invoke-direct {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->onMediaItemChanged()V

    return-void
.end method

.method protected onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 342
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->getTimeline()Landroidx/media3/common/Timeline;

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

    .line 344
    iput-wide p2, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->streamStartPositionUs:J

    .line 346
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-static {v0, p6, p4, p5}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$500(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->pendingOffsetToCompositionTimeUs:J

    .line 347
    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public render(JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 318
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->render(JJ)V

    .line 319
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->compositionRendererListener:Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;

    if-eqz v0, :cond_0

    .line 320
    iget-wide v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->pendingOffsetToCompositionTimeUs:J

    add-long/2addr p1, v1

    iget-wide v3, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->streamStartPositionUs:J

    add-long v5, v3, v1

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v6}, Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;->onRender(JJJ)V

    .line 326
    :cond_0
    :goto_0
    :try_start_0
    iget-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    invoke-virtual {p1}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->processData()Z

    move-result p1
    :try_end_0
    .catch Landroidx/media3/transformer/ExportException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroidx/media3/exoplayer/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_1
    move-object p1, v0

    const/4 p2, 0x0

    const/16 p3, 0x138a

    .line 331
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method
