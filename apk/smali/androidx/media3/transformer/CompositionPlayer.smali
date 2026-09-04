.class public final Landroidx/media3/transformer/CompositionPlayer;
.super Landroidx/media3/common/SimpleBasePlayer;
.source "CompositionPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/CompositionPlayer$CompositionFrameTimingEvaluator;,
        Landroidx/media3/transformer/CompositionPlayer$Builder;,
        Landroidx/media3/transformer/CompositionPlayer$GapHandlingDecoderFactory;,
        Landroidx/media3/transformer/CompositionPlayer$InternalListener;,
        Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;,
        Landroidx/media3/transformer/CompositionPlayer$PlayerListener;,
        Landroidx/media3/transformer/CompositionPlayer$PlayerAnalyticsListener;,
        Landroidx/media3/transformer/CompositionPlayer$SingleContextGlObjectsProvider;,
        Landroidx/media3/transformer/CompositionPlayer$CompositionForwardingTimeline;
    }
.end annotation


# static fields
.field private static final AVAILABLE_COMMANDS:Landroidx/media3/common/Player$Commands;

.field private static final BLANK_FRAMES_MEDIA_SOURCE_TYPE:Ljava/lang/String; = "composition_player_blank_frames"

.field private static final SUPPORTED_LISTENER_EVENTS:[I

.field private static final SURFACE_DESTROY_TIMEOUT_MS:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "CompositionPlayer"


# instance fields
.field private final analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

.field private appNeedsToPrepareCompositionPlayer:Z

.field private final applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private audioAttributes:Landroidx/media3/common/AudioAttributes;

.field private final audioFocusManager:Landroidx/media3/common/audio/AudioFocusManager;

.field private final audioMixerFactory:Landroidx/media3/transformer/AudioMixer$Factory;

.field private bufferedPositionSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

.field private final clock:Landroidx/media3/common/util/Clock;

.field private composition:Landroidx/media3/transformer/Composition;

.field private compositionDurationUs:J

.field private final compositionInternalListenerHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private compositionPlayerInternal:Landroidx/media3/transformer/CompositionPlayerInternal;

.field private compositionPlayerInternalPrepared:Z

.field private final context:Landroid/content/Context;

.field private displaySurface:Landroid/view/Surface;

.field private final enableReplayableCache:Z

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

.field private frameAggregator:Landroidx/media3/transformer/FrameAggregator;

.field private final glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

.field private handleAudioFocus:Z

.field private final imageDecoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

.field private final internalListener:Landroidx/media3/transformer/CompositionPlayer$InternalListener;

.field private final lateThresholdToDropInputUs:J

.field private final loadControl:Landroidx/media3/exoplayer/LoadControl;

.field private final mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

.field private final packetConsumer:Landroidx/media3/effect/PacketConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/effect/PacketConsumer<",
            "Ljava/util/List<",
            "Landroidx/media3/effect/GlTextureFrame;",
            ">;>;"
        }
    .end annotation
.end field

.field private playWhenReady:Z

.field private playWhenReadyBeforeScrubbingEnabled:Z

.field private playWhenReadyChangeReason:I

.field private playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

.field private playbackException:Landroidx/media3/common/PlaybackException;

.field private playbackState:I

.field private playbackSuppressionReason:I

.field private playbackThread:Landroid/os/HandlerThread;

.field private playbackThreadHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

.field private final playerHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;",
            ">;"
        }
    .end annotation
.end field

.field private playlist:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;"
        }
    .end annotation
.end field

.field private positionSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

.field private renderedFirstFrame:Z

.field private repeatMode:I

.field private repeatingCompositionSeekInProgress:Z

.field private scrubbingModeEnabled:Z

.field private final shouldShutdownExecutorService:Z

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private totalBufferedDurationSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

.field private videoFrameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

.field private final videoGraphFactory:Landroidx/media3/common/VideoGraph$Factory;

.field private videoOutput:Ljava/lang/Object;

.field private videoOutputSize:Landroidx/media3/common/util/Size;

.field private final videoPacketReleaseControl:Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;

.field private final videoPrewarmingEnabled:Z

.field private final videoTracksSelected:Landroid/util/SparseBooleanArray;

.field private volume:F


# direct methods
.method public static synthetic $r8$lambda$Q3XLflrxvImzC4R4qfVjFOCgakg(Landroidx/media3/transformer/CompositionPlayer;)J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->getContentPositionMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$d77br3E97tE-GepLEzKDEK_Om5g(Landroidx/media3/transformer/CompositionPlayer;)J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->getTotalBufferedDurationMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$jYSVwNzTBKW8w3O3ahzqVqnXtTU(Landroidx/media3/transformer/CompositionPlayer;)J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->getBufferedPositionMs()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 486
    new-instance v0, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 488
    invoke-virtual {v0, v1}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    sput-object v0, Landroidx/media3/transformer/CompositionPlayer;->AVAILABLE_COMMANDS:Landroidx/media3/common/Player$Commands;

    const/16 v0, 0xa

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/16 v3, 0xb

    const/4 v4, 0x1

    .line 507
    filled-new-array {v1, v2, v0, v3, v4}, [I

    move-result-object v0

    sput-object v0, Landroidx/media3/transformer/CompositionPlayer;->SUPPORTED_LISTENER_EVENTS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x5
        0x8
        0x4
        0xb
        0xc
        0x10
        0x11
        0xf
        0x1b
        0x16
        0x18
        0x20
        0x23
    .end array-data
.end method

.method private constructor <init>(Landroidx/media3/transformer/CompositionPlayer$Builder;)V
    .locals 11

    .line 585
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$100(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$200(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroidx/media3/common/util/Clock;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/media3/common/SimpleBasePlayer;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;)V

    .line 586
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$300(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->context:Landroid/content/Context;

    .line 587
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$200(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroidx/media3/common/util/Clock;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->clock:Landroidx/media3/common/util/Clock;

    .line 588
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$100(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 589
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$400(Landroidx/media3/transformer/CompositionPlayer$Builder;)Lcom/google/common/base/Supplier;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/audio/AudioSink;

    iput-object v4, p0, Landroidx/media3/transformer/CompositionPlayer;->finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 590
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$500(Landroidx/media3/transformer/CompositionPlayer$Builder;)Lcom/google/common/base/Supplier;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/transformer/AudioMixer$Factory;

    iput-object v4, p0, Landroidx/media3/transformer/CompositionPlayer;->audioMixerFactory:Landroidx/media3/transformer/AudioMixer$Factory;

    .line 591
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$600(Landroidx/media3/transformer/CompositionPlayer$Builder;)Lcom/google/common/base/Supplier;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    iput-object v4, p0, Landroidx/media3/transformer/CompositionPlayer;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 592
    new-instance v4, Landroidx/media3/transformer/CompositionPlayer$GapHandlingDecoderFactory;

    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$700(Landroidx/media3/transformer/CompositionPlayer$Builder;)Lcom/google/common/base/Supplier;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    invoke-direct {v4, v5}, Landroidx/media3/transformer/CompositionPlayer$GapHandlingDecoderFactory;-><init>(Landroidx/media3/exoplayer/image/ImageDecoder$Factory;)V

    iput-object v4, p0, Landroidx/media3/transformer/CompositionPlayer;->imageDecoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    .line 593
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$800(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroidx/media3/common/VideoGraph$Factory;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/VideoGraph$Factory;

    iput-object v4, p0, Landroidx/media3/transformer/CompositionPlayer;->videoGraphFactory:Landroidx/media3/common/VideoGraph$Factory;

    .line 594
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$900(Landroidx/media3/transformer/CompositionPlayer$Builder;)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/media3/transformer/CompositionPlayer;->videoPrewarmingEnabled:Z

    .line 595
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$100(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroid/os/Looper;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v4

    iput-object v4, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionInternalListenerHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 596
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$1000(Landroidx/media3/transformer/CompositionPlayer$Builder;)Lcom/google/common/base/Supplier;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/LoadControl;

    iput-object v4, p0, Landroidx/media3/transformer/CompositionPlayer;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    .line 597
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$1100(Landroidx/media3/transformer/CompositionPlayer$Builder;)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/media3/transformer/CompositionPlayer;->enableReplayableCache:Z

    .line 598
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$1200(Landroidx/media3/transformer/CompositionPlayer$Builder;)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/transformer/CompositionPlayer;->lateThresholdToDropInputUs:J

    .line 599
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, p0, Landroidx/media3/transformer/CompositionPlayer;->videoTracksSelected:Landroid/util/SparseBooleanArray;

    .line 600
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 601
    iput-wide v6, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionDurationUs:J

    const/4 v8, 0x1

    .line 602
    iput v8, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackState:I

    const/high16 v9, 0x3f800000    # 1.0f

    .line 603
    iput v9, p0, Landroidx/media3/transformer/CompositionPlayer;->volume:F

    .line 604
    new-instance v9, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    new-instance v10, Landroidx/media3/transformer/CompositionPlayer$$ExternalSyntheticLambda2;

    invoke-direct {v10, p0}, Landroidx/media3/transformer/CompositionPlayer$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/transformer/CompositionPlayer;)V

    invoke-direct {v9, v10}, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;-><init>(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)V

    iput-object v9, p0, Landroidx/media3/transformer/CompositionPlayer;->positionSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    .line 605
    new-instance v9, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    new-instance v10, Landroidx/media3/transformer/CompositionPlayer$$ExternalSyntheticLambda3;

    invoke-direct {v10, p0}, Landroidx/media3/transformer/CompositionPlayer$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/transformer/CompositionPlayer;)V

    invoke-direct {v9, v10}, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;-><init>(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)V

    iput-object v9, p0, Landroidx/media3/transformer/CompositionPlayer;->bufferedPositionSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    .line 606
    new-instance v9, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    new-instance v10, Landroidx/media3/transformer/CompositionPlayer$$ExternalSyntheticLambda4;

    invoke-direct {v10, p0}, Landroidx/media3/transformer/CompositionPlayer$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/transformer/CompositionPlayer;)V

    invoke-direct {v9, v10}, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;-><init>(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)V

    iput-object v9, p0, Landroidx/media3/transformer/CompositionPlayer;->totalBufferedDurationSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    .line 607
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$1300(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroidx/media3/common/AudioAttributes;

    move-result-object v9

    iput-object v9, p0, Landroidx/media3/transformer/CompositionPlayer;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 608
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$1400(Landroidx/media3/transformer/CompositionPlayer$Builder;)Z

    move-result v9

    iput-boolean v9, p0, Landroidx/media3/transformer/CompositionPlayer;->handleAudioFocus:Z

    .line 609
    iput-boolean v8, p0, Landroidx/media3/transformer/CompositionPlayer;->appNeedsToPrepareCompositionPlayer:Z

    .line 610
    new-instance v9, Landroidx/media3/transformer/CompositionPlayer$InternalListener;

    invoke-direct {v9, p0, v3}, Landroidx/media3/transformer/CompositionPlayer$InternalListener;-><init>(Landroidx/media3/transformer/CompositionPlayer;Landroidx/media3/transformer/CompositionPlayer$1;)V

    iput-object v9, p0, Landroidx/media3/transformer/CompositionPlayer;->internalListener:Landroidx/media3/transformer/CompositionPlayer$InternalListener;

    .line 611
    new-instance v10, Landroidx/media3/common/audio/AudioFocusManager;

    .line 612
    invoke-interface {v2}, Landroidx/media3/common/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v10, v0, v2, v9}, Landroidx/media3/common/audio/AudioFocusManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;)V

    iput-object v10, p0, Landroidx/media3/transformer/CompositionPlayer;->audioFocusManager:Landroidx/media3/common/audio/AudioFocusManager;

    .line 613
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$1600(Landroidx/media3/transformer/CompositionPlayer$Builder;)Lcom/google/common/base/Supplier;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/GlObjectsProvider;

    iput-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    .line 614
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$1700(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroidx/media3/effect/PacketConsumer$Factory;

    move-result-object v2

    const/4 v9, 0x0

    if-eqz v2, :cond_3

    .line 616
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$1800(Landroidx/media3/transformer/CompositionPlayer$Builder;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 617
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$1800(Landroidx/media3/transformer/CompositionPlayer$Builder;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    goto :goto_0

    .line 618
    :cond_0
    const-string v2, "CompositionPlayer:GlThread"

    invoke-static {v2}, Landroidx/media3/common/util/Util;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 619
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$1800(Landroidx/media3/transformer/CompositionPlayer$Builder;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v8, v9

    :goto_1
    iput-boolean v8, p0, Landroidx/media3/transformer/CompositionPlayer;->shouldShutdownExecutorService:Z

    .line 620
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$1700(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroidx/media3/effect/PacketConsumer$Factory;

    move-result-object v2

    invoke-interface {v2}, Landroidx/media3/effect/PacketConsumer$Factory;->create()Landroidx/media3/effect/PacketConsumer;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->packetConsumer:Landroidx/media3/effect/PacketConsumer;

    .line 621
    new-instance v8, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    new-instance v9, Landroidx/media3/transformer/CompositionPlayer$CompositionFrameTimingEvaluator;

    cmp-long v10, v4, v6

    if-eqz v10, :cond_2

    neg-long v6, v4

    .line 628
    :cond_2
    invoke-direct {v9, v6, v7, v3}, Landroidx/media3/transformer/CompositionPlayer$CompositionFrameTimingEvaluator;-><init>(JLandroidx/media3/transformer/CompositionPlayer$1;)V

    const-wide/16 v3, 0x0

    invoke-direct {v8, v0, v9, v3, v4}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;J)V

    .line 630
    invoke-virtual {v8, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->setClock(Landroidx/media3/common/util/Clock;)V

    .line 631
    new-instance v0, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;

    invoke-direct {v0, v8, v2}, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;-><init>(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;Landroidx/media3/effect/PacketConsumer;)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->videoPacketReleaseControl:Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;

    goto :goto_2

    .line 634
    :cond_3
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$1800(Landroidx/media3/transformer/CompositionPlayer$Builder;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 635
    iput-boolean v9, p0, Landroidx/media3/transformer/CompositionPlayer;->shouldShutdownExecutorService:Z

    .line 636
    iput-object v3, p0, Landroidx/media3/transformer/CompositionPlayer;->packetConsumer:Landroidx/media3/effect/PacketConsumer;

    .line 637
    iput-object v3, p0, Landroidx/media3/transformer/CompositionPlayer;->frameAggregator:Landroidx/media3/transformer/FrameAggregator;

    .line 638
    iput-object v3, p0, Landroidx/media3/transformer/CompositionPlayer;->videoPacketReleaseControl:Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;

    .line 640
    :goto_2
    new-instance v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;-><init>(Landroidx/media3/common/util/Clock;)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 641
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$100(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroid/os/Looper;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->setPlayer(Landroidx/media3/common/Player;Landroid/os/Looper;)V

    .line 642
    new-instance p1, Landroidx/media3/exoplayer/util/EventLogger;

    const-string v1, "CompositionPlayer"

    invoke-direct {p1, v1}, Landroidx/media3/exoplayer/util/EventLogger;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->addListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    .line 643
    invoke-virtual {p0, v0}, Landroidx/media3/transformer/CompositionPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/transformer/CompositionPlayer$Builder;Landroidx/media3/transformer/CompositionPlayer$1;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Landroidx/media3/transformer/CompositionPlayer;-><init>(Landroidx/media3/transformer/CompositionPlayer$Builder;)V

    return-void
.end method

.method static synthetic access$2200()[I
    .locals 1

    .line 149
    sget-object v0, Landroidx/media3/transformer/CompositionPlayer;->SUPPORTED_LISTENER_EVENTS:[I

    return-object v0
.end method

.method static synthetic access$2300(Landroidx/media3/transformer/CompositionPlayer;)V
    .locals 0

    .line 149
    invoke-virtual {p0}, Landroidx/media3/transformer/CompositionPlayer;->invalidateState()V

    return-void
.end method

.method static synthetic access$2400(Landroidx/media3/transformer/CompositionPlayer;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->updatePlaybackState()V

    return-void
.end method

.method static synthetic access$2500(Landroidx/media3/transformer/CompositionPlayer;)I
    .locals 0

    .line 149
    iget p0, p0, Landroidx/media3/transformer/CompositionPlayer;->repeatMode:I

    return p0
.end method

.method static synthetic access$2600(Landroidx/media3/transformer/CompositionPlayer;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->repeatCompositionPlayback()V

    return-void
.end method

.method static synthetic access$2700(Landroidx/media3/transformer/CompositionPlayer;Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/transformer/CompositionPlayer;->maybeUpdatePlaybackError(Ljava/lang/String;Ljava/lang/Exception;I)V

    return-void
.end method

.method static synthetic access$2800(Landroidx/media3/transformer/CompositionPlayer;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;
    .locals 0

    .line 149
    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    return-object p0
.end method

.method static synthetic access$2900(Landroidx/media3/transformer/CompositionPlayer;)Landroidx/media3/exoplayer/LoadControl;
    .locals 0

    .line 149
    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    return-object p0
.end method

.method static synthetic access$3000(Landroidx/media3/transformer/CompositionPlayer;ZI)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Landroidx/media3/transformer/CompositionPlayer;->onVideoTrackSelection(ZI)V

    return-void
.end method

.method static synthetic access$3100(Landroidx/media3/transformer/CompositionPlayer;)F
    .locals 0

    .line 149
    iget p0, p0, Landroidx/media3/transformer/CompositionPlayer;->volume:F

    return p0
.end method

.method static synthetic access$3200(Landroidx/media3/transformer/CompositionPlayer;F)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Landroidx/media3/transformer/CompositionPlayer;->setVolumeInternal(F)V

    return-void
.end method

.method static synthetic access$3300(Landroidx/media3/transformer/CompositionPlayer;)V
    .locals 0

    .line 149
    invoke-virtual {p0}, Landroidx/media3/transformer/CompositionPlayer;->invalidateState()V

    return-void
.end method

.method static synthetic access$3400(Landroidx/media3/transformer/CompositionPlayer;)Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReady:Z

    return p0
.end method

.method static synthetic access$3500(Landroidx/media3/transformer/CompositionPlayer;)I
    .locals 0

    .line 149
    iget p0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackSuppressionReason:I

    return p0
.end method

.method static synthetic access$3600(Landroidx/media3/transformer/CompositionPlayer;)I
    .locals 0

    .line 149
    iget p0, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReadyChangeReason:I

    return p0
.end method

.method static synthetic access$3700(Landroidx/media3/transformer/CompositionPlayer;ZIII)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/transformer/CompositionPlayer;->updatePlayWhenReadyWithAudioFocus(ZIII)V

    return-void
.end method

.method static synthetic access$3800(Landroidx/media3/transformer/CompositionPlayer;)V
    .locals 0

    .line 149
    invoke-virtual {p0}, Landroidx/media3/transformer/CompositionPlayer;->invalidateState()V

    return-void
.end method

.method static synthetic access$3900(Landroidx/media3/transformer/CompositionPlayer;)Landroidx/media3/common/util/Size;
    .locals 0

    .line 149
    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer;->videoOutputSize:Landroidx/media3/common/util/Size;

    return-object p0
.end method

.method static synthetic access$3902(Landroidx/media3/transformer/CompositionPlayer;Landroidx/media3/common/util/Size;)Landroidx/media3/common/util/Size;
    .locals 0

    .line 149
    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->videoOutputSize:Landroidx/media3/common/util/Size;

    return-object p1
.end method

.method static synthetic access$4000(Landroidx/media3/transformer/CompositionPlayer;Landroid/view/Surface;Landroidx/media3/common/util/Size;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Landroidx/media3/transformer/CompositionPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    return-void
.end method

.method static synthetic access$4100(Landroidx/media3/transformer/CompositionPlayer;II)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Landroidx/media3/transformer/CompositionPlayer;->maybeSetOutputSurfaceInfo(II)V

    return-void
.end method

.method static synthetic access$4200(Landroidx/media3/transformer/CompositionPlayer;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->clearVideoSurfaceInternal()V

    return-void
.end method

.method static synthetic access$4300(Landroidx/media3/transformer/CompositionPlayer;)Landroidx/media3/common/util/HandlerWrapper;
    .locals 0

    .line 149
    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer;->applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

    return-object p0
.end method

.method static synthetic access$4400(Landroidx/media3/transformer/CompositionPlayer;)Landroidx/media3/transformer/CompositionPlayerInternal;
    .locals 0

    .line 149
    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionPlayerInternal:Landroidx/media3/transformer/CompositionPlayerInternal;

    return-object p0
.end method

.method static synthetic access$4502(Landroidx/media3/transformer/CompositionPlayer;Z)Z
    .locals 0

    .line 149
    iput-boolean p1, p0, Landroidx/media3/transformer/CompositionPlayer;->renderedFirstFrame:Z

    return p1
.end method

.method static synthetic access$4600(Landroidx/media3/transformer/CompositionPlayer;)V
    .locals 0

    .line 149
    invoke-virtual {p0}, Landroidx/media3/transformer/CompositionPlayer;->invalidateState()V

    return-void
.end method

.method private buildSingleInputPlaybackVideoGraphWrapper(Landroidx/media3/transformer/CompositionTextureListener;)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
    .locals 6

    .line 1871
    new-instance v0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;

    invoke-direct {v0}, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;-><init>()V

    const/4 v1, 0x2

    .line 1873
    invoke-virtual {v0, p1, v1}, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;->setTextureOutput(Landroidx/media3/effect/GlTextureProducer$Listener;I)Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 1874
    invoke-virtual {p1, v0}, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;->setExecutorService(Ljava/util/concurrent/ExecutorService;)Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    .line 1875
    invoke-virtual {p1, v0}, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;->setGlObjectsProvider(Landroidx/media3/common/GlObjectsProvider;)Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;

    move-result-object p1

    .line 1876
    new-instance v0, Landroidx/media3/effect/SingleInputVideoGraph$Factory;

    .line 1877
    invoke-virtual {p1}, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;->build()Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/media3/effect/SingleInputVideoGraph$Factory;-><init>(Landroidx/media3/common/VideoFrameProcessor$Factory;)V

    .line 1879
    new-instance p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->context:Landroid/content/Context;

    new-instance v2, Landroidx/media3/transformer/CompositionPlayer$CompositionFrameTimingEvaluator;

    const-wide/16 v3, -0x7530

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/media3/transformer/CompositionPlayer$CompositionFrameTimingEvaluator;-><init>(JLandroidx/media3/transformer/CompositionPlayer$1;)V

    const-wide/16 v3, 0x0

    invoke-direct {p1, v1, v2, v3, v4}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;J)V

    .line 1885
    new-instance v1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->context:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;)V

    .line 1887
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->setVideoGraphFactory(Landroidx/media3/common/VideoGraph$Factory;)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->clock:Landroidx/media3/common/util/Clock;

    .line 1888
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->setClock(Landroidx/media3/common/util/Clock;)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->enableReplayableCache:Z

    .line 1889
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->setEnableReplayableCache(Z)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    move-result-object p1

    iget-wide v0, p0, Landroidx/media3/transformer/CompositionPlayer;->lateThresholdToDropInputUs:J

    .line 1890
    invoke-virtual {p1, v0, v1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->experimentalSetLateThresholdToDropInputUs(J)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    move-result-object p1

    .line 1891
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->build()Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    move-result-object p1

    const/4 v0, 0x1

    .line 1892
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->setTotalVideoInputCount(I)V

    .line 1893
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->internalListener:Landroidx/media3/transformer/CompositionPlayer$InternalListener;

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->addListener(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;)V

    return-object p1
.end method

.method private clearVideoSurfaceInternal()V
    .locals 3

    const/4 v0, 0x0

    .line 1767
    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->displaySurface:Landroid/view/Surface;

    .line 1768
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionPlayerInternal:Landroidx/media3/transformer/CompositionPlayerInternal;

    if-eqz v0, :cond_0

    .line 1769
    new-instance v0, Landroidx/media3/common/util/ConditionVariable;

    invoke-direct {v0}, Landroidx/media3/common/util/ConditionVariable;-><init>()V

    .line 1770
    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionPlayerInternal:Landroidx/media3/transformer/CompositionPlayerInternal;

    invoke-virtual {v1, v0}, Landroidx/media3/transformer/CompositionPlayerInternal;->clearOutputSurface(Landroidx/media3/common/util/ConditionVariable;)V

    const-wide/16 v1, 0x7d0

    .line 1771
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/ConditionVariable;->blockUninterruptible(J)Z

    :cond_0
    return-void
.end method

.method private static clipToDuration(Landroidx/media3/transformer/EditedMediaItem;J)Landroidx/media3/transformer/EditedMediaItem;
    .locals 5

    .line 1586
    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    .line 1589
    invoke-virtual {p0}, Landroidx/media3/transformer/EditedMediaItem;->buildUpon()Landroidx/media3/transformer/EditedMediaItem$Builder;

    move-result-object v1

    iget-object p0, p0, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 1593
    invoke-virtual {p0}, Landroidx/media3/common/MediaItem;->buildUpon()Landroidx/media3/common/MediaItem$Builder;

    move-result-object p0

    .line 1596
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration;->buildUpon()Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    move-result-object v2

    iget-wide v3, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    add-long/2addr v3, p1

    .line 1597
    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->setEndPositionUs(J)Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    move-result-object p1

    .line 1598
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$ClippingConfiguration;

    move-result-object p1

    .line 1594
    invoke-virtual {p0, p1}, Landroidx/media3/common/MediaItem$Builder;->setClippingConfiguration(Landroidx/media3/common/MediaItem$ClippingConfiguration;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p0

    .line 1599
    invoke-virtual {p0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p0

    .line 1590
    invoke-virtual {v1, p0}, Landroidx/media3/transformer/EditedMediaItem$Builder;->setMediaItem(Landroidx/media3/common/MediaItem;)Landroidx/media3/transformer/EditedMediaItem$Builder;

    move-result-object p0

    .line 1600
    invoke-virtual {p0}, Landroidx/media3/transformer/EditedMediaItem$Builder;->build()Landroidx/media3/transformer/EditedMediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static compositionContainsIllegalSpeedChangingEffects(Landroidx/media3/transformer/Composition;)Z
    .locals 4

    .line 1834
    iget-object v0, p0, Landroidx/media3/transformer/Composition;->effects:Landroidx/media3/transformer/Effects;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/transformer/TransformerUtil;->containsSpeedChangingEffects(Landroidx/media3/transformer/Effects;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    .line 1838
    :cond_0
    iget-object p0, p0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/EditedMediaItemSequence;

    .line 1839
    iget-object v0, v0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/transformer/EditedMediaItem;

    .line 1840
    iget-object v3, v3, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    invoke-static {v3, v2}, Landroidx/media3/transformer/TransformerUtil;->containsSpeedChangingEffects(Landroidx/media3/transformer/Effects;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_3
    return v1
.end method

.method private static createMediaSourceWithBlankFramesAndSilence(Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/transformer/EditedMediaItem;Ljava/util/Set;Z)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            "Landroidx/media3/transformer/EditedMediaItem;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Landroidx/media3/exoplayer/source/MediaSource;"
        }
    .end annotation

    .line 1487
    new-instance v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;

    new-instance v1, Landroidx/media3/exoplayer/source/SilenceMediaSource;

    iget-wide v2, p1, Landroidx/media3/transformer/EditedMediaItem;->durationUs:J

    invoke-direct {v1, v2, v3}, Landroidx/media3/exoplayer/source/SilenceMediaSource;-><init>(J)V

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;-><init>(Landroidx/media3/exoplayer/source/MediaSource;)V

    iget-object v1, p1, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v1, v1, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v1, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    .line 1489
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->setStartPositionUs(J)Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v1, v1, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v1, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    .line 1490
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->setEndPositionUs(J)Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;

    move-result-object v0

    .line 1491
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->build()Landroidx/media3/exoplayer/source/ClippingMediaSource;

    move-result-object v0

    .line 1493
    new-instance v1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;

    new-instance v2, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource$Factory;

    iget-wide v3, p1, Landroidx/media3/transformer/EditedMediaItem;->durationUs:J

    new-instance v5, Landroidx/media3/transformer/CompositionPlayer$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Landroidx/media3/transformer/CompositionPlayer$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v2, v3, v4, v5}, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource$Factory;-><init>(JLandroidx/media3/exoplayer/source/ExternalLoader;)V

    new-instance v3, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v3}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    const-string v4, "composition_player_blank_frames"

    .line 1499
    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v3

    const-string v4, "compositionPlayer://composition_player_blank_frames"

    .line 1500
    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaItem$Builder;->setUri(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v3

    .line 1501
    invoke-virtual {v3}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v3

    .line 1497
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;-><init>(Landroidx/media3/exoplayer/source/MediaSource;)V

    iget-object v2, p1, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v2, v2, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v2, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    .line 1502
    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->setStartPositionUs(J)Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v2, v2, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v2, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    .line 1503
    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->setEndPositionUs(J)Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;

    move-result-object v1

    .line 1504
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->build()Landroidx/media3/exoplayer/source/ClippingMediaSource;

    move-result-object v1

    .line 1509
    invoke-virtual {p1}, Landroidx/media3/transformer/EditedMediaItem;->isGap()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_1

    if-eqz p3, :cond_0

    .line 1511
    new-instance p0, Landroidx/media3/exoplayer/source/MergingMediaSource;

    new-array p1, v5, [Landroidx/media3/exoplayer/source/MediaSource;

    aput-object v0, p1, v4

    aput-object v1, p1, v3

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>([Landroidx/media3/exoplayer/source/MediaSource;)V

    return-object p0

    :cond_0
    return-object v0

    .line 1518
    :cond_1
    iget-object p1, p1, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p0

    const/4 p1, -0x2

    .line 1523
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1526
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1527
    new-instance p1, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {p1}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    .line 1529
    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object p1

    const/4 p2, 0x4

    .line 1530
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object p1

    .line 1531
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object p2

    .line 1533
    :cond_2
    new-instance p1, Landroidx/media3/exoplayer/source/FilteringMediaSource;

    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/source/FilteringMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Ljava/util/Set;)V

    move-object p0, p1

    :cond_3
    if-eqz p3, :cond_4

    .line 1536
    new-instance p1, Landroidx/media3/exoplayer/source/MergingMediaSource;

    const/4 p2, 0x3

    new-array p2, p2, [Landroidx/media3/exoplayer/source/MediaSource;

    aput-object v0, p2, v4

    aput-object v1, p2, v3

    aput-object p0, p2, v5

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>([Landroidx/media3/exoplayer/source/MediaSource;)V

    return-object p1

    .line 1538
    :cond_4
    new-instance p1, Landroidx/media3/exoplayer/source/MergingMediaSource;

    new-array p2, v5, [Landroidx/media3/exoplayer/source/MediaSource;

    aput-object v0, p2, v4

    aput-object p0, p2, v3

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>([Landroidx/media3/exoplayer/source/MediaSource;)V

    return-object p1
.end method

.method private static createNonLoopingMediaSource(Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/exoplayer/source/MediaSource$Factory;ZZ)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 8

    .line 1446
    new-instance v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 1448
    :goto_0
    iget-object v3, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1449
    iget-object v3, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/transformer/EditedMediaItem;

    .line 1450
    iget-wide v4, v3, Landroidx/media3/transformer/EditedMediaItem;->durationUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1452
    iget-object v4, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 1453
    invoke-static {p1, v3, v4, p2}, Landroidx/media3/transformer/CompositionPlayer;->createMediaSourceWithBlankFramesAndSilence(Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/transformer/EditedMediaItem;Ljava/util/Set;Z)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v4

    .line 1457
    iget-object v5, v3, Landroidx/media3/transformer/EditedMediaItem;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    sget-object v6, Landroidx/media3/common/audio/SpeedProvider;->DEFAULT:Landroidx/media3/common/audio/SpeedProvider;

    if-eq v5, v6, :cond_1

    .line 1458
    new-instance v5, Landroidx/media3/transformer/SpeedChangingMediaSource;

    iget-object v6, v3, Landroidx/media3/transformer/EditedMediaItem;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    iget-object v7, v3, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v7, v7, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    invoke-direct {v5, v4, v6, v7}, Landroidx/media3/transformer/SpeedChangingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/audio/SpeedProvider;Landroidx/media3/common/MediaItem$ClippingConfiguration;)V

    move-object v4, v5

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_2

    .line 1467
    iget-object v5, v3, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    iget-object v5, v5, Landroidx/media3/transformer/Effects;->videoEffects:Lcom/google/common/collect/ImmutableList;

    iget-object v6, v3, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v6, v6, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    .line 1468
    invoke-static {v4, v5, v6}, Landroidx/media3/transformer/CompositionPlayer;->wrapWithVideoEffectsBasedMediaSources(Landroidx/media3/exoplayer/source/MediaSource;Lcom/google/common/collect/ImmutableList;Landroidx/media3/common/MediaItem$ClippingConfiguration;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v4

    .line 1477
    :cond_2
    :goto_2
    invoke-virtual {v3}, Landroidx/media3/transformer/EditedMediaItem;->getPresentationDurationUs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v5

    .line 1475
    invoke-virtual {v0, v4, v5, v6}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;->add(Landroidx/media3/exoplayer/source/MediaSource;J)Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1479
    :cond_3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;->build()Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/media3/transformer/CompositionPlayer;->wrapMediaSourceWithCompositionForwardingTimeline(Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p0

    return-object p0
.end method

.method private createPlaylist()Lcom/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;"
        }
    .end annotation

    .line 1788
    iget-wide v0, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionDurationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1789
    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    const-string v1, "CompositionTimeline"

    invoke-direct {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;-><init>(Ljava/lang/Object;)V

    sget-object v1, Landroidx/media3/common/MediaItem;->EMPTY:Landroidx/media3/common/MediaItem;

    .line 1791
    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setMediaItem(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionDurationUs:J

    .line 1792
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setDurationUs(J)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v0

    .line 1793
    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    move-result-object v0

    .line 1789
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private static createPrimarySequenceMediaSource(Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/exoplayer/source/MediaSource$Factory;Z)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 1

    const/4 v0, 0x1

    .line 1437
    invoke-static {p0, p1, p2, v0}, Landroidx/media3/transformer/CompositionPlayer;->createNonLoopingMediaSource(Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/exoplayer/source/MediaSource$Factory;ZZ)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p0

    return-object p0
.end method

.method private static createSecondarySequenceMediaSource(Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/exoplayer/source/MediaSource$Factory;JZ)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 10

    .line 1549
    iget-boolean v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->isLooping:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1550
    invoke-static {p0, p1, p4, v1}, Landroidx/media3/transformer/CompositionPlayer;->createNonLoopingMediaSource(Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/exoplayer/source/MediaSource$Factory;ZZ)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p0

    return-object p0

    .line 1554
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;-><init>()V

    const-wide/16 v2, 0x0

    :goto_0
    cmp-long v4, v2, p2

    if-gez v4, :cond_2

    .line 1558
    iget-object v4, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/transformer/EditedMediaItem;

    .line 1559
    invoke-virtual {v4}, Landroidx/media3/transformer/EditedMediaItem;->getPresentationDurationUs()J

    move-result-wide v5

    add-long v7, v2, v5

    cmp-long v9, v7, p2

    if-gtz v9, :cond_1

    .line 1561
    iget-object v2, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 1562
    invoke-static {p1, v4, v2, p4}, Landroidx/media3/transformer/CompositionPlayer;->createMediaSourceWithBlankFramesAndSilence(Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/transformer/EditedMediaItem;Ljava/util/Set;Z)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v2

    .line 1567
    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v3

    .line 1561
    invoke-virtual {v0, v2, v3, v4}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;->add(Landroidx/media3/exoplayer/source/MediaSource;J)Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;

    add-int/lit8 v1, v1, 0x1

    .line 1580
    iget-object v2, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    move-wide v2, v7

    goto :goto_0

    :cond_1
    sub-long/2addr p2, v2

    .line 1575
    invoke-static {v4, p2, p3}, Landroidx/media3/transformer/CompositionPlayer;->clipToDuration(Landroidx/media3/transformer/EditedMediaItem;J)Landroidx/media3/transformer/EditedMediaItem;

    move-result-object p2

    iget-object p3, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 1573
    invoke-static {p1, p2, p3, p4}, Landroidx/media3/transformer/CompositionPlayer;->createMediaSourceWithBlankFramesAndSilence(Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/transformer/EditedMediaItem;Ljava/util/Set;Z)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p1

    .line 1572
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;->add(Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;

    .line 1582
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;->build()Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/media3/transformer/CompositionPlayer;->wrapMediaSourceWithCompositionForwardingTimeline(Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p0

    return-object p0
.end method

.method private createSequencePlayer(Landroidx/media3/transformer/Composition;I)Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;
    .locals 13

    .line 1388
    iget v2, p1, Landroidx/media3/transformer/Composition;->hdrMode:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v2, v10, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    move v11, v9

    .line 1391
    :goto_0
    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->packetConsumer:Landroidx/media3/effect/PacketConsumer;

    const/4 v12, 0x0

    if-eqz v2, :cond_1

    .line 1394
    new-instance v2, Landroidx/media3/transformer/CompositionTextureListener;

    iget-object v3, p0, Landroidx/media3/transformer/CompositionPlayer;->frameAggregator:Landroidx/media3/transformer/FrameAggregator;

    .line 1395
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/transformer/FrameAggregator;

    invoke-direct {v2, p1, p2, v3}, Landroidx/media3/transformer/CompositionTextureListener;-><init>(Landroidx/media3/transformer/Composition;ILandroidx/media3/transformer/FrameAggregator;)V

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v12

    .line 1398
    :goto_1
    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->packetConsumer:Landroidx/media3/effect/PacketConsumer;

    if-eqz v2, :cond_2

    .line 1399
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/CompositionTextureListener;

    invoke-direct {p0, v2}, Landroidx/media3/transformer/CompositionPlayer;->getFrameConsumerInputSink(Landroidx/media3/transformer/CompositionTextureListener;)Landroidx/media3/exoplayer/video/VideoSink;

    move-result-object v2

    goto :goto_2

    .line 1400
    :cond_2
    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-virtual {v2, p2}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->getSink(I)Landroidx/media3/exoplayer/video/VideoSink;

    move-result-object v2

    :goto_2
    move-object v4, v2

    .line 1401
    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->context:Landroid/content/Context;

    iget-object v3, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    .line 1404
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    iget-object v5, p0, Landroidx/media3/transformer/CompositionPlayer;->imageDecoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    iget-boolean v7, p0, Landroidx/media3/transformer/CompositionPlayer;->videoPrewarmingEnabled:Z

    move v6, p2

    .line 1402
    invoke-static/range {v2 .. v7}, Landroidx/media3/transformer/SequenceRenderersFactory;->create(Landroid/content/Context;Landroidx/media3/transformer/PlaybackAudioGraphWrapper;Landroidx/media3/exoplayer/video/VideoSink;Landroidx/media3/exoplayer/image/ImageDecoder$Factory;IZ)Landroidx/media3/transformer/SequenceRenderersFactory;

    move-result-object v2

    .line 1409
    iget-object v3, p0, Landroidx/media3/transformer/CompositionPlayer;->packetConsumer:Landroidx/media3/effect/PacketConsumer;

    if-eqz v3, :cond_3

    if-nez p2, :cond_3

    .line 1410
    iget-object v3, p0, Landroidx/media3/transformer/CompositionPlayer;->videoPacketReleaseControl:Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;

    invoke-virtual {v2, v3}, Landroidx/media3/transformer/SequenceRenderersFactory;->setOnRenderListener(Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;)V

    .line 1412
    :cond_3
    iget-object v3, p0, Landroidx/media3/transformer/CompositionPlayer;->packetConsumer:Landroidx/media3/effect/PacketConsumer;

    if-eqz v3, :cond_4

    .line 1413
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/CompositionTextureListener;

    invoke-virtual {v2, v0}, Landroidx/media3/transformer/SequenceRenderersFactory;->setCompositionTextureListener(Landroidx/media3/transformer/CompositionTextureListener;)V

    .line 1415
    :cond_4
    new-instance v0, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;

    move-object v6, v2

    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->context:Landroid/content/Context;

    .line 1418
    invoke-virtual {p0}, Landroidx/media3/transformer/CompositionPlayer;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackThread:Landroid/os/HandlerThread;

    .line 1419
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/transformer/CompositionPlayer;->clock:Landroidx/media3/common/util/Clock;

    const/4 v8, 0x0

    move-object v1, p0

    move v7, p2

    invoke-direct/range {v0 .. v8}, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;-><init>(Landroidx/media3/transformer/CompositionPlayer;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/transformer/SequenceRenderersFactory;ILandroidx/media3/transformer/CompositionPlayer$1;)V

    .line 1423
    iget-object v2, v0, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    new-instance v3, Landroidx/media3/transformer/CompositionPlayer$PlayerListener;

    invoke-direct {v3, p0, p2}, Landroidx/media3/transformer/CompositionPlayer$PlayerListener;-><init>(Landroidx/media3/transformer/CompositionPlayer;I)V

    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/ExoPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 1424
    iget-object v2, v0, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    new-instance v3, Landroidx/media3/transformer/CompositionPlayer$PlayerAnalyticsListener;

    invoke-direct {v3, p0, v12}, Landroidx/media3/transformer/CompositionPlayer$PlayerAnalyticsListener;-><init>(Landroidx/media3/transformer/CompositionPlayer;Landroidx/media3/transformer/CompositionPlayer$1;)V

    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/ExoPlayer;->addAnalyticsListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    .line 1425
    iget-object v2, v0, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    new-instance v3, Landroidx/media3/exoplayer/util/EventLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CompositionPlayer-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/media3/exoplayer/util/EventLogger;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/ExoPlayer;->addAnalyticsListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    .line 1427
    iget-object v2, v0, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v3, p0, Landroidx/media3/transformer/CompositionPlayer;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-interface {v2, v3, v9}, Landroidx/media3/exoplayer/ExoPlayer;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)V

    .line 1428
    iget-object v2, v0, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2, v10}, Landroidx/media3/exoplayer/ExoPlayer;->setPauseAtEndOfMediaItems(Z)V

    .line 1429
    iget-object v2, v0, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->renderersFactory:Landroidx/media3/transformer/SequenceRenderersFactory;

    invoke-virtual {v2, v11}, Landroidx/media3/transformer/SequenceRenderersFactory;->setRequestMediaCodecToneMapping(Z)V

    return-object v0
.end method

.method private createSequencePlayer(Landroidx/media3/transformer/Composition;IJJ)V
    .locals 3

    .line 1353
    iget-object v0, p1, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/EditedMediaItemSequence;

    .line 1356
    invoke-direct {p0, p1, p2}, Landroidx/media3/transformer/CompositionPlayer;->createSequencePlayer(Landroidx/media3/transformer/Composition;I)Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;

    move-result-object p1

    .line 1357
    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1358
    iget-object p1, p1, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 1362
    iget-object v1, v0, Landroidx/media3/transformer/EditedMediaItemSequence;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1371
    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    if-nez p2, :cond_0

    .line 1365
    invoke-static {v0, v2, v1}, Landroidx/media3/transformer/CompositionPlayer;->createPrimarySequenceMediaSource(Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/exoplayer/source/MediaSource$Factory;Z)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p3

    .line 1364
    invoke-interface {p1, p3, p5, p6}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;J)V

    .line 1367
    iget-object p3, p0, Landroidx/media3/transformer/CompositionPlayer;->videoFrameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    if-eqz p3, :cond_1

    .line 1368
    invoke-interface {p1, p3}, Landroidx/media3/exoplayer/ExoPlayer;->setVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V

    goto :goto_0

    .line 1372
    :cond_0
    invoke-static {v0, v2, p3, p4, v1}, Landroidx/media3/transformer/CompositionPlayer;->createSecondarySequenceMediaSource(Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/exoplayer/source/MediaSource$Factory;JZ)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p3

    .line 1371
    invoke-interface {p1, p3, p5, p6}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;J)V

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 1382
    invoke-virtual {p0}, Landroidx/media3/transformer/CompositionPlayer;->invalidateState()V

    .line 1383
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->createPlaylist()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->playlist:Lcom/google/common/collect/ImmutableList;

    :cond_2
    return-void
.end method

.method private static deactivateSpeedAdjustingVideoEffects(Landroidx/media3/transformer/EditedMediaItem;)Landroidx/media3/transformer/EditedMediaItem;
    .locals 4

    .line 1082
    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    iget-object v0, v0, Landroidx/media3/transformer/Effects;->videoEffects:Lcom/google/common/collect/ImmutableList;

    .line 1083
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1084
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Effect;

    .line 1085
    instance-of v3, v2, Landroidx/media3/effect/TimestampAdjustment;

    if-eqz v3, :cond_0

    .line 1086
    new-instance v3, Landroidx/media3/transformer/InactiveTimestampAdjustment;

    check-cast v2, Landroidx/media3/effect/TimestampAdjustment;

    iget-object v2, v2, Landroidx/media3/effect/TimestampAdjustment;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    invoke-direct {v3, v2}, Landroidx/media3/transformer/InactiveTimestampAdjustment;-><init>(Landroidx/media3/common/audio/SpeedProvider;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1089
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1092
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/transformer/EditedMediaItem;->buildUpon()Landroidx/media3/transformer/EditedMediaItem$Builder;

    move-result-object v0

    new-instance v2, Landroidx/media3/transformer/Effects;

    iget-object p0, p0, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    iget-object p0, p0, Landroidx/media3/transformer/Effects;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v2, p0, v1}, Landroidx/media3/transformer/Effects;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 1093
    invoke-virtual {v0, v2}, Landroidx/media3/transformer/EditedMediaItem$Builder;->setEffects(Landroidx/media3/transformer/Effects;)Landroidx/media3/transformer/EditedMediaItem$Builder;

    move-result-object p0

    .line 1094
    invoke-virtual {p0}, Landroidx/media3/transformer/EditedMediaItem$Builder;->build()Landroidx/media3/transformer/EditedMediaItem;

    move-result-object p0

    return-object p0
.end method

.method private getBufferedPositionMs()J
    .locals 9

    .line 1675
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    const-wide/32 v3, 0x7fffffff

    const/4 v0, 0x0

    move-wide v5, v3

    .line 1680
    :goto_0
    iget-object v7, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 1681
    iget-object v7, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;

    iget-object v7, v7, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v7}, Landroidx/media3/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 1683
    :cond_1
    iget-object v7, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    .line 1684
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;

    iget-object v7, v7, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v7}, Landroidx/media3/exoplayer/ExoPlayer;->getBufferedPosition()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    cmp-long v0, v5, v3

    if-nez v0, :cond_4

    return-wide v1

    :cond_4
    return-wide v5
.end method

.method private static getCompositionDurationUs(Landroidx/media3/transformer/Composition;)J
    .locals 5

    .line 1806
    iget-object v0, p0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const-wide/32 v0, -0x80000000

    const/4 v2, 0x0

    .line 1808
    :goto_0
    iget-object v3, p0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1809
    iget-object v3, p0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/transformer/EditedMediaItemSequence;

    .line 1810
    iget-boolean v4, v3, Landroidx/media3/transformer/EditedMediaItemSequence;->isLooping:Z

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1813
    :cond_0
    invoke-static {v3}, Landroidx/media3/transformer/CompositionPlayer;->getSequenceDurationUs(Landroidx/media3/transformer/EditedMediaItemSequence;)J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private getContentPositionMs()J
    .locals 5

    .line 1662
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, 0x0

    .line 1667
    :goto_0
    iget-object v3, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1668
    iget-object v3, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    .line 1669
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;

    iget-object v3, v3, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v3}, Landroidx/media3/exoplayer/ExoPlayer;->getContentPosition()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method private getFrameConsumerInputSink(Landroidx/media3/transformer/CompositionTextureListener;)Landroidx/media3/exoplayer/video/VideoSink;
    .locals 2

    .line 1850
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->packetConsumer:Landroidx/media3/effect/PacketConsumer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1852
    invoke-direct {p0, p1}, Landroidx/media3/transformer/CompositionPlayer;->buildSingleInputPlaybackVideoGraphWrapper(Landroidx/media3/transformer/CompositionTextureListener;)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    move-result-object v0

    .line 1856
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->startRendering()V

    .line 1857
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->getSink(I)Landroidx/media3/exoplayer/video/VideoSink;

    move-result-object v0

    .line 1858
    new-instance v1, Landroidx/media3/transformer/CompositionPlayer$2;

    invoke-direct {v1, p0, v0, p1}, Landroidx/media3/transformer/CompositionPlayer$2;-><init>(Landroidx/media3/transformer/CompositionPlayer;Landroidx/media3/exoplayer/video/VideoSink;Landroidx/media3/transformer/CompositionTextureListener;)V

    return-object v1
.end method

.method private getRenderedFirstFrameAndReset()Z
    .locals 2

    .line 1713
    iget-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->renderedFirstFrame:Z

    const/4 v1, 0x0

    .line 1714
    iput-boolean v1, p0, Landroidx/media3/transformer/CompositionPlayer;->renderedFirstFrame:Z

    return v0
.end method

.method private static getSequenceDurationUs(Landroidx/media3/transformer/EditedMediaItemSequence;)J
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v4, v0

    move v3, v2

    .line 1820
    :goto_0
    iget-object v6, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 1821
    iget-object v6, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/transformer/EditedMediaItem;

    invoke-virtual {v6}, Landroidx/media3/transformer/EditedMediaItem;->getPresentationDurationUs()J

    move-result-wide v6

    add-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    cmp-long p0, v4, v0

    if-lez p0, :cond_1

    const/4 v2, 0x1

    .line 1823
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-wide v4
.end method

.method private getTotalBufferedDurationMs()J
    .locals 9

    .line 1694
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    const-wide/32 v3, 0x7fffffff

    const/4 v0, 0x0

    move-wide v5, v3

    .line 1699
    :goto_0
    iget-object v7, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 1700
    iget-object v7, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;

    iget-object v7, v7, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v7}, Landroidx/media3/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 1702
    :cond_1
    iget-object v7, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    .line 1703
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;

    iget-object v7, v7, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v7}, Landroidx/media3/exoplayer/ExoPlayer;->getTotalBufferedDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    cmp-long v0, v5, v3

    if-nez v0, :cond_4

    return-wide v1

    :cond_4
    return-wide v5
.end method

.method static synthetic lambda$createMediaSourceWithBlankFramesAndSilence$1(Landroidx/media3/exoplayer/source/ExternalLoader$LoadRequest;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1496
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method private maybeSetOutputSurfaceInfo(II)V
    .locals 3

    .line 1755
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->displaySurface:Landroid/view/Surface;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 1756
    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionPlayerInternal:Landroidx/media3/transformer/CompositionPlayerInternal;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1759
    :cond_0
    new-instance v2, Landroidx/media3/common/util/Size;

    invoke-direct {v2, p1, p2}, Landroidx/media3/common/util/Size;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroidx/media3/transformer/CompositionPlayerInternal;->setOutputSurfaceInfo(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeSetVideoOutput()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 1643
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->videoOutput:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->composition:Landroidx/media3/transformer/Composition;

    if-nez v1, :cond_0

    goto :goto_1

    .line 1646
    :cond_0
    instance-of v1, v0, Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    .line 1647
    check-cast v0, Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Landroidx/media3/transformer/CompositionPlayer;->setVideoSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 1648
    :cond_1
    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_2

    .line 1649
    check-cast v0, Landroid/view/SurfaceView;

    .line 1650
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/transformer/CompositionPlayer;->setVideoSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 1651
    :cond_2
    instance-of v1, v0, Landroid/view/Surface;

    if-eqz v1, :cond_3

    .line 1652
    check-cast v0, Landroid/view/Surface;

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->videoOutputSize:Landroidx/media3/common/util/Size;

    const-string v2, "VideoOutputSize must be set when using Surface output"

    .line 1654
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/util/Size;

    .line 1652
    invoke-direct {p0, v0, v1}, Landroidx/media3/transformer/CompositionPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    .line 1658
    :goto_0
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 1656
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->videoOutput:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1644
    :cond_4
    :goto_1
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private maybeUpdatePlaybackError(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 1

    .line 1720
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackException:Landroidx/media3/common/PlaybackException;

    if-nez v0, :cond_1

    .line 1721
    new-instance v0, Landroidx/media3/common/PlaybackException;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media3/common/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackException:Landroidx/media3/common/PlaybackException;

    const/4 p1, 0x0

    .line 1722
    :goto_0
    iget-object p2, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 1723
    iget-object p2, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;

    iget-object p2, p2, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p2}, Landroidx/media3/exoplayer/ExoPlayer;->stop()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1725
    iput-boolean p1, p0, Landroidx/media3/transformer/CompositionPlayer;->appNeedsToPrepareCompositionPlayer:Z

    .line 1726
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->updatePlaybackState()V

    .line 1728
    invoke-virtual {p0}, Landroidx/media3/transformer/CompositionPlayer;->invalidateState()V

    return-void

    .line 1730
    :cond_1
    const-string p3, "CompositionPlayer"

    invoke-static {p3, p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private onVideoTrackSelection(ZI)V
    .locals 2

    .line 2049
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->videoTracksSelected:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2051
    iget-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->videoTracksSelected:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    iget-object p2, p0, Landroidx/media3/transformer/CompositionPlayer;->composition:Landroidx/media3/transformer/Composition;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/transformer/Composition;

    iget-object p2, p2, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p2

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    move p2, p1

    .line 2053
    :goto_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->videoTracksSelected:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2054
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->videoTracksSelected:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2059
    :cond_1
    iget-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->setTotalVideoInputCount(I)V

    :cond_2
    return-void
.end method

.method private prepareCompositionPlayerInternal()V
    .locals 10

    .line 1255
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    if-eqz v0, :cond_0

    .line 1256
    invoke-virtual {v0}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->release()V

    .line 1258
    :cond_0
    new-instance v0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->audioMixerFactory:Landroidx/media3/transformer/AudioMixer$Factory;

    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 1259
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-direct {v0, v1, v2}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;-><init>(Landroidx/media3/transformer/AudioMixer$Factory;Landroidx/media3/exoplayer/audio/AudioSink;)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    .line 1260
    iget-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionPlayerInternalPrepared:Z

    if-eqz v0, :cond_1

    .line 1261
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionPlayerInternal:Landroidx/media3/transformer/CompositionPlayerInternal;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/CompositionPlayerInternal;

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    .line 1262
    invoke-virtual {v0, v1}, Landroidx/media3/transformer/CompositionPlayerInternal;->setPlaybackAudioGraphWrapper(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;)V

    return-void

    .line 1266
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CompositionPlaybackThread"

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackThread:Landroid/os/HandlerThread;

    .line 1267
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1268
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->clock:Landroidx/media3/common/util/Clock;

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackThreadHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 1270
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget-boolean v1, p0, Landroidx/media3/transformer/CompositionPlayer;->handleAudioFocus:Z

    invoke-direct {p0, v0, v1}, Landroidx/media3/transformer/CompositionPlayer;->setAudioAttributesInternal(Landroidx/media3/common/AudioAttributes;Z)V

    .line 1274
    new-instance v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->context:Landroid/content/Context;

    new-instance v3, Landroidx/media3/transformer/CompositionPlayer$CompositionFrameTimingEvaluator;

    const-wide/16 v4, -0x7530

    invoke-direct {v3, v4, v5, v2}, Landroidx/media3/transformer/CompositionPlayer$CompositionFrameTimingEvaluator;-><init>(JLandroidx/media3/transformer/CompositionPlayer$1;)V

    const-wide/16 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v5}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;J)V

    .line 1280
    new-instance v1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;)V

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->videoGraphFactory:Landroidx/media3/common/VideoGraph$Factory;

    .line 1282
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/VideoGraph$Factory;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->setVideoGraphFactory(Landroidx/media3/common/VideoGraph$Factory;)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->clock:Landroidx/media3/common/util/Clock;

    .line 1283
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->setClock(Landroidx/media3/common/util/Clock;)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/transformer/CompositionPlayer;->enableReplayableCache:Z

    .line 1284
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->setEnableReplayableCache(Z)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/transformer/CompositionPlayer;->lateThresholdToDropInputUs:J

    .line 1285
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->experimentalSetLateThresholdToDropInputUs(J)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    move-result-object v0

    .line 1286
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->build()Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 1287
    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->internalListener:Landroidx/media3/transformer/CompositionPlayer$InternalListener;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->addListener(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;)V

    .line 1291
    new-instance v2, Landroidx/media3/transformer/CompositionPlayerInternal;

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackThread:Landroid/os/HandlerThread;

    .line 1293
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Landroidx/media3/transformer/CompositionPlayer;->clock:Landroidx/media3/common/util/Clock;

    iget-object v5, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    iget-object v6, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-object v7, p0, Landroidx/media3/transformer/CompositionPlayer;->internalListener:Landroidx/media3/transformer/CompositionPlayer$InternalListener;

    iget-object v8, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionInternalListenerHandler:Landroidx/media3/common/util/HandlerWrapper;

    iget-object v9, p0, Landroidx/media3/transformer/CompositionPlayer;->videoPacketReleaseControl:Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;

    invoke-direct/range {v2 .. v9}, Landroidx/media3/transformer/CompositionPlayerInternal;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/transformer/PlaybackAudioGraphWrapper;Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;Landroidx/media3/transformer/CompositionPlayerInternal$Listener;Landroidx/media3/common/util/HandlerWrapper;Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;)V

    iput-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionPlayerInternal:Landroidx/media3/transformer/CompositionPlayerInternal;

    .line 1300
    iget v0, p0, Landroidx/media3/transformer/CompositionPlayer;->volume:F

    invoke-direct {p0, v0}, Landroidx/media3/transformer/CompositionPlayer;->setVolumeInternal(F)V

    const/4 v0, 0x1

    .line 1301
    iput-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionPlayerInternalPrepared:Z

    return-void
.end method

.method private removeSurfaceCallbacks()V
    .locals 2

    .line 1776
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 1777
    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->internalListener:Landroidx/media3/transformer/CompositionPlayer$InternalListener;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x0

    .line 1778
    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    :cond_0
    return-void
.end method

.method private repeatCompositionPlayback()V
    .locals 1

    const/4 v0, 0x1

    .line 1783
    iput-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->repeatingCompositionSeekInProgress:Z

    .line 1784
    invoke-virtual {p0}, Landroidx/media3/transformer/CompositionPlayer;->seekToDefaultPosition()V

    return-void
.end method

.method private resetLivePositionSuppliers()V
    .locals 3

    .line 1797
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->positionSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->getContentPositionMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;->disconnect(J)V

    .line 1798
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->bufferedPositionSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->getBufferedPositionMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;->disconnect(J)V

    .line 1799
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->totalBufferedDurationSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->getTotalBufferedDurationMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;->disconnect(J)V

    .line 1800
    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    new-instance v1, Landroidx/media3/transformer/CompositionPlayer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroidx/media3/transformer/CompositionPlayer$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/transformer/CompositionPlayer;)V

    invoke-direct {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;-><init>(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->positionSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    .line 1801
    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    new-instance v1, Landroidx/media3/transformer/CompositionPlayer$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroidx/media3/transformer/CompositionPlayer$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/transformer/CompositionPlayer;)V

    invoke-direct {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;-><init>(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->bufferedPositionSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    .line 1802
    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    new-instance v1, Landroidx/media3/transformer/CompositionPlayer$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroidx/media3/transformer/CompositionPlayer$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/transformer/CompositionPlayer;)V

    invoke-direct {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;-><init>(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->totalBufferedDurationSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    return-void
.end method

.method private setAudioAttributesInternal(Landroidx/media3/common/AudioAttributes;Z)V
    .locals 3

    .line 1153
    iput-boolean p2, p0, Landroidx/media3/transformer/CompositionPlayer;->handleAudioFocus:Z

    .line 1155
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1156
    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 1157
    iget-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionPlayerInternalPrepared:Z

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionPlayerInternal:Landroidx/media3/transformer/CompositionPlayerInternal;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/CompositionPlayerInternal;

    invoke-virtual {v0, p1}, Landroidx/media3/transformer/CompositionPlayerInternal;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V

    .line 1161
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;

    .line 1162
    iget-object v1, v1, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroidx/media3/exoplayer/ExoPlayer;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)V

    goto :goto_0

    .line 1166
    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->audioFocusManager:Landroidx/media3/common/audio/AudioFocusManager;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroidx/media3/common/audio/AudioFocusManager;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V

    .line 1168
    iget-boolean p1, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReady:Z

    iget p2, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackSuppressionReason:I

    iget v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReadyChangeReason:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/transformer/CompositionPlayer;->updatePlayWhenReadyWithAudioFocus(ZII)V

    return-void
.end method

.method private setCompositionInternal(Landroidx/media3/transformer/Composition;J)V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    .line 1305
    :goto_0
    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1309
    iget-object v3, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    if-ge v1, v2, :cond_0

    .line 1307
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;

    iget-object v2, v2, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1309
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1311
    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->packetConsumer:Landroidx/media3/effect/PacketConsumer;

    if-eqz v1, :cond_2

    .line 1312
    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->frameAggregator:Landroidx/media3/transformer/FrameAggregator;

    if-eqz v1, :cond_1

    .line 1313
    invoke-virtual {v1}, Landroidx/media3/transformer/FrameAggregator;->releaseAllFrames()V

    .line 1315
    :cond_1
    new-instance v1, Landroidx/media3/transformer/FrameAggregator;

    iget-object v2, p1, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    .line 1317
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    iget-object v3, p0, Landroidx/media3/transformer/CompositionPlayer;->videoPacketReleaseControl:Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroidx/media3/transformer/CompositionPlayer$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Landroidx/media3/transformer/CompositionPlayer$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;)V

    invoke-direct {v1, v2, v4}, Landroidx/media3/transformer/FrameAggregator;-><init>(ILandroidx/media3/common/util/Consumer;)V

    iput-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->frameAggregator:Landroidx/media3/transformer/FrameAggregator;

    .line 1320
    :cond_2
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->prepareCompositionPlayerInternal()V

    .line 1321
    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionPlayerInternal:Landroidx/media3/transformer/CompositionPlayerInternal;

    .line 1322
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/CompositionPlayerInternal;

    .line 1323
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer;->getCompositionDurationUs(Landroidx/media3/transformer/Composition;)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionDurationUs:J

    .line 1324
    iget-object v2, p1, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    .line 1325
    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/EditedMediaItemSequence;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/EditedMediaItemSequence;

    invoke-static {v2}, Landroidx/media3/transformer/CompositionPlayer;->getSequenceDurationUs(Landroidx/media3/transformer/EditedMediaItemSequence;)J

    move-result-wide v6

    move v5, v0

    .line 1326
    :goto_1
    iget-object v2, p1, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v5, v2, :cond_3

    move-object v3, p0

    move-object v4, p1

    move-wide v8, p2

    .line 1327
    invoke-direct/range {v3 .. v9}, Landroidx/media3/transformer/CompositionPlayer;->createSequencePlayer(Landroidx/media3/transformer/Composition;IJJ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move-object v3, p0

    move-object v4, p1

    move-wide v8, p2

    .line 1330
    invoke-virtual {v1, v4}, Landroidx/media3/transformer/CompositionPlayerInternal;->setComposition(Landroidx/media3/transformer/Composition;)V

    .line 1331
    invoke-virtual {v1, v8, v9}, Landroidx/media3/transformer/CompositionPlayerInternal;->startSeek(J)V

    .line 1332
    invoke-virtual {v1}, Landroidx/media3/transformer/CompositionPlayerInternal;->endSeek()V

    .line 1334
    iget-boolean p1, v3, Landroidx/media3/transformer/CompositionPlayer;->appNeedsToPrepareCompositionPlayer:Z

    if-eqz p1, :cond_4

    return-void

    .line 1340
    :cond_4
    :goto_2
    iget-object p1, v3, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_5

    .line 1341
    iget-object p1, v3, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;

    .line 1342
    iget-object p1, p1, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->prepare()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1344
    :cond_5
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->updatePlaybackState()V

    .line 1345
    invoke-virtual {p0}, Landroidx/media3/transformer/CompositionPlayer;->invalidateState()V

    return-void
.end method

.method private setPlayWhenReadyInternal(ZZ)V
    .locals 2

    .line 1191
    iget-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionPlayerInternalPrepared:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 1196
    :cond_0
    iget v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 1197
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionPlayerInternal:Landroidx/media3/transformer/CompositionPlayerInternal;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/CompositionPlayerInternal;

    invoke-virtual {v0}, Landroidx/media3/transformer/CompositionPlayerInternal;->startRendering()V

    goto :goto_0

    .line 1199
    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionPlayerInternal:Landroidx/media3/transformer/CompositionPlayerInternal;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/CompositionPlayerInternal;

    invoke-virtual {v0}, Landroidx/media3/transformer/CompositionPlayerInternal;->stopRendering()V

    :goto_0
    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 1203
    :goto_1
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 1204
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;

    iget-object v0, v0, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private setVideoSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 1735
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->removeSurfaceCallbacks()V

    .line 1736
    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 1737
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->internalListener:Landroidx/media3/transformer/CompositionPlayer$InternalListener;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1738
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1739
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1740
    new-instance v1, Landroidx/media3/common/util/Size;

    .line 1742
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroidx/media3/common/util/Size;-><init>(II)V

    iput-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->videoOutputSize:Landroidx/media3/common/util/Size;

    .line 1743
    invoke-direct {p0, v0, v1}, Landroidx/media3/transformer/CompositionPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    return-void

    .line 1745
    :cond_0
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->clearVideoSurfaceInternal()V

    return-void
.end method

.method private setVideoSurfaceInternal(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V
    .locals 0

    .line 1750
    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->displaySurface:Landroid/view/Surface;

    .line 1751
    invoke-virtual {p2}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/media3/transformer/CompositionPlayer;->maybeSetOutputSurfaceInfo(II)V

    return-void
.end method

.method private setVolumeInternal(F)V
    .locals 2

    .line 1173
    iput p1, p0, Landroidx/media3/transformer/CompositionPlayer;->volume:F

    .line 1174
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionPlayerInternal:Landroidx/media3/transformer/CompositionPlayerInternal;

    if-eqz v0, :cond_0

    .line 1175
    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->audioFocusManager:Landroidx/media3/common/audio/AudioFocusManager;

    invoke-virtual {v1}, Landroidx/media3/common/audio/AudioFocusManager;->getVolumeMultiplier()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/media3/transformer/CompositionPlayerInternal;->setVolume(F)V

    :cond_0
    return-void
.end method

.method private shouldPlayWhenReady()Z
    .locals 1

    .line 1249
    iget-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReady:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackSuppressionReason:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static transformSpeedChangingEffects(Landroidx/media3/transformer/Composition;)Landroidx/media3/transformer/Composition;
    .locals 8

    .line 1056
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1057
    iget-object v1, p0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/EditedMediaItemSequence;

    .line 1058
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1059
    iget-object v4, v2, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/transformer/EditedMediaItem;

    .line 1060
    iget-object v6, v5, Landroidx/media3/transformer/EditedMediaItem;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    sget-object v7, Landroidx/media3/common/audio/SpeedProvider;->DEFAULT:Landroidx/media3/common/audio/SpeedProvider;

    if-eq v6, v7, :cond_0

    .line 1062
    invoke-virtual {v5}, Landroidx/media3/transformer/EditedMediaItem;->buildUpon()Landroidx/media3/transformer/EditedMediaItem$Builder;

    move-result-object v6

    new-instance v7, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;

    iget-object v5, v5, Landroidx/media3/transformer/EditedMediaItem;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    invoke-direct {v7, v5}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;-><init>(Landroidx/media3/common/audio/SpeedProvider;)V

    const/4 v5, 0x0

    .line 1063
    invoke-virtual {v6, v7, v5}, Landroidx/media3/transformer/EditedMediaItem$Builder;->setSpeedChangingEffects(Landroidx/media3/common/audio/SpeedChangingAudioProcessor;Landroidx/media3/effect/TimestampAdjustment;)Landroidx/media3/transformer/EditedMediaItem$Builder;

    move-result-object v5

    .line 1065
    invoke-virtual {v5}, Landroidx/media3/transformer/EditedMediaItem$Builder;->build()Landroidx/media3/transformer/EditedMediaItem;

    move-result-object v5

    .line 1061
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1067
    :cond_0
    invoke-static {v5}, Landroidx/media3/transformer/CompositionPlayer;->deactivateSpeedAdjustingVideoEffects(Landroidx/media3/transformer/EditedMediaItem;)Landroidx/media3/transformer/EditedMediaItem;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1070
    :cond_1
    invoke-virtual {v2, v3}, Landroidx/media3/transformer/EditedMediaItemSequence;->copyWithEditedMediaItems(Ljava/util/List;)Landroidx/media3/transformer/EditedMediaItemSequence;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1072
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/transformer/Composition;->buildUpon()Landroidx/media3/transformer/Composition$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/media3/transformer/Composition$Builder;->setSequences(Ljava/util/List;)Landroidx/media3/transformer/Composition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/transformer/Composition$Builder;->build()Landroidx/media3/transformer/Composition;

    move-result-object p0

    return-object p0
.end method

.method private static updatePlayWhenReadyChangeReason(II)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    if-ne p1, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return p1
.end method

.method private updatePlayWhenReadyWithAudioFocus(ZII)V
    .locals 2

    .line 1213
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->audioFocusManager:Landroidx/media3/common/audio/AudioFocusManager;

    iget v1, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackState:I

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/audio/AudioFocusManager;->updateAudioFocus(ZI)I

    move-result v0

    .line 1214
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/media3/transformer/CompositionPlayer;->updatePlayWhenReadyWithAudioFocus(ZIII)V

    return-void
.end method

.method private updatePlayWhenReadyWithAudioFocus(ZIII)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/2addr p1, v0

    .line 1225
    invoke-static {p2, p4}, Landroidx/media3/transformer/CompositionPlayer;->updatePlayWhenReadyChangeReason(II)I

    move-result p4

    .line 1226
    iget-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->scrubbingModeEnabled:Z

    .line 1227
    invoke-static {p2, p3, v0}, Landroidx/media3/transformer/CompositionPlayer;->updatePlaybackSuppressionReason(IIZ)I

    move-result p2

    .line 1229
    iget-boolean p3, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReady:Z

    if-ne p3, p1, :cond_1

    iget p3, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackSuppressionReason:I

    if-ne p3, p2, :cond_1

    iget p3, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReadyChangeReason:I

    if-ne p3, p4, :cond_1

    return-void

    .line 1235
    :cond_1
    iget p3, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackSuppressionReason:I

    .line 1237
    iput-boolean p1, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReady:Z

    .line 1238
    iput p4, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReadyChangeReason:I

    .line 1239
    iput p2, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackSuppressionReason:I

    const/4 p1, 0x4

    if-eq p3, p1, :cond_2

    if-eq p2, p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1245
    :goto_1
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->shouldPlayWhenReady()Z

    move-result p1

    invoke-direct {p0, p1, v1}, Landroidx/media3/transformer/CompositionPlayer;->setPlayWhenReadyInternal(ZZ)V

    return-void
.end method

.method private updatePlaybackState()V
    .locals 11

    .line 1098
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_b

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackException:Landroidx/media3/common/PlaybackException;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1103
    :cond_0
    iget v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackState:I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    .line 1108
    :goto_0
    iget-object v7, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-ge v3, v7, :cond_5

    .line 1109
    iget-object v7, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;

    iget-object v7, v7, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v7}, Landroidx/media3/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result v7

    if-eq v7, v1, :cond_3

    if-eq v7, v9, :cond_2

    if-eq v7, v10, :cond_4

    if-ne v7, v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1124
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1127
    :cond_5
    iget-boolean v3, p0, Landroidx/media3/transformer/CompositionPlayer;->appNeedsToPrepareCompositionPlayer:Z

    if-eqz v3, :cond_6

    .line 1129
    iput v1, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackState:I

    return-void

    :cond_6
    if-gtz v4, :cond_9

    if-lez v5, :cond_7

    goto :goto_2

    .line 1139
    :cond_7
    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v6, v2, :cond_8

    .line 1140
    iput v8, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackState:I

    .line 1141
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionPlayerInternal:Landroidx/media3/transformer/CompositionPlayerInternal;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/CompositionPlayerInternal;

    invoke-virtual {v0}, Landroidx/media3/transformer/CompositionPlayerInternal;->stopRendering()V

    return-void

    .line 1143
    :cond_8
    iput v10, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackState:I

    if-eq v0, v10, :cond_a

    .line 1144
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->shouldPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1145
    invoke-direct {p0, v1, v1}, Landroidx/media3/transformer/CompositionPlayer;->setPlayWhenReadyInternal(ZZ)V

    return-void

    .line 1133
    :cond_9
    :goto_2
    iput v9, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackState:I

    if-ne v0, v10, :cond_a

    .line 1134
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->shouldPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1136
    invoke-direct {p0, v2, v1}, Landroidx/media3/transformer/CompositionPlayer;->setPlayWhenReadyInternal(ZZ)V

    :cond_a
    return-void

    .line 1099
    :cond_b
    :goto_3
    iput v1, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackState:I

    return-void
.end method

.method private static updatePlaybackSuppressionReason(IIZ)I
    .locals 1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eq p1, v0, :cond_1

    return p1

    :cond_1
    if-eqz p2, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static wrapMediaSourceWithCompositionForwardingTimeline(Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 1

    .line 1624
    new-instance v0, Landroidx/media3/transformer/CompositionPlayer$1;

    invoke-direct {v0, p1, p0}, Landroidx/media3/transformer/CompositionPlayer$1;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/transformer/EditedMediaItemSequence;)V

    return-object v0
.end method

.method private static wrapWithVideoEffectsBasedMediaSources(Landroidx/media3/exoplayer/source/MediaSource;Lcom/google/common/collect/ImmutableList;Landroidx/media3/common/MediaItem$ClippingConfiguration;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Effect;",
            ">;",
            "Landroidx/media3/common/MediaItem$ClippingConfiguration;",
            ")",
            "Landroidx/media3/exoplayer/source/MediaSource;"
        }
    .end annotation

    .line 1610
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Effect;

    .line 1611
    instance-of v1, v0, Landroidx/media3/transformer/InactiveTimestampAdjustment;

    if-eqz v1, :cond_0

    .line 1612
    new-instance v1, Landroidx/media3/transformer/SpeedChangingMediaSource;

    check-cast v0, Landroidx/media3/transformer/InactiveTimestampAdjustment;

    iget-object v0, v0, Landroidx/media3/transformer/InactiveTimestampAdjustment;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    invoke-direct {v1, p0, v0, p2}, Landroidx/media3/transformer/SpeedChangingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/audio/SpeedProvider;Landroidx/media3/common/MediaItem$ClippingConfiguration;)V

    move-object p0, v1

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public addAnalyticsListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 1

    .line 703
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->addListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

.method public experimentalRedrawLastFrame()V
    .locals 2

    .line 777
    iget-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->enableReplayableCache:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 778
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackThreadHandler:Landroidx/media3/common/util/HandlerWrapper;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    if-nez v1, :cond_0

    goto :goto_0

    .line 782
    :cond_0
    new-instance v1, Landroidx/media3/transformer/CompositionPlayer$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Landroidx/media3/transformer/CompositionPlayer$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/transformer/CompositionPlayer;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getClock()Landroidx/media3/common/util/Clock;
    .locals 1

    .line 809
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->clock:Landroidx/media3/common/util/Clock;

    return-object v0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 1

    .line 800
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getState()Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 4

    .line 817
    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    invoke-direct {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;-><init>()V

    sget-object v1, Landroidx/media3/transformer/CompositionPlayer;->AVAILABLE_COMMANDS:Landroidx/media3/common/Player$Commands;

    .line 819
    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setAvailableCommands(Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackState:I

    .line 820
    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackException:Landroidx/media3/common/PlaybackException;

    .line 821
    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlayerError(Landroidx/media3/common/PlaybackException;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReady:Z

    iget v2, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReadyChangeReason:I

    .line 822
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlayWhenReady(ZI)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/transformer/CompositionPlayer;->repeatMode:I

    .line 823
    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setRepeatMode(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/transformer/CompositionPlayer;->volume:F

    .line 824
    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setVolume(F)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->positionSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    .line 825
    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setContentPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->bufferedPositionSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    .line 826
    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setContentBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->totalBufferedDurationSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    .line 827
    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 828
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->getRenderedFirstFrameAndReset()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setNewlyRenderedFirstFrame(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackSuppressionReason:I

    .line 829
    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackSuppressionReason(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 830
    iget-boolean v1, p0, Landroidx/media3/transformer/CompositionPlayer;->repeatingCompositionSeekInProgress:Z

    if-eqz v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    .line 831
    invoke-virtual {v0, v3, v1, v2}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPositionDiscontinuity(IJ)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 832
    iput-boolean v3, p0, Landroidx/media3/transformer/CompositionPlayer;->repeatingCompositionSeekInProgress:Z

    .line 834
    :cond_0
    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->playlist:Lcom/google/common/collect/ImmutableList;

    if-eqz v1, :cond_1

    .line 837
    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaylist(Ljava/util/List;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 839
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method protected handleClearVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 935
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->videoOutput:Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    const/4 p1, 0x0

    .line 937
    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->videoOutput:Ljava/lang/Object;

    .line 938
    iget-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->composition:Landroidx/media3/transformer/Composition;

    if-nez p1, :cond_0

    .line 939
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 941
    :cond_0
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->removeSurfaceCallbacks()V

    .line 942
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->clearVideoSurfaceInternal()V

    .line 943
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method protected handlePrepare()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 844
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->composition:Landroidx/media3/transformer/Composition;

    const-string v1, "No composition set"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    iget v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 848
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 851
    :goto_0
    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 852
    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;

    iget-object v2, v2, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2}, Landroidx/media3/exoplayer/ExoPlayer;->prepare()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 854
    :cond_1
    iput-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->appNeedsToPrepareCompositionPlayer:Z

    .line 856
    iget-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReady:Z

    iget v1, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackSuppressionReason:I

    iget v2, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReadyChangeReason:I

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/transformer/CompositionPlayer;->updatePlayWhenReadyWithAudioFocus(ZII)V

    .line 859
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->updatePlaybackState()V

    .line 860
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method protected handleRelease()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 890
    const-string v0, "Release"

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-string v3, "CompositionPlayer"

    invoke-static {v3, v0, v1, v2}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 892
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->composition:Landroidx/media3/transformer/Composition;

    if-nez v0, :cond_0

    .line 893
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 896
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackThread:Landroid/os/HandlerThread;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const/4 v0, 0x0

    .line 898
    :goto_0
    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 901
    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    if-ge v0, v1, :cond_1

    .line 899
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;

    iget-object v1, v1, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 901
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 902
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionPlayerInternal:Landroidx/media3/transformer/CompositionPlayerInternal;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/CompositionPlayerInternal;

    invoke-virtual {v0}, Landroidx/media3/transformer/CompositionPlayerInternal;->release()Z

    move-result v0

    .line 903
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->removeSurfaceCallbacks()V

    .line 906
    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->packetConsumer:Landroidx/media3/effect/PacketConsumer;

    if-eqz v1, :cond_2

    .line 907
    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    invoke-static {v1, v2}, Landroidx/media3/effect/PacketConsumerUtil;->release(Landroidx/media3/effect/PacketConsumer;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    goto :goto_1

    .line 909
    :cond_2
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 912
    :goto_1
    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionInternalListenerHandler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroidx/media3/common/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 913
    iput-object v3, p0, Landroidx/media3/transformer/CompositionPlayer;->displaySurface:Landroid/view/Surface;

    .line 914
    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackThread:Landroid/os/HandlerThread;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 915
    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v2, v3}, Landroidx/media3/common/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-nez v0, :cond_3

    .line 919
    new-instance v0, Landroidx/media3/common/PlaybackException;

    const-string v2, "InternalPlayer release timeout"

    const/16 v4, 0x3eb

    invoke-direct {v0, v2, v3, v4}, Landroidx/media3/common/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackException:Landroidx/media3/common/PlaybackException;

    .line 924
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->updatePlaybackState()V

    .line 926
    :cond_3
    iget-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->shouldShutdownExecutorService:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    .line 927
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 929
    :cond_4
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {v0}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->release()V

    return-object v1
.end method

.method protected handleSeek(IJI)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 975
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->resetLivePositionSuppliers()V

    .line 981
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    .line 976
    const-string v0, "CompositionPlayer"

    const-string v1, "SeekTo"

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-string v4, "positionMs=%d"

    invoke-static/range {v0 .. v5}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V

    .line 982
    iget-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionPlayerInternal:Landroidx/media3/transformer/CompositionPlayerInternal;

    .line 983
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/transformer/CompositionPlayerInternal;

    .line 984
    invoke-virtual {p1, p2, p3}, Landroidx/media3/transformer/CompositionPlayerInternal;->startSeek(J)V

    const/4 p4, 0x0

    .line 985
    :goto_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_0

    .line 986
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;

    iget-object v0, v0, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, p2, p3}, Landroidx/media3/exoplayer/ExoPlayer;->seekTo(J)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 988
    :cond_0
    iget-object p2, p0, Landroidx/media3/transformer/CompositionPlayer;->packetConsumer:Landroidx/media3/effect/PacketConsumer;

    if-eqz p2, :cond_1

    .line 989
    iget-object p2, p0, Landroidx/media3/transformer/CompositionPlayer;->videoPacketReleaseControl:Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;

    invoke-virtual {p2}, Landroidx/media3/transformer/CompositionVideoPacketReleaseControl;->reset()V

    .line 990
    iget-object p2, p0, Landroidx/media3/transformer/CompositionPlayer;->frameAggregator:Landroidx/media3/transformer/FrameAggregator;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/transformer/FrameAggregator;

    invoke-virtual {p2}, Landroidx/media3/transformer/FrameAggregator;->releaseAllFrames()V

    .line 992
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/transformer/CompositionPlayerInternal;->endSeek()V

    .line 993
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method protected handleSetAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/AudioAttributes;",
            "Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 999
    invoke-direct {p0, p1, p2}, Landroidx/media3/transformer/CompositionPlayer;->setAudioAttributesInternal(Landroidx/media3/common/AudioAttributes;Z)V

    .line 1000
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method protected handleSetPlayWhenReady(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 865
    iget v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackSuppressionReason:I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/transformer/CompositionPlayer;->updatePlayWhenReadyWithAudioFocus(ZII)V

    .line 867
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method protected handleSetRepeatMode(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 873
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 874
    iput p1, p0, Landroidx/media3/transformer/CompositionPlayer;->repeatMode:I

    .line 875
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method protected handleSetVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 948
    const-string v4, "%s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "CompositionPlayer"

    const-string v1, "SetVideoOutput"

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static/range {v0 .. v5}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V

    .line 954
    instance-of v0, p1, Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 955
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 956
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ". Use CompositionPlayer.setVideoSurface() for Surface output."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 958
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->videoOutput:Ljava/lang/Object;

    .line 959
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->maybeSetVideoOutput()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method protected handleSetVolume(FI)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FI)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 965
    invoke-static {p1, p2, v0}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    move-result p1

    .line 966
    iget p2, p0, Landroidx/media3/transformer/CompositionPlayer;->volume:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_0

    .line 967
    invoke-direct {p0, p1}, Landroidx/media3/transformer/CompositionPlayer;->setVolumeInternal(F)V

    .line 969
    :cond_0
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method protected handleStop()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 880
    :goto_0
    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 881
    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;

    iget-object v1, v1, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->stop()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 883
    iput-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->appNeedsToPrepareCompositionPlayer:Z

    .line 884
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->updatePlaybackState()V

    .line 885
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public isScrubbingModeEnabled()Z
    .locals 1

    .line 767
    iget-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->scrubbingModeEnabled:Z

    return v0
.end method

.method synthetic lambda$experimentalRedrawLastFrame$0$androidx-media3-transformer-CompositionPlayer()V
    .locals 2

    .line 782
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->getSink(I)Landroidx/media3/exoplayer/video/VideoSink;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->redraw()V

    return-void
.end method

.method public removeAnalyticsListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 1

    .line 712
    invoke-virtual {p0}, Landroidx/media3/transformer/CompositionPlayer;->verifyApplicationThread()V

    .line 713
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->removeListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

.method public setComposition(Landroidx/media3/transformer/Composition;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 656
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/transformer/CompositionPlayer;->setComposition(Landroidx/media3/transformer/Composition;J)V

    return-void
.end method

.method public setComposition(Landroidx/media3/transformer/Composition;J)V
    .locals 6

    .line 668
    invoke-virtual {p0}, Landroidx/media3/transformer/CompositionPlayer;->verifyApplicationThread()V

    .line 669
    iget-object v0, p1, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 670
    :goto_0
    const-string v2, "Invalid start position %s"

    invoke-static {v0, v2, p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 672
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer;->compositionContainsIllegalSpeedChangingEffects(Landroidx/media3/transformer/Composition;)Z

    move-result v0

    xor-int/2addr v0, v1

    const-string v2, "CompositionPlayer only allows speed changing effects created from Effects#createExperimentalSpeedChangingEffect() placed as first effects within an EditedMediaItem."

    .line 671
    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 680
    invoke-virtual {p1}, Landroidx/media3/transformer/Composition;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 676
    const-string v4, "CompositionPlayer"

    const-string v5, "SetComposition"

    invoke-static {v4, v5, v2, v3, v0}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V

    .line 682
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer;->transformSpeedChangingEffects(Landroidx/media3/transformer/Composition;)Landroidx/media3/transformer/Composition;

    move-result-object p1

    .line 684
    iget-object v0, p1, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->videoGraphFactory:Landroidx/media3/common/VideoGraph$Factory;

    invoke-interface {v0}, Landroidx/media3/common/VideoGraph$Factory;->supportsMultipleInputs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 685
    const-string v0, "Setting multi-sequence Composition with single input video graph."

    invoke-static {v4, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/transformer/CompositionPlayer;->setCompositionInternal(Landroidx/media3/transformer/Composition;J)V

    .line 691
    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->composition:Landroidx/media3/transformer/Composition;

    .line 692
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->maybeSetVideoOutput()Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public setScrubbingModeEnabled(Z)V
    .locals 3

    .line 728
    invoke-virtual {p0}, Landroidx/media3/transformer/CompositionPlayer;->verifyApplicationThread()V

    .line 729
    iget-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->scrubbingModeEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 732
    :cond_0
    iput-boolean p1, p0, Landroidx/media3/transformer/CompositionPlayer;->scrubbingModeEnabled:Z

    if-eqz p1, :cond_1

    .line 734
    iget-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReady:Z

    iput-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReadyBeforeScrubbingEnabled:Z

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 737
    :goto_0
    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 738
    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;

    iget-object v2, v2, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2, p1}, Landroidx/media3/exoplayer/ExoPlayer;->setScrubbingModeEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 742
    iget-boolean p1, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReady:Z

    const/4 v0, 0x4

    iget v1, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReadyChangeReason:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/transformer/CompositionPlayer;->updatePlayWhenReadyWithAudioFocus(ZII)V

    goto :goto_4

    .line 749
    :cond_3
    iget-boolean p1, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReadyBeforeScrubbingEnabled:Z

    const/4 v1, 0x1

    if-nez p1, :cond_5

    iget-boolean v2, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReady:Z

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v1

    :goto_2
    if-eqz p1, :cond_6

    goto :goto_3

    .line 754
    :cond_6
    iget v1, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReadyChangeReason:I

    .line 749
    :goto_3
    invoke-direct {p0, v2, v0, v1}, Landroidx/media3/transformer/CompositionPlayer;->updatePlayWhenReadyWithAudioFocus(ZII)V

    .line 758
    :goto_4
    invoke-virtual {p0}, Landroidx/media3/transformer/CompositionPlayer;->invalidateState()V

    return-void
.end method

.method public setVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .locals 2

    .line 1005
    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->videoFrameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 1006
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1009
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playerHolders:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;

    iget-object v0, v0, Landroidx/media3/transformer/CompositionPlayer$SequencePlayerHolder;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->setVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V

    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V
    .locals 0

    .line 787
    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->videoOutput:Ljava/lang/Object;

    .line 788
    iput-object p2, p0, Landroidx/media3/transformer/CompositionPlayer;->videoOutputSize:Landroidx/media3/common/util/Size;

    .line 789
    invoke-direct {p0, p1, p2}, Landroidx/media3/transformer/CompositionPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    return-void
.end method
