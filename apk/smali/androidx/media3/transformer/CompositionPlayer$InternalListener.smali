.class final Landroidx/media3/transformer/CompositionPlayer$InternalListener;
.super Ljava/lang/Object;
.source "CompositionPlayer.java"

# interfaces
.implements Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;
.implements Landroidx/media3/transformer/CompositionPlayerInternal$Listener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/CompositionPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/transformer/CompositionPlayer;


# direct methods
.method private constructor <init>(Landroidx/media3/transformer/CompositionPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2142
    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$InternalListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/transformer/CompositionPlayer;Landroidx/media3/transformer/CompositionPlayer$1;)V
    .locals 0

    .line 2142
    invoke-direct {p0, p1}, Landroidx/media3/transformer/CompositionPlayer$InternalListener;-><init>(Landroidx/media3/transformer/CompositionPlayer;)V

    return-void
.end method


# virtual methods
.method public executePlayerCommand(I)V
    .locals 4

    .line 2158
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$InternalListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    .line 2159
    invoke-static {v0}, Landroidx/media3/transformer/CompositionPlayer;->access$3400(Landroidx/media3/transformer/CompositionPlayer;)Z

    move-result v1

    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer$InternalListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-static {v2}, Landroidx/media3/transformer/CompositionPlayer;->access$3500(Landroidx/media3/transformer/CompositionPlayer;)I

    move-result v2

    iget-object v3, p0, Landroidx/media3/transformer/CompositionPlayer$InternalListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-static {v3}, Landroidx/media3/transformer/CompositionPlayer;->access$3600(Landroidx/media3/transformer/CompositionPlayer;)I

    move-result v3

    .line 2158
    invoke-static {v0, v1, p1, v2, v3}, Landroidx/media3/transformer/CompositionPlayer;->access$3700(Landroidx/media3/transformer/CompositionPlayer;ZIII)V

    .line 2160
    iget-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$InternalListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer;->access$3800(Landroidx/media3/transformer/CompositionPlayer;)V

    return-void
.end method

.method synthetic lambda$onError$1$androidx-media3-transformer-CompositionPlayer$InternalListener(Landroidx/media3/common/VideoFrameProcessingException;)V
    .locals 3

    .line 2225
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$InternalListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    const-string v1, "Error processing video frames"

    const/16 v2, 0x1b59

    invoke-static {v0, v1, p1, v2}, Landroidx/media3/transformer/CompositionPlayer;->access$2700(Landroidx/media3/transformer/CompositionPlayer;Ljava/lang/String;Ljava/lang/Exception;I)V

    return-void
.end method

.method synthetic lambda$onFirstFrameRendered$0$androidx-media3-transformer-CompositionPlayer$InternalListener()V
    .locals 2

    .line 2201
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$InternalListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/media3/transformer/CompositionPlayer;->access$4502(Landroidx/media3/transformer/CompositionPlayer;Z)Z

    .line 2202
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$InternalListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-static {v0}, Landroidx/media3/transformer/CompositionPlayer;->access$4600(Landroidx/media3/transformer/CompositionPlayer;)V

    return-void
.end method

.method public onDroppedVideoFrames(IJ)V
    .locals 1

    .line 2173
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$InternalListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-static {v0}, Landroidx/media3/transformer/CompositionPlayer;->access$2800(Landroidx/media3/transformer/CompositionPlayer;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onDroppedFrames(IJ)V

    return-void
.end method

.method public onError(Landroidx/media3/common/VideoFrameProcessingException;)V
    .locals 2

    .line 2223
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$InternalListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-static {v0}, Landroidx/media3/transformer/CompositionPlayer;->access$4300(Landroidx/media3/transformer/CompositionPlayer;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    new-instance v1, Landroidx/media3/transformer/CompositionPlayer$InternalListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroidx/media3/transformer/CompositionPlayer$InternalListener$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/transformer/CompositionPlayer$InternalListener;Landroidx/media3/common/VideoFrameProcessingException;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 1

    .line 2167
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$InternalListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-static {v0, p1, p2, p3}, Landroidx/media3/transformer/CompositionPlayer;->access$2700(Landroidx/media3/transformer/CompositionPlayer;Ljava/lang/String;Ljava/lang/Exception;I)V

    return-void
.end method

.method public onFirstFrameRendered()V
    .locals 2

    .line 2199
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$InternalListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-static {v0}, Landroidx/media3/transformer/CompositionPlayer;->access$4300(Landroidx/media3/transformer/CompositionPlayer;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    new-instance v1, Landroidx/media3/transformer/CompositionPlayer$InternalListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/media3/transformer/CompositionPlayer$InternalListener$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/transformer/CompositionPlayer$InternalListener;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFrameDropped()V
    .locals 1

    .line 2208
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$InternalListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-static {v0}, Landroidx/media3/transformer/CompositionPlayer;->access$4400(Landroidx/media3/transformer/CompositionPlayer;)Landroidx/media3/transformer/CompositionPlayerInternal;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2211
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$InternalListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-static {v0}, Landroidx/media3/transformer/CompositionPlayer;->access$4400(Landroidx/media3/transformer/CompositionPlayer;)Landroidx/media3/transformer/CompositionPlayerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/transformer/CompositionPlayerInternal;->onFrameDropped()V

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 0

    return-void
.end method

.method public setVolumeMultiplier(F)V
    .locals 1

    .line 2152
    iget-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$InternalListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer;->access$3100(Landroidx/media3/transformer/CompositionPlayer;)F

    move-result v0

    invoke-static {p1, v0}, Landroidx/media3/transformer/CompositionPlayer;->access$3200(Landroidx/media3/transformer/CompositionPlayer;F)V

    .line 2153
    iget-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$InternalListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer;->access$3300(Landroidx/media3/transformer/CompositionPlayer;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 2187
    iget-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$InternalListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-static {p1, p3, p4}, Landroidx/media3/transformer/CompositionPlayer;->access$4100(Landroidx/media3/transformer/CompositionPlayer;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 2180
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$InternalListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    new-instance v1, Landroidx/media3/common/util/Size;

    .line 2181
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroidx/media3/common/util/Size;-><init>(II)V

    .line 2180
    invoke-static {v0, v1}, Landroidx/media3/transformer/CompositionPlayer;->access$3902(Landroidx/media3/transformer/CompositionPlayer;Landroidx/media3/common/util/Size;)Landroidx/media3/common/util/Size;

    .line 2182
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$InternalListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer$InternalListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-static {v1}, Landroidx/media3/transformer/CompositionPlayer;->access$3900(Landroidx/media3/transformer/CompositionPlayer;)Landroidx/media3/common/util/Size;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroidx/media3/transformer/CompositionPlayer;->access$4000(Landroidx/media3/transformer/CompositionPlayer;Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 2192
    iget-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$InternalListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer;->access$4200(Landroidx/media3/transformer/CompositionPlayer;)V

    return-void
.end method
