.class Landroidx/media3/transformer/ForwardingVideoSink;
.super Ljava/lang/Object;
.source "ForwardingVideoSink.java"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink;


# instance fields
.field private final videoSink:Landroidx/media3/exoplayer/video/VideoSink;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    return-void
.end method


# virtual methods
.method public allowReleaseFirstFrameBeforeStarted()V
    .locals 1

    .line 149
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->allowReleaseFirstFrameBeforeStarted()V

    return-void
.end method

.method public clearOutputSurfaceInfo()V
    .locals 1

    .line 128
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->clearOutputSurfaceInfo()V

    return-void
.end method

.method public flush(Z)V
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->flush(Z)V

    return-void
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .line 98
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public handleInputBitmap(Landroid/graphics/Bitmap;Landroidx/media3/common/util/TimestampIterator;)Z
    .locals 1

    .line 160
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/video/VideoSink;->handleInputBitmap(Landroid/graphics/Bitmap;Landroidx/media3/common/util/TimestampIterator;)Z

    move-result p1

    return p1
.end method

.method public handleInputFrame(JLandroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;)Z
    .locals 1

    .line 155
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/video/VideoSink;->handleInputFrame(JLandroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;)Z

    move-result p1

    return p1
.end method

.method public initialize(Landroidx/media3/common/Format;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->initialize(Landroidx/media3/common/Format;)Z

    move-result p1

    return p1
.end method

.method public isEnded()Z
    .locals 1

    .line 93
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->isEnded()Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public isReady(Z)Z
    .locals 1

    .line 78
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->isReady(Z)Z

    move-result p1

    return p1
.end method

.method public join(Z)V
    .locals 1

    .line 170
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->join(Z)V

    return-void
.end method

.method public onInputStreamChanged(ILandroidx/media3/common/Format;JILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/Format;",
            "JI",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)V"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/video/VideoSink;->onInputStreamChanged(ILandroidx/media3/common/Format;JILjava/util/List;)V

    return-void
.end method

.method public redraw()V
    .locals 1

    .line 68
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->redraw()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 175
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->release()V

    return-void
.end method

.method public render(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/VideoSink;->render(JJ)V

    return-void
.end method

.method public setBufferTimestampAdjustmentUs(J)V
    .locals 1

    .line 118
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/video/VideoSink;->setBufferTimestampAdjustmentUs(J)V

    return-void
.end method

.method public setChangeFrameRateStrategy(I)V
    .locals 1

    .line 133
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->setChangeFrameRateStrategy(I)V

    return-void
.end method

.method public setListener(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/video/VideoSink;->setListener(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public setOutputSurfaceInfo(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V
    .locals 1

    .line 123
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/video/VideoSink;->setOutputSurfaceInfo(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 1

    .line 108
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->setPlaybackSpeed(F)V

    return-void
.end method

.method public setVideoEffects(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)V"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->setVideoEffects(Ljava/util/List;)V

    return-void
.end method

.method public setVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .locals 1

    .line 103
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->setVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V

    return-void
.end method

.method public signalEndOfCurrentInputStream()V
    .locals 1

    .line 83
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->signalEndOfCurrentInputStream()V

    return-void
.end method

.method public signalEndOfInput()V
    .locals 1

    .line 88
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->signalEndOfInput()V

    return-void
.end method

.method public startRendering()V
    .locals 1

    .line 43
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->startRendering()V

    return-void
.end method

.method public stopRendering()V
    .locals 1

    .line 48
    iget-object v0, p0, Landroidx/media3/transformer/ForwardingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->stopRendering()V

    return-void
.end method
