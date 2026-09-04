.class public final Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;
.super Ljava/lang/Object;
.source "AmvExoVideoPlayer.kt"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/video/AmvExoVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00009\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u0017J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u000bH\u0016J\u0018\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u000bH\u0002\u00a8\u0006\u0017"
    }
    d2 = {
        "com/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1",
        "Landroidx/media3/common/Player$Listener;",
        "onVideoSizeChanged",
        "",
        "videoSize",
        "Landroidx/media3/common/VideoSize;",
        "onPositionDiscontinuity",
        "oldPosition",
        "Landroidx/media3/common/Player$PositionInfo;",
        "newPosition",
        "reason",
        "",
        "onPlayerError",
        "error",
        "Landroidx/media3/common/PlaybackException;",
        "onIsLoadingChanged",
        "isLoading",
        "",
        "onPlayWhenReadyChanged",
        "playWhenReady",
        "onPlaybackStateChanged",
        "playbackState",
        "internalPlayerStateChanged",
        "video"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/metamoji/video/AmvExoVideoPlayer;


# direct methods
.method constructor <init>(Lcom/metamoji/video/AmvExoVideoPlayer;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    iput-object p2, p0, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;->$context:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final internalPlayerStateChanged(ZI)V
    .locals 4

    new-instance v0, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1$$ExternalSyntheticLambda0;-><init>()V

    .line 140
    sget-object v1, Lcom/metamoji/video/AmvExoVideoPlayer;->Companion:Lcom/metamoji/video/AmvExoVideoPlayer$Companion;

    invoke-virtual {v1}, Lcom/metamoji/video/AmvExoVideoPlayer$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "status = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / playWhenReady = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object p2, p0, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {p2}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getMBindings$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    move-result-object p2

    sget-object v0, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->Paused:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    invoke-virtual {p2, v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->setPlayerState(Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V

    .line 148
    iget-object p2, p0, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {p2, p1}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$setMEnded$p(Lcom/metamoji/video/AmvExoVideoPlayer;Z)V

    return-void

    .line 144
    :cond_1
    iget-object p2, p0, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {p2}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getMBindings$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    move-result-object p2

    if-eqz p1, :cond_2

    sget-object p1, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->Playing:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->Paused:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    :goto_0
    invoke-virtual {p2, p1}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->setPlayerState(Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V

    return-void
.end method

.method static final internalPlayerStateChanged$lambda$0(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 136
    const-string p0, "Unknown"

    return-object p0

    .line 135
    :cond_0
    const-string p0, "Ended"

    return-object p0

    .line 134
    :cond_1
    const-string p0, "Ready"

    return-object p0

    .line 133
    :cond_2
    const-string p0, "Buffering"

    return-object p0

    .line 132
    :cond_3
    const-string p0, "Idle"

    return-object p0
.end method


# virtual methods
.method public onIsLoadingChanged(Z)V
    .locals 3

    .line 102
    sget-object v0, Lcom/metamoji/video/AmvExoVideoPlayer;->Companion:Lcom/metamoji/video/AmvExoVideoPlayer$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loading = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {p1}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getMPlayer$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 104
    iget-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {p1}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getMBindings$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    move-result-object p1

    sget-object v0, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->Loading:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    invoke-virtual {p1, v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->setPlayerState(Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V

    :cond_0
    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 0

    .line 121
    iget-object p2, p0, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {p2}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getMPlayer$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p2

    invoke-interface {p2}, Landroidx/media3/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;->internalPlayerStateChanged(ZI)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {v0}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getMPlayer$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;->internalPlayerStateChanged(ZI)V

    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/metamoji/video/AmvExoVideoPlayer;->Companion:Lcom/metamoji/video/AmvExoVideoPlayer$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "ExoPlayer: error"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/lib/utils/UtLog;->stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {p1}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getMSource$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Lcom/metamoji/video/IAmvSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 90
    invoke-interface {p1}, Lcom/metamoji/video/IAmvSource;->recover()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {v0}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getMPlayer$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v1

    iget-object v2, p0, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-virtual {v2}, Lcom/metamoji/video/AmvExoVideoPlayer;->getSeekPosition()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/metamoji/video/AmvExoVideoPlayer;->setSource(Lcom/metamoji/video/IAmvSource;ZJ)V

    .line 93
    invoke-interface {p1}, Lcom/metamoji/video/IAmvSource;->release()V

    return-void

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {p1}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getMBindings$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    move-result-object p1

    sget-object v0, Lcom/metamoji/video/AmvStringPool;->INSTANCE:Lcom/metamoji/video/AmvStringPool;

    sget v1, Lcom/metamoji/video/R$string;->error:I

    invoke-virtual {v0, v1}, Lcom/metamoji/video/AmvStringPool;->get(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;->$context:Landroid/content/Context;

    sget v1, Lcom/metamoji/video/R$string;->error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->setErrorMessage(Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {p1}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getMBindings$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    move-result-object p1

    sget-object v0, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->Error:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    invoke-virtual {p1, v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->setPlayerState(Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V

    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 2

    const-string p3, "oldPosition"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "newPosition"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object p1, Lcom/metamoji/video/AmvExoVideoPlayer;->Companion:Lcom/metamoji/video/AmvExoVideoPlayer$Companion;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvExoVideoPlayer$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-static {p1, p2, p3, p2}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 77
    iget-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {p1}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getSeekManager$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->isSeeking()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {p1}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getMBindings$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvExoVideoPlayer;->getSeekCompletedListener()Lcom/metamoji/video/IAmvVideoPlayer$SeekCompletedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-virtual {p2}, Lcom/metamoji/video/AmvExoVideoPlayer;->getSeekPosition()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/video/IAmvVideoPlayer$SeekCompletedListener;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 2

    const-string v0, "videoSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {v0}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getMBindings$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    move-result-object v0

    iget v1, p1, Landroidx/media3/common/VideoSize;->width:I

    int-to-float v1, v1

    iget p1, p1, Landroidx/media3/common/VideoSize;->height:I

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->setVideoSize(FF)V

    return-void
.end method
