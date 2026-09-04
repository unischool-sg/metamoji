.class public final Landroidx/media3/transformer/ExoPlayerAssetLoader;
.super Ljava/lang/Object;
.source "ExoPlayerAssetLoader.java"

# interfaces
.implements Landroidx/media3/transformer/AssetLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;,
        Landroidx/media3/transformer/ExoPlayerAssetLoader$PlayerListener;,
        Landroidx/media3/transformer/ExoPlayerAssetLoader$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExoPlayerAssetLoader"


# instance fields
.field private final context:Landroid/content/Context;

.field private final decoderFactory:Landroidx/media3/transformer/CapturingDecoderFactory;

.field private final editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

.field private final player:Landroidx/media3/exoplayer/ExoPlayer;

.field private progressState:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/transformer/Codec$DecoderFactory;ILandroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/common/util/Clock;Landroidx/media3/exoplayer/trackselection/TrackSelector$Factory;Landroid/media/metrics/LogSessionId;Landroidx/media3/exoplayer/LoadControl;)V
    .locals 13

    move-object/from16 v1, p4

    move-object/from16 v2, p8

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader;->context:Landroid/content/Context;

    .line 268
    iput-object p2, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    .line 269
    new-instance v7, Landroidx/media3/transformer/CapturingDecoderFactory;

    invoke-direct {v7, v1}, Landroidx/media3/transformer/CapturingDecoderFactory;-><init>(Landroidx/media3/transformer/Codec$DecoderFactory;)V

    iput-object v7, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader;->decoderFactory:Landroidx/media3/transformer/CapturingDecoderFactory;

    move-object/from16 v3, p9

    .line 271
    invoke-interface {v3, p1}, Landroidx/media3/exoplayer/trackselection/TrackSelector$Factory;->createTrackSelector(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/TrackSelector;

    move-result-object v11

    .line 272
    new-instance v12, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    new-instance v3, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;

    iget-boolean v4, p2, Landroidx/media3/transformer/EditedMediaItem;->removeAudio:Z

    iget-boolean v5, p2, Landroidx/media3/transformer/EditedMediaItem;->removeVideo:Z

    iget-boolean v6, p2, Landroidx/media3/transformer/EditedMediaItem;->flattenForSlowMotion:Z

    move/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p10

    invoke-direct/range {v3 .. v10}, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;-><init>(ZZZLandroidx/media3/transformer/Codec$DecoderFactory;ILandroidx/media3/transformer/AssetLoader$Listener;Landroid/media/metrics/LogSessionId;)V

    invoke-direct {v12, p1, v3}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;)V

    move-object/from16 p1, p3

    .line 283
    invoke-virtual {v12, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setMediaSourceFactory(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p1

    .line 284
    invoke-virtual {p1, v11}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setTrackSelector(Landroidx/media3/exoplayer/trackselection/TrackSelector;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p1

    move-object/from16 v0, p11

    .line 285
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setLoadControl(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p1

    move-object/from16 v0, p6

    .line 286
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setLooper(Landroid/os/Looper;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p1

    const v0, 0x7fffffff

    .line 287
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setStuckBufferingDetectionTimeoutMs(I)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p1

    .line 288
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setStuckPlayingDetectionTimeoutMs(I)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p1

    .line 289
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setStuckPlayingNotEndingTimeoutMs(I)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 290
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setUsePlatformDiagnostics(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p1

    .line 291
    instance-of v3, v1, Landroidx/media3/transformer/DefaultDecoderFactory;

    if-eqz v3, :cond_0

    .line 292
    check-cast v1, Landroidx/media3/transformer/DefaultDecoderFactory;

    .line 293
    invoke-virtual {v1}, Landroidx/media3/transformer/DefaultDecoderFactory;->isDynamicSchedulingEnabled()Z

    move-result v1

    .line 292
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->experimentalSetDynamicSchedulingEnabled(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    .line 295
    :cond_0
    sget-object v1, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    if-eq v2, v1, :cond_1

    .line 299
    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setClock(Landroidx/media3/common/util/Clock;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    .line 301
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 302
    new-instance v1, Landroidx/media3/transformer/ExoPlayerAssetLoader$PlayerListener;

    move-object/from16 v9, p7

    invoke-direct {v1, p0, v9}, Landroidx/media3/transformer/ExoPlayerAssetLoader$PlayerListener;-><init>(Landroidx/media3/transformer/ExoPlayerAssetLoader;Landroidx/media3/transformer/AssetLoader$Listener;)V

    invoke-interface {p1, v1}, Landroidx/media3/exoplayer/ExoPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 304
    iput v0, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader;->progressState:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/transformer/Codec$DecoderFactory;ILandroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/common/util/Clock;Landroidx/media3/exoplayer/trackselection/TrackSelector$Factory;Landroid/media/metrics/LogSessionId;Landroidx/media3/exoplayer/LoadControl;Landroidx/media3/transformer/ExoPlayerAssetLoader$1;)V
    .locals 0

    .line 68
    invoke-direct/range {p0 .. p11}, Landroidx/media3/transformer/ExoPlayerAssetLoader;-><init>(Landroid/content/Context;Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/transformer/Codec$DecoderFactory;ILandroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/common/util/Clock;Landroidx/media3/exoplayer/trackselection/TrackSelector$Factory;Landroid/media/metrics/LogSessionId;Landroidx/media3/exoplayer/LoadControl;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/transformer/ExoPlayerAssetLoader;)I
    .locals 0

    .line 68
    iget p0, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader;->progressState:I

    return p0
.end method

.method static synthetic access$102(Landroidx/media3/transformer/ExoPlayerAssetLoader;I)I
    .locals 0

    .line 68
    iput p1, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader;->progressState:I

    return p1
.end method

.method static synthetic access$200(Landroidx/media3/common/Tracks;)V
    .locals 0

    .line 68
    invoke-static {p0}, Landroidx/media3/transformer/ExoPlayerAssetLoader;->maybeWarnUnsupportedTrackTypes(Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/media3/transformer/ExoPlayerAssetLoader;)Landroidx/media3/exoplayer/ExoPlayer;
    .locals 0

    .line 68
    iget-object p0, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/media3/transformer/ExoPlayerAssetLoader;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/media3/transformer/ExoPlayerAssetLoader;)Landroidx/media3/transformer/EditedMediaItem;
    .locals 0

    .line 68
    iget-object p0, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    return-object p0
.end method

.method private static maybeWarnUnsupportedTrackTypes(Landroidx/media3/common/Tracks;)V
    .locals 4

    const/4 v0, 0x0

    .line 487
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 488
    invoke-virtual {p0}, Landroidx/media3/common/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Tracks$Group;

    invoke-virtual {v1}, Landroidx/media3/common/Tracks$Group;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 492
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported track type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExoPlayerAssetLoader"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getDecoderNames()Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 328
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 329
    iget-object v1, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader;->decoderFactory:Landroidx/media3/transformer/CapturingDecoderFactory;

    invoke-virtual {v1}, Landroidx/media3/transformer/CapturingDecoderFactory;->getAudioDecoderName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 331
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 333
    :cond_0
    iget-object v1, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader;->decoderFactory:Landroidx/media3/transformer/CapturingDecoderFactory;

    invoke-virtual {v1}, Landroidx/media3/transformer/CapturingDecoderFactory;->getVideoDecoderName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 335
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 337
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getProgress(Landroidx/media3/transformer/ProgressHolder;)I
    .locals 4

    .line 316
    iget v0, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader;->progressState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 317
    iget-object v0, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v0

    .line 320
    iget-object v2, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 321
    invoke-static {v2, v3, v0, v1}, Landroidx/media3/common/util/Util;->percentInt(JJ)I

    move-result v0

    iput v0, p1, Landroidx/media3/transformer/ProgressHolder;->progress:I

    .line 323
    :cond_0
    iget p1, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader;->progressState:I

    return p1
.end method

.method public release()V
    .locals 1

    .line 342
    iget-object v0, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    const/4 v0, 0x0

    .line 343
    iput v0, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader;->progressState:I

    return-void
.end method

.method public start()V
    .locals 2

    .line 309
    iget-object v0, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v1, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-object v1, v1, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaItem(Landroidx/media3/common/MediaItem;)V

    .line 310
    iget-object v0, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->prepare()V

    const/4 v0, 0x1

    .line 311
    iput v0, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader;->progressState:I

    return-void
.end method
