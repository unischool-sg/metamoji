.class public interface abstract Lcom/metamoji/video/IAmvVideoPlayer;
.super Ljava/lang/Object;
.source "IAmvVideoPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/IAmvVideoPlayer$ClipChangedListener;,
        Lcom/metamoji/video/IAmvVideoPlayer$Clipping;,
        Lcom/metamoji/video/IAmvVideoPlayer$DefaultImpls;,
        Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;,
        Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;,
        Lcom/metamoji/video/IAmvVideoPlayer$SeekCompletedListener;,
        Lcom/metamoji/video/IAmvVideoPlayer$SizeChangedListener;,
        Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener;,
        Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008f\u0018\u00002\u00020\u0001:\u0008KLMNOPQRJ \u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020/H&J\u0008\u00101\u001a\u000202H&J\u0008\u00107\u001a\u00020+H&J$\u00108\u001a\u00020+2\u0006\u00109\u001a\u00020:2\u0008\u0008\u0002\u0010;\u001a\u00020\u001f2\u0008\u0008\u0002\u0010<\u001a\u00020\"H&J\u0012\u0010?\u001a\u00020+2\u0008\u0010@\u001a\u0004\u0018\u00010AH&J\u0008\u0010E\u001a\u00020+H&J\u0008\u0010F\u001a\u00020+H&J\u0010\u0010G\u001a\u00020+2\u0006\u0010H\u001a\u00020\"H&J\u0010\u0010I\u001a\u00020+2\u0006\u0010J\u001a\u00020\u001fH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0012\u0010\u000e\u001a\u00020\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0012\u0010\u0012\u001a\u00020\u0013X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0012\u0010\u0016\u001a\u00020\u0017X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0012\u0010\u001a\u001a\u00020\u001bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0012\u0010\u001e\u001a\u00020\u001fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010 R\u0012\u0010!\u001a\u00020\"X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u0012\u0010%\u001a\u00020\"X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010$R\u0018\u0010\'\u001a\u00020\u001fX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\'\u0010 \"\u0004\u0008(\u0010)R\u0012\u00103\u001a\u000204X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00085\u00106R\u0014\u00109\u001a\u0004\u0018\u00010:X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010>R\u0014\u0010B\u001a\u0004\u0018\u00010AX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010D\u00a8\u0006S\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/video/IAmvVideoPlayer;",
        "",
        "sourceChangedListener",
        "Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener;",
        "getSourceChangedListener",
        "()Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener;",
        "videoPreparedListener",
        "Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;",
        "getVideoPreparedListener",
        "()Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;",
        "playerStateChangedListener",
        "Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;",
        "getPlayerStateChangedListener",
        "()Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;",
        "seekCompletedListener",
        "Lcom/metamoji/video/IAmvVideoPlayer$SeekCompletedListener;",
        "getSeekCompletedListener",
        "()Lcom/metamoji/video/IAmvVideoPlayer$SeekCompletedListener;",
        "sizeChangedListener",
        "Lcom/metamoji/video/IAmvVideoPlayer$SizeChangedListener;",
        "getSizeChangedListener",
        "()Lcom/metamoji/video/IAmvVideoPlayer$SizeChangedListener;",
        "clipChangedListener",
        "Lcom/metamoji/video/IAmvVideoPlayer$ClipChangedListener;",
        "getClipChangedListener",
        "()Lcom/metamoji/video/IAmvVideoPlayer$ClipChangedListener;",
        "playerState",
        "Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;",
        "getPlayerState",
        "()Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;",
        "isPlayingOrReservedToPlay",
        "",
        "()Z",
        "naturalDuration",
        "",
        "getNaturalDuration",
        "()J",
        "seekPosition",
        "getSeekPosition",
        "isMuted",
        "setMuted",
        "(Z)V",
        "setLayoutHint",
        "",
        "mode",
        "Lcom/metamoji/video/FitMode;",
        "width",
        "",
        "height",
        "getLayoutHint",
        "Lcom/metamoji/video/IAmvLayoutHint;",
        "videoSize",
        "Landroid/util/Size;",
        "getVideoSize",
        "()Landroid/util/Size;",
        "reset",
        "setSource",
        "source",
        "Lcom/metamoji/video/IAmvSource;",
        "autoPlay",
        "playFrom",
        "getSource",
        "()Lcom/metamoji/video/IAmvSource;",
        "setClip",
        "clipping",
        "Lcom/metamoji/video/IAmvVideoPlayer$Clipping;",
        "clip",
        "getClip",
        "()Lcom/metamoji/video/IAmvVideoPlayer$Clipping;",
        "play",
        "pause",
        "seekTo",
        "pos",
        "setFastSeekMode",
        "fast",
        "PlayerState",
        "Clipping",
        "SourceChangedListener",
        "VideoPreparedListener",
        "PlayerStateChangedListener",
        "SeekCompletedListener",
        "SizeChangedListener",
        "ClipChangedListener",
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


# direct methods
.method public static synthetic setSource$default(Lcom/metamoji/video/IAmvVideoPlayer;Lcom/metamoji/video/IAmvSource;ZJILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const-wide/16 p3, 0x0

    .line 121
    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/metamoji/video/IAmvVideoPlayer;->setSource(Lcom/metamoji/video/IAmvSource;ZJ)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setSource"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract getClip()Lcom/metamoji/video/IAmvVideoPlayer$Clipping;
.end method

.method public abstract getClipChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$ClipChangedListener;
.end method

.method public abstract getLayoutHint()Lcom/metamoji/video/IAmvLayoutHint;
.end method

.method public abstract getNaturalDuration()J
.end method

.method public abstract getPlayerState()Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;
.end method

.method public abstract getPlayerStateChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;
.end method

.method public abstract getSeekCompletedListener()Lcom/metamoji/video/IAmvVideoPlayer$SeekCompletedListener;
.end method

.method public abstract getSeekPosition()J
.end method

.method public abstract getSizeChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$SizeChangedListener;
.end method

.method public abstract getSource()Lcom/metamoji/video/IAmvSource;
.end method

.method public abstract getSourceChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener;
.end method

.method public abstract getVideoPreparedListener()Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;
.end method

.method public abstract getVideoSize()Landroid/util/Size;
.end method

.method public abstract isMuted()Z
.end method

.method public abstract isPlayingOrReservedToPlay()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract reset()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract setClip(Lcom/metamoji/video/IAmvVideoPlayer$Clipping;)V
.end method

.method public abstract setFastSeekMode(Z)V
.end method

.method public abstract setLayoutHint(Lcom/metamoji/video/FitMode;FF)V
.end method

.method public abstract setMuted(Z)V
.end method

.method public abstract setSource(Lcom/metamoji/video/IAmvSource;ZJ)V
.end method
