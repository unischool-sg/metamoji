.class public final Lcom/metamoji/un/video/UnMoviePlayer;
.super Ljava/lang/Object;
.source "UnVideoPlayerManager.kt"

# interfaces
.implements Lcom/metamoji/un/video/IUnMoviePlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/UnMoviePlayer$Companion;,
        Lcom/metamoji/un/video/UnMoviePlayer$SavedPlayerState;,
        Lcom/metamoji/un/video/UnMoviePlayer$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\r\n\u0002\u0010\u001e\n\u0002\u0008\u0003\u0018\u0000 B2\u00020\u0001:\u0002BCB+\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u0007J\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fJ\u0008\u0010 \u001a\u00020\u001bH\u0002J\u0006\u0010!\u001a\u00020\u001bJ\u0018\u0010\"\u001a\u00020\u001b2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u001fH\u0002J\u0018\u0010(\u001a\u00020\u001b2\u0006\u0010#\u001a\u00020$2\u0006\u0010)\u001a\u00020\u001fH\u0002J\u0018\u0010*\u001a\u00020\u001b2\u0006\u0010#\u001a\u00020$2\u0006\u0010+\u001a\u00020\'H\u0002J\u0008\u0010,\u001a\u00020\u001bH\u0016J\u0008\u0010-\u001a\u00020\u001bH\u0016J\u0010\u0010.\u001a\u00020\u001b2\u0006\u0010/\u001a\u000200H\u0016J\u0018\u00101\u001a\u00020\u001b2\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u000203H\u0016J\u0010\u00105\u001a\u00020\u001b2\u0006\u00106\u001a\u00020\tH\u0016J\u0012\u00107\u001a\u00020\u001b2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0002J\u0016\u0010?\u001a\u00020\u001b2\u000c\u0010@\u001a\u0008\u0012\u0004\u0012\u0002030AH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u00109\u001a\u00020\u001d2\u0006\u00108\u001a\u00020\u001d8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R$\u0010=\u001a\u00020\u001d2\u0006\u00108\u001a\u00020\u001d8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008=\u0010:\"\u0004\u0008>\u0010<\u00a8\u0006D"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnMoviePlayer;",
        "Lcom/metamoji/un/video/IUnMoviePlayer;",
        "activeUnit",
        "Lcom/metamoji/un/video/UnVideoUnit;",
        "source",
        "Lcom/metamoji/video/IAmvSource;",
        "context",
        "Landroid/content/Context;",
        "direction",
        "Lcom/metamoji/un/video/IWvvChairmansDirection;",
        "<init>",
        "(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/video/IAmvSource;Landroid/content/Context;Lcom/metamoji/un/video/IWvvChairmansDirection;)V",
        "getActiveUnit",
        "()Lcom/metamoji/un/video/UnVideoUnit;",
        "getSource",
        "()Lcom/metamoji/video/IAmvSource;",
        "videoPlayer",
        "Lcom/metamoji/video/AmvPlayerUnitView;",
        "getVideoPlayer",
        "()Lcom/metamoji/video/AmvPlayerUnitView;",
        "setVideoPlayer",
        "(Lcom/metamoji/video/AmvPlayerUnitView;)V",
        "savedPlayerState",
        "Lcom/metamoji/un/video/UnMoviePlayer$SavedPlayerState;",
        "mReservedDirection",
        "refreshPlayer",
        "savePlayerState",
        "",
        "isPlaying",
        "",
        "seekPosition",
        "",
        "initialLoad",
        "release",
        "onVideoPrepared",
        "player",
        "Lcom/metamoji/video/IAmvVideoPlayer;",
        "duration",
        "prevState",
        "Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;",
        "onSeekPositionChanged",
        "position",
        "onPlayerStateChanged",
        "state",
        "show",
        "hide",
        "adjustPosition",
        "bounds",
        "Landroid/graphics/RectF;",
        "setPlaybackRange",
        "start",
        "",
        "end",
        "request",
        "chairman",
        "applyDirection",
        "value",
        "isMuted",
        "()Z",
        "setMuted",
        "(Z)V",
        "isReadOnly",
        "setReadOnly",
        "setMarkers",
        "markers",
        "",
        "Companion",
        "SavedPlayerState",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/metamoji/un/video/UnMoviePlayer$Companion;

.field public static final LISTENER_NAME:Ljava/lang/String; = "Un.VPM"


# instance fields
.field private final activeUnit:Lcom/metamoji/un/video/UnVideoUnit;

.field private mReservedDirection:Lcom/metamoji/un/video/IWvvChairmansDirection;

.field private prevState:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

.field private savedPlayerState:Lcom/metamoji/un/video/UnMoviePlayer$SavedPlayerState;

.field private final source:Lcom/metamoji/video/IAmvSource;

.field private videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/un/video/UnMoviePlayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/video/UnMoviePlayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/un/video/UnMoviePlayer;->Companion:Lcom/metamoji/un/video/UnMoviePlayer$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/video/IAmvSource;Landroid/content/Context;Lcom/metamoji/un/video/IWvvChairmansDirection;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/video/UnMoviePlayer;->activeUnit:Lcom/metamoji/un/video/UnVideoUnit;

    iput-object p2, p0, Lcom/metamoji/un/video/UnMoviePlayer;->source:Lcom/metamoji/video/IAmvSource;

    .line 41
    sget-object p1, Lcom/metamoji/un/video/UnMoviePlayer;->Companion:Lcom/metamoji/un/video/UnMoviePlayer$Companion;

    invoke-static {p1, p3}, Lcom/metamoji/un/video/UnMoviePlayer$Companion;->access$createVideoPlayer(Lcom/metamoji/un/video/UnMoviePlayer$Companion;Landroid/content/Context;)Lcom/metamoji/video/AmvPlayerUnitView;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    .line 50
    iput-object p4, p0, Lcom/metamoji/un/video/UnMoviePlayer;->mReservedDirection:Lcom/metamoji/un/video/IWvvChairmansDirection;

    .line 72
    invoke-virtual {p1}, Lcom/metamoji/video/AmvPlayerUnitView;->getVideoPlayer()Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/video/IAmvVideoPlayer;->getVideoPreparedListener()Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;

    move-result-object p1

    new-instance p2, Lcom/metamoji/un/video/UnMoviePlayer$1;

    invoke-direct {p2, p0}, Lcom/metamoji/un/video/UnMoviePlayer$1;-><init>(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    const-string p3, "Un.VPM"

    invoke-virtual {p1, p3, p2}, Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    .line 73
    iget-object p1, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvPlayerUnitView;->getVideoPlayer()Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/video/IAmvVideoPlayer;->getSeekCompletedListener()Lcom/metamoji/video/IAmvVideoPlayer$SeekCompletedListener;

    move-result-object p1

    new-instance p2, Lcom/metamoji/un/video/UnMoviePlayer$2;

    invoke-direct {p2, p0}, Lcom/metamoji/un/video/UnMoviePlayer$2;-><init>(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1, p3, p2}, Lcom/metamoji/video/IAmvVideoPlayer$SeekCompletedListener;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    .line 74
    iget-object p1, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvPlayerUnitView;->getVideoPlayer()Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/video/IAmvVideoPlayer;->getPlayerStateChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;

    move-result-object p1

    new-instance p2, Lcom/metamoji/un/video/UnMoviePlayer$3;

    invoke-direct {p2, p0}, Lcom/metamoji/un/video/UnMoviePlayer$3;-><init>(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1, p3, p2}, Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    .line 76
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnMoviePlayer;->show()V

    .line 118
    sget-object p1, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->None:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    iput-object p1, p0, Lcom/metamoji/un/video/UnMoviePlayer;->prevState:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/video/IAmvSource;Landroid/content/Context;Lcom/metamoji/un/video/IWvvChairmansDirection;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/un/video/UnMoviePlayer;-><init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/video/IAmvSource;Landroid/content/Context;Lcom/metamoji/un/video/IWvvChairmansDirection;)V

    return-void
.end method

.method public static final synthetic access$initialLoad(Lcom/metamoji/un/video/UnMoviePlayer;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/metamoji/un/video/UnMoviePlayer;->initialLoad()V

    return-void
.end method

.method public static final synthetic access$onPlayerStateChanged(Lcom/metamoji/un/video/UnMoviePlayer;Lcom/metamoji/video/IAmvVideoPlayer;Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/video/UnMoviePlayer;->onPlayerStateChanged(Lcom/metamoji/video/IAmvVideoPlayer;Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V

    return-void
.end method

.method public static final synthetic access$onSeekPositionChanged(Lcom/metamoji/un/video/UnMoviePlayer;Lcom/metamoji/video/IAmvVideoPlayer;J)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/video/UnMoviePlayer;->onSeekPositionChanged(Lcom/metamoji/video/IAmvVideoPlayer;J)V

    return-void
.end method

.method public static final synthetic access$onVideoPrepared(Lcom/metamoji/un/video/UnMoviePlayer;Lcom/metamoji/video/IAmvVideoPlayer;J)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/video/UnMoviePlayer;->onVideoPrepared(Lcom/metamoji/video/IAmvVideoPlayer;J)V

    return-void
.end method

.method private final applyDirection(Lcom/metamoji/un/video/IWvvChairmansDirection;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 201
    invoke-interface {p1}, Lcom/metamoji/un/video/IWvvChairmansDirection;->getStatus()Lcom/metamoji/un/video/WvvChairmansStatus;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/video/WvvChairmansStatus;->NONE:Lcom/metamoji/un/video/WvvChairmansStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvPlayerUnitView;->getPlayerState()Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    move-result-object v0

    sget-object v1, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->None:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    invoke-interface {p1}, Lcom/metamoji/un/video/IWvvChairmansDirection;->getStatus()Lcom/metamoji/un/video/WvvChairmansStatus;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/video/WvvChairmansStatus;->PLAYING:Lcom/metamoji/un/video/WvvChairmansStatus;

    if-ne v0, v1, :cond_2

    .line 209
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    invoke-interface {p1}, Lcom/metamoji/un/video/IWvvChairmansDirection;->getSeekPosition()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/video/AmvPlayerUnitView;->startAt(J)V

    return-void

    .line 210
    :cond_2
    invoke-interface {p1}, Lcom/metamoji/un/video/IWvvChairmansDirection;->getStatus()Lcom/metamoji/un/video/WvvChairmansStatus;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/video/WvvChairmansStatus;->PAUSED:Lcom/metamoji/un/video/WvvChairmansStatus;

    if-ne v0, v1, :cond_3

    .line 211
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    invoke-interface {p1}, Lcom/metamoji/un/video/IWvvChairmansDirection;->getSeekPosition()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/video/AmvPlayerUnitView;->stopAt(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final initialLoad()V
    .locals 8

    .line 91
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->mReservedDirection:Lcom/metamoji/un/video/IWvvChairmansDirection;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->savedPlayerState:Lcom/metamoji/un/video/UnMoviePlayer$SavedPlayerState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnMoviePlayer$SavedPlayerState;->isPlaying()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move v4, v0

    .line 92
    :goto_1
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->mReservedDirection:Lcom/metamoji/un/video/IWvvChairmansDirection;

    const-wide/16 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->savedPlayerState:Lcom/metamoji/un/video/UnMoviePlayer$SavedPlayerState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnMoviePlayer$SavedPlayerState;->getSeekPosition()J

    move-result-wide v2

    :cond_2
    move-wide v5, v2

    .line 93
    iget-object v2, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    iget-object v3, p0, Lcom/metamoji/un/video/UnMoviePlayer;->source:Lcom/metamoji/video/IAmvSource;

    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v7, "MMJUnVideoUnit_ShowThumbnails"

    invoke-virtual {v0, v7, v1}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/video/AmvPlayerUnitView;->setSource(Lcom/metamoji/video/IAmvSource;ZJZ)V

    return-void
.end method

.method private final onPlayerStateChanged(Lcom/metamoji/video/IAmvVideoPlayer;Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 125
    iget-object v2, v0, Lcom/metamoji/un/video/UnMoviePlayer;->prevState:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iget-object v2, v0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    invoke-virtual {v2}, Lcom/metamoji/video/AmvPlayerUnitView;->getVideoController()Lcom/metamoji/video/IAmvMarkerEditableController;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/video/IAmvMarkerEditableController;->isSeekingBySlider()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 132
    :cond_1
    sget-object v2, Lcom/metamoji/un/video/UnMoviePlayer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    :goto_0
    return-void

    .line 138
    :cond_2
    iput-object v1, v0, Lcom/metamoji/un/video/UnMoviePlayer;->prevState:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    .line 139
    sget-object v4, Lcom/metamoji/un/video/UnVideoChairmansDirection;->Companion:Lcom/metamoji/un/video/UnVideoChairmansDirection$Companion;

    iget-object v5, v0, Lcom/metamoji/un/video/UnMoviePlayer;->activeUnit:Lcom/metamoji/un/video/UnVideoUnit;

    sget-object v6, Lcom/metamoji/un/video/WvvChairmansStatus;->PLAYING:Lcom/metamoji/un/video/WvvChairmansStatus;

    sget-object v7, Lcom/metamoji/un/video/WvvChairmansAction;->PLAY:Lcom/metamoji/un/video/WvvChairmansAction;

    invoke-interface/range {p1 .. p1}, Lcom/metamoji/video/IAmvVideoPlayer;->getSeekPosition()J

    move-result-wide v1

    long-to-double v8, v1

    invoke-virtual/range {v4 .. v9}, Lcom/metamoji/un/video/UnVideoChairmansDirection$Companion;->sendDirection(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/WvvChairmansStatus;Lcom/metamoji/un/video/WvvChairmansAction;D)V

    return-void

    .line 134
    :cond_3
    iput-object v1, v0, Lcom/metamoji/un/video/UnMoviePlayer;->prevState:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    .line 135
    sget-object v10, Lcom/metamoji/un/video/UnVideoChairmansDirection;->Companion:Lcom/metamoji/un/video/UnVideoChairmansDirection$Companion;

    iget-object v11, v0, Lcom/metamoji/un/video/UnMoviePlayer;->activeUnit:Lcom/metamoji/un/video/UnVideoUnit;

    sget-object v12, Lcom/metamoji/un/video/WvvChairmansStatus;->PAUSED:Lcom/metamoji/un/video/WvvChairmansStatus;

    sget-object v13, Lcom/metamoji/un/video/WvvChairmansAction;->PAUSE:Lcom/metamoji/un/video/WvvChairmansAction;

    invoke-interface/range {p1 .. p1}, Lcom/metamoji/video/IAmvVideoPlayer;->getSeekPosition()J

    move-result-wide v1

    long-to-double v14, v1

    invoke-virtual/range {v10 .. v15}, Lcom/metamoji/un/video/UnVideoChairmansDirection$Companion;->sendDirection(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/WvvChairmansStatus;Lcom/metamoji/un/video/WvvChairmansAction;D)V

    return-void
.end method

.method private final onSeekPositionChanged(Lcom/metamoji/video/IAmvVideoPlayer;J)V
    .locals 6

    .line 121
    sget-object v0, Lcom/metamoji/un/video/UnVideoChairmansDirection;->Companion:Lcom/metamoji/un/video/UnVideoChairmansDirection$Companion;

    iget-object v1, p0, Lcom/metamoji/un/video/UnMoviePlayer;->activeUnit:Lcom/metamoji/un/video/UnVideoUnit;

    iget-object p1, p0, Lcom/metamoji/un/video/UnMoviePlayer;->prevState:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    sget-object v2, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->Playing:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    if-ne p1, v2, :cond_0

    sget-object p1, Lcom/metamoji/un/video/WvvChairmansStatus;->PLAYING:Lcom/metamoji/un/video/WvvChairmansStatus;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/metamoji/un/video/WvvChairmansStatus;->PAUSED:Lcom/metamoji/un/video/WvvChairmansStatus;

    :goto_0
    move-object v2, p1

    sget-object v3, Lcom/metamoji/un/video/WvvChairmansAction;->SEEK:Lcom/metamoji/un/video/WvvChairmansAction;

    long-to-double v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/un/video/UnVideoChairmansDirection$Companion;->sendDirection(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/WvvChairmansStatus;Lcom/metamoji/un/video/WvvChairmansAction;D)V

    return-void
.end method

.method private final onVideoPrepared(Lcom/metamoji/video/IAmvVideoPlayer;J)V
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/metamoji/un/video/UnMoviePlayer;->mReservedDirection:Lcom/metamoji/un/video/IWvvChairmansDirection;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 113
    iput-object p2, p0, Lcom/metamoji/un/video/UnMoviePlayer;->mReservedDirection:Lcom/metamoji/un/video/IWvvChairmansDirection;

    .line 114
    invoke-direct {p0, p1}, Lcom/metamoji/un/video/UnMoviePlayer;->applyDirection(Lcom/metamoji/un/video/IWvvChairmansDirection;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public adjustPosition(Landroid/graphics/RectF;)V
    .locals 4

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    check-cast v0, Landroid/view/View;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/metamoji/video/AmvUtilsKt;->setMargin(Landroid/view/View;IIII)V

    .line 171
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/video/AmvPlayerUnitView;->setPlayerSize(FF)V

    return-void
.end method

.method public final getActiveUnit()Lcom/metamoji/un/video/UnVideoUnit;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->activeUnit:Lcom/metamoji/un/video/UnVideoUnit;

    return-object v0
.end method

.method public final getSource()Lcom/metamoji/video/IAmvSource;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->source:Lcom/metamoji/video/IAmvSource;

    return-object v0
.end method

.method public final getVideoPlayer()Lcom/metamoji/video/AmvPlayerUnitView;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvPlayerUnitView;->pause()V

    .line 166
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/metamoji/video/AmvPlayerUnitView;->setVisibility(I)V

    return-void
.end method

.method public isMuted()Z
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvPlayerUnitView;->isMuted()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvPlayerUnitView;->getVideoController()Lcom/metamoji/video/IAmvMarkerEditableController;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/video/IAmvMarkerEditableController;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public final refreshPlayer(Landroid/content/Context;)Lcom/metamoji/video/AmvPlayerUnitView;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/metamoji/un/video/UnMoviePlayer;->Companion:Lcom/metamoji/un/video/UnMoviePlayer$Companion;

    invoke-static {v0, p1}, Lcom/metamoji/un/video/UnMoviePlayer$Companion;->access$createVideoPlayer(Lcom/metamoji/un/video/UnMoviePlayer$Companion;Landroid/content/Context;)Lcom/metamoji/video/AmvPlayerUnitView;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    .line 57
    iget-object v2, p0, Lcom/metamoji/un/video/UnMoviePlayer;->source:Lcom/metamoji/video/IAmvSource;

    iget-object p1, p0, Lcom/metamoji/un/video/UnMoviePlayer;->savedPlayerState:Lcom/metamoji/un/video/UnMoviePlayer$SavedPlayerState;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/un/video/UnMoviePlayer$SavedPlayerState;->isPlaying()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move v3, p1

    iget-object p1, p0, Lcom/metamoji/un/video/UnMoviePlayer;->savedPlayerState:Lcom/metamoji/un/video/UnMoviePlayer$SavedPlayerState;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/un/video/UnMoviePlayer$SavedPlayerState;->getSeekPosition()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x0

    :goto_1
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    const-string v0, "MMJUnVideoUnit_ShowThumbnails"

    const/4 v6, 0x1

    invoke-virtual {p1, v0, v6}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/video/AmvPlayerUnitView;->setSource(Lcom/metamoji/video/IAmvSource;ZJZ)V

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/metamoji/un/video/UnMoviePlayer;->savedPlayerState:Lcom/metamoji/un/video/UnMoviePlayer$SavedPlayerState;

    .line 59
    iget-object p1, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    return-object p1
.end method

.method public final release()V
    .locals 6

    .line 98
    sget-object v0, Lcom/metamoji/un/video/UnVideoChairmansDirection;->Companion:Lcom/metamoji/un/video/UnVideoChairmansDirection$Companion;

    iget-object v1, p0, Lcom/metamoji/un/video/UnMoviePlayer;->activeUnit:Lcom/metamoji/un/video/UnVideoUnit;

    sget-object v2, Lcom/metamoji/un/video/WvvChairmansStatus;->CLOSED:Lcom/metamoji/un/video/WvvChairmansStatus;

    sget-object v3, Lcom/metamoji/un/video/WvvChairmansAction;->CLOSE:Lcom/metamoji/un/video/WvvChairmansAction;

    iget-object v4, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    invoke-virtual {v4}, Lcom/metamoji/video/AmvPlayerUnitView;->getVideoPlayer()Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object v4

    invoke-interface {v4}, Lcom/metamoji/video/IAmvVideoPlayer;->getSeekPosition()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/un/video/UnVideoChairmansDirection$Companion;->sendDirection(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/un/video/WvvChairmansStatus;Lcom/metamoji/un/video/WvvChairmansAction;D)V

    .line 100
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvPlayerUnitView;->getVideoPlayer()Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/video/IAmvVideoPlayer;->getVideoPreparedListener()Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;

    move-result-object v0

    const-string v1, "Un.VPM"

    invoke-virtual {v0, v1}, Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;->remove(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvPlayerUnitView;->getVideoPlayer()Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/video/IAmvVideoPlayer;->getSeekCompletedListener()Lcom/metamoji/video/IAmvVideoPlayer$SeekCompletedListener;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/video/IAmvVideoPlayer$SeekCompletedListener;->remove(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvPlayerUnitView;->getVideoPlayer()Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/video/IAmvVideoPlayer;->getPlayerStateChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;->remove(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->source:Lcom/metamoji/video/IAmvSource;

    invoke-interface {v0}, Lcom/metamoji/video/IAmvSource;->release()V

    return-void
.end method

.method public request(Lcom/metamoji/un/video/IWvvChairmansDirection;)V
    .locals 3

    const-string v0, "chairman"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-interface {p1}, Lcom/metamoji/un/video/IWvvChairmansDirection;->getStatus()Lcom/metamoji/un/video/WvvChairmansStatus;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/video/WvvChairmansStatus;->NONE:Lcom/metamoji/un/video/WvvChairmansStatus;

    if-ne v0, v1, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/un/video/IWvvChairmansDirection;->getStatus()Lcom/metamoji/un/video/WvvChairmansStatus;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/video/WvvChairmansStatus;->CLOSED:Lcom/metamoji/un/video/WvvChairmansStatus;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 186
    iput-object v2, p0, Lcom/metamoji/un/video/UnMoviePlayer;->mReservedDirection:Lcom/metamoji/un/video/IWvvChairmansDirection;

    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvPlayerUnitView;->getPlayerState()Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    move-result-object v0

    sget-object v1, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->None:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    if-ne v0, v1, :cond_2

    .line 190
    iput-object p1, p0, Lcom/metamoji/un/video/UnMoviePlayer;->mReservedDirection:Lcom/metamoji/un/video/IWvvChairmansDirection;

    return-void

    .line 192
    :cond_2
    iput-object v2, p0, Lcom/metamoji/un/video/UnMoviePlayer;->mReservedDirection:Lcom/metamoji/un/video/IWvvChairmansDirection;

    .line 193
    invoke-direct {p0, p1}, Lcom/metamoji/un/video/UnMoviePlayer;->applyDirection(Lcom/metamoji/un/video/IWvvChairmansDirection;)V

    return-void
.end method

.method public final savePlayerState(ZJ)V
    .locals 1

    .line 68
    new-instance v0, Lcom/metamoji/un/video/UnMoviePlayer$SavedPlayerState;

    invoke-direct {v0, p1, p2, p3}, Lcom/metamoji/un/video/UnMoviePlayer$SavedPlayerState;-><init>(ZJ)V

    iput-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->savedPlayerState:Lcom/metamoji/un/video/UnMoviePlayer$SavedPlayerState;

    return-void
.end method

.method public setMarkers(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    const-string v0, "markers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvPlayerUnitView;->getVideoController()Lcom/metamoji/video/IAmvMarkerEditableController;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/video/IAmvMarkerEditableController;->getMarkerEditor()Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;->setMarkers(Ljava/util/Collection;)V

    return-void
.end method

.method public setMuted(Z)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    invoke-virtual {v0, p1}, Lcom/metamoji/video/AmvPlayerUnitView;->setMuted(Z)V

    return-void
.end method

.method public setPlaybackRange(DD)V
    .locals 0

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvPlayerUnitView;->getVideoController()Lcom/metamoji/video/IAmvMarkerEditableController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/video/IAmvMarkerEditableController;->setReadOnly(Z)V

    return-void
.end method

.method public final setVideoPlayer(Lcom/metamoji/video/AmvPlayerUnitView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    return-void
.end method

.method public show()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer;->videoPlayer:Lcom/metamoji/video/AmvPlayerUnitView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/video/AmvPlayerUnitView;->setVisibility(I)V

    return-void
.end method
