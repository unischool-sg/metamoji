.class public final Lcom/metamoji/video/AmvExoVideoPlayer;
.super Landroid/widget/FrameLayout;
.source "AmvExoVideoPlayer.kt"

# interfaces
.implements Lcom/metamoji/video/IAmvVideoPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;,
        Lcom/metamoji/video/AmvExoVideoPlayer$Companion;,
        Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;,
        Lcom/metamoji/video/AmvExoVideoPlayer$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c5\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u001f\u0018\u0000 x2\u00020\u00012\u00020\u0002:\u0003xyzB\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010!\u001a\u00020\"H\u0014J(\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u00082\u0006\u0010%\u001a\u00020\u00082\u0006\u0010&\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020\u0008H\u0014J \u0010W\u001a\u00020\"2\u0006\u0010X\u001a\u00020Y2\u0006\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020[H\u0016J\u0008\u0010]\u001a\u00020^H\u0016J\u0008\u0010_\u001a\u00020\"H\u0016J\u0012\u0010`\u001a\u00020\"2\u0008\u0010a\u001a\u0004\u0018\u00010\u0016H\u0017J \u0010e\u001a\u00020\"2\u0006\u0010f\u001a\u00020\u000e2\u0006\u0010g\u001a\u00020\u00122\u0006\u0010h\u001a\u00020AH\u0017J\u0008\u0010k\u001a\u00020\"H\u0016J\u0008\u0010l\u001a\u00020\"H\u0016J\u0010\u0010m\u001a\u00020\"2\u0006\u0010n\u001a\u00020AH\u0016J\u0010\u0010o\u001a\u00020\"2\u0006\u0010p\u001a\u00020\u0012H\u0016J\u0006\u0010q\u001a\u00020\"J\u0010\u0010r\u001a\u00020A2\u0006\u0010n\u001a\u00020AH\u0002J\u0010\u0010s\u001a\u00020\"2\u0006\u0010n\u001a\u00020AH\u0002J\u0010\u0010t\u001a\u00020\u00142\u0006\u0010u\u001a\u00020\u0014H\u0003J\n\u0010t\u001a\u0004\u0018\u00010\u0014H\u0002R\u0012\u0010\u000b\u001a\u00060\u000cR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001a\u0010\u001bR\u0010\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010 R\u0014\u0010(\u001a\u00020)X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u0014\u0010,\u001a\u00020-X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010/R\u0014\u00100\u001a\u000201X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103R\u0014\u00104\u001a\u000205X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u00107R\u0014\u00108\u001a\u000209X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010;R\u0014\u0010<\u001a\u00020=X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010?R\u0014\u0010@\u001a\u00020A8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010CR\u0014\u0010D\u001a\u00020A8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010CR$\u0010G\u001a\u00020\u00122\u0006\u0010F\u001a\u00020\u00128V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010JR\u0014\u0010K\u001a\u00020L8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010NR\u0014\u0010O\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008O\u0010HR\u0014\u0010P\u001a\u00020Q8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008R\u0010SR$\u0010T\u001a\u00020\u00122\u0006\u0010F\u001a\u00020\u00128F@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008U\u0010H\"\u0004\u0008V\u0010JR\u0016\u0010b\u001a\u0004\u0018\u00010\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008c\u0010dR\u0016\u0010f\u001a\u0004\u0018\u00010\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008i\u0010jR\u0012\u0010v\u001a\u00060wR\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006{"
    }
    d2 = {
        "Lcom/metamoji/video/AmvExoVideoPlayer;",
        "Landroid/widget/FrameLayout;",
        "Lcom/metamoji/video/IAmvVideoPlayer;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "mBindings",
        "Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;",
        "mSource",
        "Lcom/metamoji/video/IAmvSource;",
        "mPlayer",
        "Landroidx/media3/exoplayer/ExoPlayer;",
        "mEnded",
        "",
        "mMediaSource",
        "Landroidx/media3/exoplayer/source/MediaSource;",
        "mClipping",
        "Lcom/metamoji/video/IAmvVideoPlayer$Clipping;",
        "mFitParent",
        "mHandler",
        "Landroid/os/Handler;",
        "getMHandler",
        "()Landroid/os/Handler;",
        "mHandler$delegate",
        "Lkotlin/Lazy;",
        "mPlayerListener",
        "com/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1",
        "Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;",
        "onDetachedFromWindow",
        "",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
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
        "naturalDuration",
        "",
        "getNaturalDuration",
        "()J",
        "seekPosition",
        "getSeekPosition",
        "v",
        "isMuted",
        "()Z",
        "setMuted",
        "(Z)V",
        "playerState",
        "Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;",
        "getPlayerState",
        "()Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;",
        "isPlayingOrReservedToPlay",
        "videoSize",
        "Landroid/util/Size;",
        "getVideoSize",
        "()Landroid/util/Size;",
        "showDefaultController",
        "getShowDefaultController",
        "setShowDefaultController",
        "setLayoutHint",
        "mode",
        "Lcom/metamoji/video/FitMode;",
        "width",
        "",
        "height",
        "getLayoutHint",
        "Lcom/metamoji/video/IAmvLayoutHint;",
        "reset",
        "setClip",
        "clipping",
        "clip",
        "getClip",
        "()Lcom/metamoji/video/IAmvVideoPlayer$Clipping;",
        "setSource",
        "source",
        "autoPlay",
        "playFrom",
        "getSource",
        "()Lcom/metamoji/video/IAmvSource;",
        "play",
        "pause",
        "seekTo",
        "pos",
        "setFastSeekMode",
        "fast",
        "togglePlay",
        "clipPos",
        "playerSeek",
        "createClippingSource",
        "orgSource",
        "seekManager",
        "Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;",
        "Companion",
        "Bindings",
        "SeekManager",
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


# static fields
.field public static final Companion:Lcom/metamoji/video/AmvExoVideoPlayer$Companion;

.field private static final logger$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/metamoji/lib/utils/UtLog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clipChangedListener:Lcom/metamoji/video/IAmvVideoPlayer$ClipChangedListener;

.field private final mBindings:Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

.field private mClipping:Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

.field private mEnded:Z

.field private final mFitParent:Z

.field private final mHandler$delegate:Lkotlin/Lazy;

.field private mMediaSource:Landroidx/media3/exoplayer/source/MediaSource;

.field private final mPlayer:Landroidx/media3/exoplayer/ExoPlayer;

.field private final mPlayerListener:Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;

.field private mSource:Lcom/metamoji/video/IAmvSource;

.field private final playerStateChangedListener:Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;

.field private final seekCompletedListener:Lcom/metamoji/video/IAmvVideoPlayer$SeekCompletedListener;

.field private seekManager:Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;

.field private final sizeChangedListener:Lcom/metamoji/video/IAmvVideoPlayer$SizeChangedListener;

.field private final sourceChangedListener:Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener;

.field private final videoPreparedListener:Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/video/AmvExoVideoPlayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/video/AmvExoVideoPlayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/video/AmvExoVideoPlayer;->Companion:Lcom/metamoji/video/AmvExoVideoPlayer$Companion;

    .line 50
    new-instance v0, Lcom/metamoji/video/AmvExoVideoPlayer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/metamoji/video/AmvExoVideoPlayer;->logger$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/video/AmvExoVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/video/AmvExoVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance v0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    invoke-direct {v0, p0}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;-><init>(Lcom/metamoji/video/AmvExoVideoPlayer;)V

    iput-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mBindings:Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    .line 57
    new-instance v1, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 62
    new-instance v2, Lcom/metamoji/video/AmvExoVideoPlayer$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/metamoji/video/AmvExoVideoPlayer$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mHandler$delegate:Lkotlin/Lazy;

    .line 70
    new-instance v2, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;

    invoke-direct {v2, p0, p1}, Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;-><init>(Lcom/metamoji/video/AmvExoVideoPlayer;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mPlayerListener:Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;

    .line 160
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/metamoji/video/R$layout;->video_exo_player:I

    move-object v5, p0

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 161
    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->getPlayerView()Landroidx/media3/ui/PlayerView;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Landroidx/media3/common/Player;

    invoke-virtual {v3, v4}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    .line 162
    check-cast v2, Landroidx/media3/common/Player$Listener;

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/ExoPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    const/4 v1, 0x0

    .line 163
    invoke-virtual {p0, v1}, Lcom/metamoji/video/AmvExoVideoPlayer;->setSaveFromParentEnabled(Z)V

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v2, Lcom/metamoji/video/R$styleable;->AmvExoVideoPlayer:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    :try_start_0
    sget p2, Lcom/metamoji/video/R$styleable;->AmvExoVideoPlayer_playOnTouch:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 173
    new-instance p2, Lcom/metamoji/video/AmvExoVideoPlayer$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lcom/metamoji/video/AmvExoVideoPlayer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, p2}, Lcom/metamoji/video/AmvExoVideoPlayer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    :cond_0
    sget p2, Lcom/metamoji/video/R$styleable;->AmvExoVideoPlayer_showControlBar:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 184
    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->getPlayerView()Landroidx/media3/ui/PlayerView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    .line 193
    :cond_1
    sget p2, Lcom/metamoji/video/R$styleable;->AmvExoVideoPlayer_fitParent:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mFitParent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 394
    new-instance p1, Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener;

    invoke-direct {p1}, Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->sourceChangedListener:Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener;

    .line 395
    new-instance p1, Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;

    invoke-direct {p1}, Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->videoPreparedListener:Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;

    .line 396
    new-instance p1, Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;

    invoke-direct {p1}, Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->playerStateChangedListener:Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;

    .line 397
    new-instance p1, Lcom/metamoji/video/IAmvVideoPlayer$SeekCompletedListener;

    invoke-direct {p1}, Lcom/metamoji/video/IAmvVideoPlayer$SeekCompletedListener;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->seekCompletedListener:Lcom/metamoji/video/IAmvVideoPlayer$SeekCompletedListener;

    .line 398
    new-instance p1, Lcom/metamoji/video/IAmvVideoPlayer$SizeChangedListener;

    invoke-direct {p1}, Lcom/metamoji/video/IAmvVideoPlayer$SizeChangedListener;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->sizeChangedListener:Lcom/metamoji/video/IAmvVideoPlayer$SizeChangedListener;

    .line 399
    new-instance p1, Lcom/metamoji/video/IAmvVideoPlayer$ClipChangedListener;

    invoke-direct {p1}, Lcom/metamoji/video/IAmvVideoPlayer$ClipChangedListener;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->clipChangedListener:Lcom/metamoji/video/IAmvVideoPlayer$ClipChangedListener;

    .line 755
    new-instance p1, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;

    invoke-direct {p1, p0}, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;-><init>(Lcom/metamoji/video/AmvExoVideoPlayer;)V

    iput-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->seekManager:Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;

    return-void

    :catchall_0
    move-exception p2

    .line 195
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 45
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/video/AmvExoVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static final _init_$lambda$1(Landroid/view/View;)V
    .locals 1

    .line 174
    instance-of v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;

    if-eqz v0, :cond_0

    .line 175
    check-cast p0, Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-virtual {p0}, Lcom/metamoji/video/AmvExoVideoPlayer;->togglePlay()V

    :cond_0
    return-void
.end method

.method public static final synthetic access$getLogger$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 45
    sget-object v0, Lcom/metamoji/video/AmvExoVideoPlayer;->logger$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getMBindings$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mBindings:Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    return-object p0
.end method

.method public static final synthetic access$getMClipping$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Lcom/metamoji/video/IAmvVideoPlayer$Clipping;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mClipping:Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

    return-object p0
.end method

.method public static final synthetic access$getMHandler(Lcom/metamoji/video/AmvExoVideoPlayer;)Landroid/os/Handler;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/metamoji/video/AmvExoVideoPlayer;->getMHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMPlayer$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Landroidx/media3/exoplayer/ExoPlayer;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    return-object p0
.end method

.method public static final synthetic access$getMSource$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Lcom/metamoji/video/IAmvSource;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mSource:Lcom/metamoji/video/IAmvSource;

    return-object p0
.end method

.method public static final synthetic access$getSeekManager$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->seekManager:Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;

    return-object p0
.end method

.method public static final synthetic access$playerSeek(Lcom/metamoji/video/AmvExoVideoPlayer;J)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/metamoji/video/AmvExoVideoPlayer;->playerSeek(J)V

    return-void
.end method

.method public static final synthetic access$setMEnded$p(Lcom/metamoji/video/AmvExoVideoPlayer;Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mEnded:Z

    return-void
.end method

.method public static final synthetic access$setMMediaSource$p(Lcom/metamoji/video/AmvExoVideoPlayer;Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mMediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    return-void
.end method

.method private final clipPos(J)J
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mClipping:Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->clipPos(J)J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method private final createClippingSource()Landroidx/media3/exoplayer/source/MediaSource;
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mMediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 625
    :cond_0
    invoke-direct {p0, v0}, Lcom/metamoji/video/AmvExoVideoPlayer;->createClippingSource(Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v0

    return-object v0
.end method

.method private final createClippingSource(Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 4

    .line 606
    invoke-virtual {p0}, Lcom/metamoji/video/AmvExoVideoPlayer;->getClipChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$ClipChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mClipping:Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

    invoke-virtual {v0, p0, v1}, Lcom/metamoji/video/IAmvVideoPlayer$ClipChangedListener;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 607
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mClipping:Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0}, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    new-instance v1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;-><init>(Landroidx/media3/exoplayer/source/MediaSource;)V

    const-wide/16 v2, 0x0

    .line 612
    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->setStartPositionMs(J)Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;

    move-result-object p1

    .line 613
    invoke-virtual {v0}, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->getEnd()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->setEndPositionMs(J)Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;

    move-result-object p1

    .line 614
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->build()Landroidx/media3/exoplayer/source/ClippingMediaSource;

    move-result-object p1

    .line 608
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroidx/media3/exoplayer/source/MediaSource;

    :cond_0
    return-object p1
.end method

.method private final getMHandler()Landroid/os/Handler;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mHandler$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method static final logger_delegate$lambda$3()Lcom/metamoji/lib/utils/UtLog;
    .locals 8

    .line 50
    new-instance v0, Lcom/metamoji/lib/utils/UtLog;

    sget-object v1, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    invoke-virtual {v1}, Lcom/metamoji/video/AmvSettings;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v2

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const-string v1, "EXO"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method static final mHandler_delegate$lambda$0()Landroid/os/Handler;
    .locals 2

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method static final onSizeChanged$lambda$2(Lcom/metamoji/video/AmvExoVideoPlayer;II)V
    .locals 1

    .line 224
    sget-object v0, Lcom/metamoji/video/FitMode;->Inside:Lcom/metamoji/video/FitMode;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/metamoji/video/AmvExoVideoPlayer;->setLayoutHint(Lcom/metamoji/video/FitMode;FF)V

    return-void
.end method

.method private final playerSeek(J)V
    .locals 3

    .line 596
    sget-object v0, Lcom/metamoji/video/AmvExoVideoPlayer;->Companion:Lcom/metamoji/video/AmvExoVideoPlayer$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 597
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-direct {p0, p1, p2}, Lcom/metamoji/video/AmvExoVideoPlayer;->clipPos(J)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayer;->seekTo(J)V

    return-void
.end method


# virtual methods
.method public getClip()Lcom/metamoji/video/IAmvVideoPlayer$Clipping;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mClipping:Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

    return-object v0
.end method

.method public getClipChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$ClipChangedListener;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->clipChangedListener:Lcom/metamoji/video/IAmvVideoPlayer$ClipChangedListener;

    return-object v0
.end method

.method public getLayoutHint()Lcom/metamoji/video/IAmvLayoutHint;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mBindings:Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    check-cast v0, Lcom/metamoji/video/IAmvLayoutHint;

    return-object v0
.end method

.method public getNaturalDuration()J
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayerState()Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mBindings:Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->getPlayerState()Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerStateChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->playerStateChangedListener:Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;

    return-object v0
.end method

.method public getSeekCompletedListener()Lcom/metamoji/video/IAmvVideoPlayer$SeekCompletedListener;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->seekCompletedListener:Lcom/metamoji/video/IAmvVideoPlayer$SeekCompletedListener;

    return-object v0
.end method

.method public getSeekPosition()J
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getShowDefaultController()Z
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mBindings:Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->getPlayerView()Landroidx/media3/ui/PlayerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->getUseController()Z

    move-result v0

    return v0
.end method

.method public getSizeChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$SizeChangedListener;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->sizeChangedListener:Lcom/metamoji/video/IAmvVideoPlayer$SizeChangedListener;

    return-object v0
.end method

.method public getSource()Lcom/metamoji/video/IAmvSource;
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mSource:Lcom/metamoji/video/IAmvSource;

    return-object v0
.end method

.method public getSourceChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->sourceChangedListener:Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener;

    return-object v0
.end method

.method public getVideoPreparedListener()Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->videoPreparedListener:Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;

    return-object v0
.end method

.method public getVideoSize()Landroid/util/Size;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mBindings:Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->getVideoSize()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public isMuted()Z
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getVolume()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public isPlayingOrReservedToPlay()Z
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mBindings:Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v1, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mPlayerListener:Lcom/metamoji/video/AmvExoVideoPlayer$mPlayerListener$1;

    check-cast v1, Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->removeListener(Landroidx/media3/common/Player$Listener;)V

    .line 201
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    .line 203
    invoke-virtual {p0}, Lcom/metamoji/video/AmvExoVideoPlayer;->getSourceChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener;->clear()V

    .line 204
    invoke-virtual {p0}, Lcom/metamoji/video/AmvExoVideoPlayer;->getVideoPreparedListener()Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;->clear()V

    .line 205
    invoke-virtual {p0}, Lcom/metamoji/video/AmvExoVideoPlayer;->getPlayerStateChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;->clear()V

    .line 206
    invoke-virtual {p0}, Lcom/metamoji/video/AmvExoVideoPlayer;->getSeekCompletedListener()Lcom/metamoji/video/IAmvVideoPlayer$SeekCompletedListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/IAmvVideoPlayer$SeekCompletedListener;->clear()V

    .line 207
    invoke-virtual {p0}, Lcom/metamoji/video/AmvExoVideoPlayer;->getSizeChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$SizeChangedListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/IAmvVideoPlayer$SizeChangedListener;->clear()V

    .line 208
    invoke-virtual {p0}, Lcom/metamoji/video/AmvExoVideoPlayer;->getClipChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$ClipChangedListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/IAmvVideoPlayer$ClipChangedListener;->clear()V

    .line 210
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mSource:Lcom/metamoji/video/IAmvSource;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/video/IAmvSource;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mSource:Lcom/metamoji/video/IAmvSource;

    .line 213
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 217
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 219
    iget-boolean p3, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mFitParent:Z

    if-eqz p3, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/metamoji/video/AmvExoVideoPlayer;->getMHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance p4, Lcom/metamoji/video/AmvExoVideoPlayer$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, p1, p2}, Lcom/metamoji/video/AmvExoVideoPlayer$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/video/AmvExoVideoPlayer;II)V

    const-wide/16 p1, 0xc8

    invoke-virtual {p3, p4, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public play()V
    .locals 2

    .line 531
    iget-boolean v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mEnded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 533
    iput-boolean v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mEnded:Z

    const-wide/16 v0, 0x0

    .line 534
    invoke-direct {p0, v0, v1}, Lcom/metamoji/video/AmvExoVideoPlayer;->playerSeek(J)V

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 454
    iput-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mMediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 455
    iget-object v1, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mSource:Lcom/metamoji/video/IAmvSource;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/metamoji/video/IAmvSource;->release()V

    .line 456
    :cond_0
    iput-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mSource:Lcom/metamoji/video/IAmvSource;

    const/4 v0, 0x0

    .line 457
    iput-boolean v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mEnded:Z

    .line 458
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mBindings:Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->reset()V

    .line 459
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->stop()V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 550
    iget-boolean v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mEnded:Z

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/metamoji/video/AmvExoVideoPlayer;->pause()V

    const/4 v0, 0x0

    .line 555
    iput-boolean v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mEnded:Z

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->seekManager:Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->request(J)V

    return-void
.end method

.method public setClip(Lcom/metamoji/video/IAmvVideoPlayer$Clipping;)V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mClipping:Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    iput-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mClipping:Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

    .line 468
    invoke-direct {p0}, Lcom/metamoji/video/AmvExoVideoPlayer;->createClippingSource()Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 471
    iget-object v1, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;Z)V

    .line 472
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->prepare()V

    if-eqz p1, :cond_1

    .line 474
    invoke-virtual {p1}, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->getStart()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/metamoji/video/AmvExoVideoPlayer;->playerSeek(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFastSeekMode(Z)V
    .locals 3

    .line 564
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->seekManager:Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;

    if-eqz p1, :cond_0

    .line 562
    invoke-virtual {p0}, Lcom/metamoji/video/AmvExoVideoPlayer;->getNaturalDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->begin(J)V

    return-void

    .line 564
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->end()V

    return-void
.end method

.method public setLayoutHint(Lcom/metamoji/video/FitMode;FF)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mBindings:Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->setHintAndUpdateLayout(Lcom/metamoji/video/FitMode;FF)V

    return-void
.end method

.method public setMuted(Z)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 412
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->setVolume(F)V

    return-void

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 414
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->setVolume(F)V

    return-void
.end method

.method public final setShowDefaultController(Z)V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mBindings:Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->getPlayerView()Landroidx/media3/ui/PlayerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    if-eqz p1, :cond_0

    .line 439
    iget-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mBindings:Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->getPlayerView()Landroidx/media3/ui/PlayerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->showController()V

    :cond_0
    return-void
.end method

.method public setSource(Lcom/metamoji/video/IAmvSource;ZJ)V
    .locals 9

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Lcom/metamoji/video/AmvExoVideoPlayer;->reset()V

    .line 499
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mBindings:Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->getProgressRing()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 501
    invoke-interface {p1}, Lcom/metamoji/video/IAmvSource;->addRef()V

    .line 502
    iput-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mSource:Lcom/metamoji/video/IAmvSource;

    .line 503
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1;

    const/4 v8, 0x0

    move-object v4, p0

    move-object v3, p1

    move v7, p2

    move-wide v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1;-><init>(Lcom/metamoji/video/IAmvSource;Lcom/metamoji/video/AmvExoVideoPlayer;JZLkotlin/coroutines/Continuation;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final togglePlay()V
    .locals 2

    .line 575
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer;->mSource:Lcom/metamoji/video/IAmvSource;

    if-eqz v0, :cond_2

    .line 576
    invoke-virtual {p0}, Lcom/metamoji/video/AmvExoVideoPlayer;->getPlayerState()Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    move-result-object v0

    sget-object v1, Lcom/metamoji/video/AmvExoVideoPlayer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 578
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/video/AmvExoVideoPlayer;->pause()V

    return-void

    .line 577
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/video/AmvExoVideoPlayer;->play()V

    :cond_2
    :goto_0
    return-void
.end method
