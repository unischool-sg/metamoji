.class final Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;
.super Ljava/lang/Object;
.source "CompositionPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/CompositionPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SequencePlayerHolder"
.end annotation


# instance fields
.field public final player:Landroidx/media3/exoplayer/ExoPlayer;

.field public final renderersFactory:Landroidx/media3/transformer/SequenceRenderersFactory;

.field final synthetic this$0:Landroidx/media3/transformer/CompositionPlayer;

.field public final trackSelector:Landroidx/media3/transformer/CompositionTrackSelector;


# direct methods
.method private constructor <init>(Landroidx/media3/transformer/CompositionPlayer;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/transformer/SequenceRenderersFactory;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
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
            null,
            null,
            null
        }
    .end annotation

    .line 2074
    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2075
    new-instance v0, Landroidx/media3/transformer/CompositionTrackSelector;

    new-instance v1, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/transformer/CompositionPlayer;)V

    invoke-direct {v0, p2, v1, p7}, Landroidx/media3/transformer/CompositionTrackSelector;-><init>(Landroid/content/Context;Landroidx/media3/transformer/CompositionTrackSelector$Listener;I)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->trackSelector:Landroidx/media3/transformer/CompositionTrackSelector;

    .line 2082
    new-instance p7, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    invoke-direct {p7, p2}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    .line 2084
    invoke-virtual {p7, p3}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setLooper(Landroid/os/Looper;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p2

    .line 2085
    invoke-virtual {p2, p4}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setPlaybackLooper(Landroid/os/Looper;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p2

    .line 2086
    invoke-virtual {p2, p6}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setRenderersFactory(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p2

    const/4 p3, 0x1

    .line 2087
    invoke-virtual {p2, p3}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setHandleAudioBecomingNoisy(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p2

    .line 2088
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer;->access$2900(Landroidx/media3/transformer/CompositionPlayer;)Landroidx/media3/exoplayer/LoadControl;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setLoadControl(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p1

    .line 2089
    invoke-virtual {p1, p5}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setClock(Landroidx/media3/common/util/Clock;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p1

    .line 2092
    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->experimentalSetDynamicSchedulingEnabled(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p1

    .line 2093
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setTrackSelector(Landroidx/media3/exoplayer/trackselection/TrackSelector;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    .line 2094
    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2095
    iput-object p6, p0, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->renderersFactory:Landroidx/media3/transformer/SequenceRenderersFactory;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/transformer/CompositionPlayer;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/transformer/SequenceRenderersFactory;ILandroidx/media3/transformer/CompositionPlayer$1;)V
    .locals 0

    .line 2063
    invoke-direct/range {p0 .. p7}, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;-><init>(Landroidx/media3/transformer/CompositionPlayer;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/transformer/SequenceRenderersFactory;I)V

    return-void
.end method

.method static synthetic lambda$new$0(Landroidx/media3/transformer/CompositionPlayer;ZI)V
    .locals 0

    .line 2078
    invoke-static {p0, p1, p2}, Landroidx/media3/transformer/CompositionPlayer;->access$3000(Landroidx/media3/transformer/CompositionPlayer;ZI)V

    return-void
.end method
