.class final Landroidx/media3/transformer/CompositionPlayerInternal;
.super Ljava/lang/Object;
.source "CompositionPlayerInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/CompositionPlayerInternal$Listener;,
        Landroidx/media3/transformer/CompositionPlayerInternal$OutputSurfaceInfo;
    }
.end annotation


# static fields
.field private static final MSG_CLEAR_OUTPUT_SURFACE:I = 0x6

.field private static final MSG_END_SEEK:I = 0x8

.field private static final MSG_RELEASE:I = 0x9

.field private static final MSG_SET_AUDIO_ATTRIBUTES:I = 0xa

.field private static final MSG_SET_COMPOSITION:I = 0x0

.field private static final MSG_SET_OUTPUT_SURFACE_INFO:I = 0x5

.field private static final MSG_SET_PLAYBACK_AUDIO_GRAPH_WRAPPER:I = 0x4

.field private static final MSG_SET_VOLUME:I = 0x3

.field private static final MSG_START_RENDERING:I = 0x1

.field private static final MSG_START_SEEK:I = 0x7

.field private static final MSG_STOP_RENDERING:I = 0x2

.field public static final RELEASE_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "CompPlayerInternal"


# instance fields
.field private final clock:Landroidx/media3/common/util/Clock;

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private final handler:Landroidx/media3/common/util/HandlerWrapper;

.field private final listener:Landroidx/media3/transformer/CompositionPlayerInternal$Listener;

.field private final listenerHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

.field private final playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

.field private released:Z

.field private final videoPacketReleaseControl:Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/transformer/PlaybackAudioGraphWrapper;Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;Landroidx/media3/transformer/CompositionPlayerInternal$Listener;Landroidx/media3/common/util/HandlerWrapper;Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p2, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->clock:Landroidx/media3/common/util/Clock;

    .line 119
    invoke-interface {p2, p1, p0}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 120
    iput-object p3, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    .line 121
    iput-object p4, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 122
    iput-object p5, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->listener:Landroidx/media3/transformer/CompositionPlayerInternal$Listener;

    .line 123
    iput-object p6, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->listenerHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 124
    iput-object p7, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->videoPacketReleaseControl:Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;

    return-void
.end method

.method private clearOutputSurfaceInternal(Landroidx/media3/common/util/ConditionVariable;)V
    .locals 2

    .line 319
    :try_start_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->videoPacketReleaseControl:Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 320
    invoke-virtual {v0, v1}, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->setOutputSurface(Landroid/view/Surface;)V

    .line 322
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->clearOutputSurfaceInfo()V

    .line 323
    invoke-virtual {p1}, Landroidx/media3/common/util/ConditionVariable;->open()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 325
    const-string v0, "error clearing video output"

    const/16 v1, 0x1b59

    invoke-direct {p0, v0, p1, v1}, Landroidx/media3/transformer/CompositionPlayerInternal;->maybeRaiseError(Ljava/lang/String;Ljava/lang/Exception;I)V

    return-void
.end method

.method private maybeNotifyDroppedFrames()V
    .locals 7

    .line 204
    iget v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->droppedFrames:I

    if-lez v0, :cond_0

    .line 205
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 206
    iget-wide v2, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    .line 207
    iget v4, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->droppedFrames:I

    .line 208
    iget-object v5, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->listenerHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v6, Landroidx/media3/transformer/CompositionPlayerInternal$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v4, v2, v3}, Landroidx/media3/transformer/CompositionPlayerInternal$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/transformer/CompositionPlayerInternal;IJ)V

    invoke-interface {v5, v6}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    .line 210
    iput v2, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->droppedFrames:I

    .line 211
    iput-wide v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->droppedFrameAccumulationStartTimeMs:J

    :cond_0
    return-void
.end method

.method private maybeRaiseError(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 2

    .line 350
    :try_start_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->listenerHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v1, Landroidx/media3/transformer/CompositionPlayerInternal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/media3/transformer/CompositionPlayerInternal$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/transformer/CompositionPlayerInternal;Ljava/lang/String;Ljava/lang/Exception;I)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 359
    const-string p2, "CompPlayerInternal"

    const-string p3, "error"

    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private releaseInternal(Landroidx/media3/common/util/ConditionVariable;)V
    .locals 3

    .line 288
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayerInternal;->maybeNotifyDroppedFrames()V

    .line 289
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    invoke-virtual {v0}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->release()V

    .line 290
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->clearOutputSurfaceInfo()V

    .line 291
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-virtual {p1}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 293
    :try_start_1
    const-string v1, "CompPlayerInternal"

    const-string v2, "error while releasing the player"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    invoke-virtual {p1}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    return-void

    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    .line 296
    throw v0
.end method

.method private setCompositionInternal(Landroidx/media3/transformer/Composition;)V
    .locals 5

    .line 276
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    iget-object v1, p1, Landroidx/media3/transformer/Composition;->effects:Landroidx/media3/transformer/Effects;

    iget-object v1, v1, Landroidx/media3/transformer/Effects;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->setAudioProcessors(Ljava/util/List;)V

    .line 278
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-object v1, p1, Landroidx/media3/transformer/Composition;->effects:Landroidx/media3/transformer/Effects;

    iget-object v1, v1, Landroidx/media3/transformer/Effects;->videoEffects:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->setCompositionEffects(Ljava/util/List;)V

    .line 279
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-object v1, p1, Landroidx/media3/transformer/Composition;->videoCompositorSettings:Landroidx/media3/common/VideoCompositorSettings;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->setCompositorSettings(Landroidx/media3/common/VideoCompositorSettings;)V

    .line 280
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget v1, p1, Landroidx/media3/transformer/Composition;->hdrMode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->setRequestOpenGlToneMapping(Z)V

    .line 282
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget p1, p1, Landroidx/media3/transformer/Composition;->hdrMode:I

    if-ne p1, v4, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->setIsInputSdrToneMapped(Z)V

    return-void
.end method

.method private setOutputSurfaceInfoOnInternalThread(Landroidx/media3/transformer/CompositionPlayerInternal$OutputSurfaceInfo;)V
    .locals 2

    .line 334
    :try_start_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->videoPacketReleaseControl:Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;

    if-eqz v0, :cond_0

    .line 335
    iget-object v1, p1, Landroidx/media3/transformer/CompositionPlayerInternal$OutputSurfaceInfo;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->setOutputSurface(Landroid/view/Surface;)V

    .line 337
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-object v1, p1, Landroidx/media3/transformer/CompositionPlayerInternal$OutputSurfaceInfo;->surface:Landroid/view/Surface;

    iget-object p1, p1, Landroidx/media3/transformer/CompositionPlayerInternal$OutputSurfaceInfo;->size:Landroidx/media3/common/util/Size;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->setOutputSurfaceInfo(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 340
    const-string v0, "error setting surface view"

    const/16 v1, 0x1b59

    invoke-direct {p0, v0, p1, v1}, Landroidx/media3/transformer/CompositionPlayerInternal;->maybeRaiseError(Ljava/lang/String;Ljava/lang/Exception;I)V

    return-void
.end method


# virtual methods
.method public clearOutputSurface(Landroidx/media3/common/util/ConditionVariable;)V
    .locals 2

    .line 154
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v1, 0x6

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public endSeek()V
    .locals 2

    .line 169
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/16 v0, 0x3e8

    .line 220
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 258
    const-string v1, "Unknown message"

    goto :goto_0

    .line 255
    :pswitch_0
    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v1, p1}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V

    goto/16 :goto_1

    .line 249
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/common/util/ConditionVariable;

    invoke-direct {p0, p1}, Landroidx/media3/transformer/CompositionPlayerInternal;->releaseInternal(Landroidx/media3/common/util/ConditionVariable;)V

    goto :goto_1

    .line 246
    :pswitch_2
    iget-object p1, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    invoke-virtual {p1}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->endSeek()V

    goto :goto_1

    .line 243
    :pswitch_3
    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->startSeek(J)V

    goto :goto_1

    .line 238
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/common/util/ConditionVariable;

    invoke-direct {p0, p1}, Landroidx/media3/transformer/CompositionPlayerInternal;->clearOutputSurfaceInternal(Landroidx/media3/common/util/ConditionVariable;)V

    goto :goto_1

    .line 234
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/transformer/CompositionPlayerInternal$OutputSurfaceInfo;

    invoke-direct {p0, p1}, Landroidx/media3/transformer/CompositionPlayerInternal;->setOutputSurfaceInfoOnInternalThread(Landroidx/media3/transformer/CompositionPlayerInternal$OutputSurfaceInfo;)V

    goto :goto_1

    .line 231
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    goto :goto_1

    .line 228
    :pswitch_7
    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->setVolume(F)V

    goto :goto_1

    .line 225
    :pswitch_8
    invoke-virtual {p0}, Landroidx/media3/transformer/CompositionPlayerInternal;->stopRenderingInternal()V

    goto :goto_1

    .line 222
    :pswitch_9
    invoke-virtual {p0}, Landroidx/media3/transformer/CompositionPlayerInternal;->startRenderingInternal()V

    goto :goto_1

    .line 252
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/transformer/Composition;

    invoke-direct {p0, p1}, Landroidx/media3/transformer/CompositionPlayerInternal;->setCompositionInternal(Landroidx/media3/transformer/Composition;)V

    goto :goto_1

    .line 258
    :goto_0
    new-instance v2, Ljava/lang/IllegalStateException;

    iget p1, p1, Landroid/os/Message;->what:I

    .line 260
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-direct {p0, v1, v2, v0}, Landroidx/media3/transformer/CompositionPlayerInternal;->maybeRaiseError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 264
    const-string v1, "Unknown error"

    invoke-direct {p0, v1, p1, v0}, Landroidx/media3/transformer/CompositionPlayerInternal;->maybeRaiseError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :goto_1
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$maybeNotifyDroppedFrames$0$androidx-media3-transformer-CompositionPlayerInternal(IJ)V
    .locals 1

    .line 209
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->listener:Landroidx/media3/transformer/CompositionPlayerInternal$Listener;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/transformer/CompositionPlayerInternal$Listener;->onDroppedVideoFrames(IJ)V

    return-void
.end method

.method synthetic lambda$maybeRaiseError$1$androidx-media3-transformer-CompositionPlayerInternal(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 1

    .line 354
    iget-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->released:Z

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->listener:Landroidx/media3/transformer/CompositionPlayerInternal$Listener;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/transformer/CompositionPlayerInternal$Listener;->onError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :cond_0
    return-void
.end method

.method onFrameDropped()V
    .locals 2

    .line 197
    iget v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->droppedFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->droppedFrames:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 199
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayerInternal;->maybeNotifyDroppedFrames()V

    :cond_0
    return-void
.end method

.method public release()Z
    .locals 3

    .line 179
    iget-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->released:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 181
    iput-boolean v1, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->released:Z

    .line 182
    new-instance v0, Landroidx/media3/common/util/ConditionVariable;

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->clock:Landroidx/media3/common/util/Clock;

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ConditionVariable;-><init>(Landroidx/media3/common/util/Clock;)V

    .line 183
    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v2, 0x9

    invoke-interface {v1, v2, v0}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    const-wide/16 v1, 0x1f4

    .line 184
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/ConditionVariable;->blockUninterruptible(J)Z

    move-result v0

    return v0
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V
    .locals 2

    .line 188
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v1, 0xa

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public setComposition(Landroidx/media3/transformer/Composition;)V
    .locals 2

    .line 130
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public setOutputSurfaceInfo(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V
    .locals 2

    .line 147
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v1, Landroidx/media3/transformer/CompositionPlayerInternal$OutputSurfaceInfo;

    invoke-direct {v1, p1, p2}, Landroidx/media3/transformer/CompositionPlayerInternal$OutputSurfaceInfo;-><init>(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    const/4 p1, 0x5

    .line 148
    invoke-interface {v0, p1, v1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    .line 149
    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public setPlaybackAudioGraphWrapper(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;)V
    .locals 2

    .line 159
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v1, 0x4

    .line 160
    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    .line 161
    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .line 142
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public startRendering()V
    .locals 2

    .line 134
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startRenderingInternal()V
    .locals 2

    .line 300
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->droppedFrameAccumulationStartTimeMs:J

    .line 301
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    invoke-virtual {v0}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->startRendering()V

    .line 302
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->startRendering()V

    .line 303
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->videoPacketReleaseControl:Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->onStarted()V

    :cond_0
    return-void
.end method

.method public startSeek(J)V
    .locals 2

    .line 165
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v1, 0x7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public stopRendering()V
    .locals 2

    .line 138
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopRenderingInternal()V
    .locals 1

    .line 309
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayerInternal;->maybeNotifyDroppedFrames()V

    .line 310
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    invoke-virtual {v0}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->stopRendering()V

    .line 311
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->stopRendering()V

    .line 312
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayerInternal;->videoPacketReleaseControl:Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->onStopped()V

    :cond_0
    return-void
.end method
