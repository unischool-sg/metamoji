.class public final Landroidx/media3/inspector/FrameExtractorInternal;
.super Ljava/lang/Object;
.source "FrameExtractorInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;,
        Landroidx/media3/inspector/FrameExtractorInternal$PlayerListener;,
        Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;,
        Landroidx/media3/inspector/FrameExtractorInternal$FrameReader;,
        Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static instance:Landroidx/media3/inspector/FrameExtractorInternal;


# instance fields
.field private final activeTaskCompleter:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroidx/media3/inspector/FrameExtractor$Frame;",
            ">;>;"
        }
    .end annotation
.end field

.field private currentExtractHdrFrames:Z

.field private currentGlObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

.field private currentMediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

.field private final executionSequencer:Lcom/google/common/util/concurrent/ExecutionSequencer;

.field private final extractedFrameNeedsRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastSeekDedupeFrame:Landroidx/media3/inspector/FrameExtractor$Frame;

.field private player:Landroidx/media3/exoplayer/ExoPlayer;

.field private final playerHandler:Landroid/os/Handler;

.field private final referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private thumbnailPresentationTimeMs:J


# direct methods
.method public static synthetic $r8$lambda$mCEi04OcFi8gu0FD463twzV2nG8(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/inspector/FrameExtractorInternal;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 187
    invoke-static {}, Lcom/google/common/util/concurrent/ExecutionSequencer;->create()Lcom/google/common/util/concurrent/ExecutionSequencer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->executionSequencer:Lcom/google/common/util/concurrent/ExecutionSequencer;

    .line 188
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->extractedFrameNeedsRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 189
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->activeTaskCompleter:Ljava/util/concurrent/atomic/AtomicReference;

    .line 190
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->playerHandler:Landroid/os/Handler;

    .line 191
    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->DEFAULT:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    iput-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->currentMediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 192
    iput-wide v0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->thumbnailPresentationTimeMs:J

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/inspector/FrameExtractorInternal;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 108
    iget-object p0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->activeTaskCompleter:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/media3/inspector/FrameExtractorInternal;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 108
    iget-object p0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->extractedFrameNeedsRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/media3/inspector/FrameExtractorInternal;)Landroidx/media3/inspector/FrameExtractor$Frame;
    .locals 0

    .line 108
    iget-object p0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->lastSeekDedupeFrame:Landroidx/media3/inspector/FrameExtractor$Frame;

    return-object p0
.end method

.method static synthetic access$302(Landroidx/media3/inspector/FrameExtractorInternal;Landroidx/media3/inspector/FrameExtractor$Frame;)Landroidx/media3/inspector/FrameExtractor$Frame;
    .locals 0

    .line 108
    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal;->lastSeekDedupeFrame:Landroidx/media3/inspector/FrameExtractor$Frame;

    return-object p1
.end method

.method static synthetic access$502(Landroidx/media3/inspector/FrameExtractorInternal;J)J
    .locals 0

    .line 108
    iput-wide p1, p0, Landroidx/media3/inspector/FrameExtractorInternal;->thumbnailPresentationTimeMs:J

    return-wide p1
.end method

.method private static buildVideoEffects(Ljava/util/List;Landroidx/media3/inspector/FrameExtractorInternal$FrameReader;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;",
            "Landroidx/media3/inspector/FrameExtractorInternal$FrameReader;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Effect;",
            ">;"
        }
    .end annotation

    .line 383
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 384
    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 385
    new-instance p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda5;

    invoke-direct {p0}, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 392
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 393
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private ensurePlayerInitialized(Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;Z)V
    .locals 3

    if-eqz p2, :cond_1

    .line 340
    iget-object p2, p0, Landroidx/media3/inspector/FrameExtractorInternal;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p2, :cond_0

    .line 341
    invoke-interface {p2}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    .line 344
    :cond_0
    iget-object p2, p1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    iput-object p2, p0, Landroidx/media3/inspector/FrameExtractorInternal;->currentMediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 345
    iget-boolean p2, p1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->extractHdrFrames:Z

    iput-boolean p2, p0, Landroidx/media3/inspector/FrameExtractorInternal;->currentExtractHdrFrames:Z

    .line 346
    iget-object p2, p1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    iput-object p2, p0, Landroidx/media3/inspector/FrameExtractorInternal;->currentGlObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    .line 348
    new-instance p2, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    iget-object v0, p1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->context:Landroid/content/Context;

    new-instance v1, Landroidx/media3/extractor/DefaultExtractorsFactory;

    invoke-direct {v1}, Landroidx/media3/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {p2, v0, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Landroidx/media3/extractor/ExtractorsFactory;)V

    const/4 v0, 0x3

    .line 350
    invoke-virtual {p2, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->experimentalSetCodecsToParseWithinGopSampleDependencies(I)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    move-result-object p2

    .line 353
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    iget-object v1, p1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->context:Landroid/content/Context;

    new-instance v2, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1}, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/inspector/FrameExtractorInternal;Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;)V

    invoke-direct {v0, v1, v2, p2}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/exoplayer/source/MediaSource$Factory;)V

    iget-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal;->playerHandler:Landroid/os/Handler;

    .line 373
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setLooper(Landroid/os/Looper;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 374
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->experimentalSetDynamicSchedulingEnabled(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p1

    .line 375
    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 376
    new-instance p2, Landroidx/media3/inspector/FrameExtractorInternal$PlayerListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Landroidx/media3/inspector/FrameExtractorInternal$PlayerListener;-><init>(Landroidx/media3/inspector/FrameExtractorInternal;Landroidx/media3/inspector/FrameExtractorInternal$1;)V

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/ExoPlayer;->addAnalyticsListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    .line 377
    iget-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    :cond_1
    return-void
.end method

.method public static getInstance()Landroidx/media3/inspector/FrameExtractorInternal;
    .locals 2

    .line 196
    sget-object v0, Landroidx/media3/inspector/FrameExtractorInternal;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    sget-object v1, Landroidx/media3/inspector/FrameExtractorInternal;->instance:Landroidx/media3/inspector/FrameExtractorInternal;

    if-nez v1, :cond_0

    .line 198
    new-instance v1, Landroidx/media3/inspector/FrameExtractorInternal;

    invoke-direct {v1}, Landroidx/media3/inspector/FrameExtractorInternal;-><init>()V

    sput-object v1, Landroidx/media3/inspector/FrameExtractorInternal;->instance:Landroidx/media3/inspector/FrameExtractorInternal;

    .line 200
    :cond_0
    sget-object v1, Landroidx/media3/inspector/FrameExtractorInternal;->instance:Landroidx/media3/inspector/FrameExtractorInternal;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 201
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getThumbnailPresentationTimeMs()J
    .locals 4

    .line 302
    iget-wide v0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->thumbnailPresentationTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static synthetic lambda$buildVideoEffects$7(J)Landroid/graphics/Matrix;
    .locals 1

    .line 388
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    .line 389
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    return-object p0
.end method

.method private processTask(Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;ZZ)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;",
            "ZZ)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/inspector/FrameExtractor$Frame;",
            ">;"
        }
    .end annotation

    .line 307
    new-instance v0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/inspector/FrameExtractorInternal;Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;ZZ)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addReference()V
    .locals 1

    .line 206
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public getDecoderCounters()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/exoplayer/DecoderCounters;",
            ">;"
        }
    .end annotation

    .line 286
    new-instance v0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/inspector/FrameExtractorInternal;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$ensurePlayerInitialized$6$androidx-media3-inspector-FrameExtractorInternal(Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/text/TextOutput;Landroidx/media3/exoplayer/metadata/MetadataOutput;)[Landroidx/media3/exoplayer/Renderer;
    .locals 10

    .line 0
    const/4 p2, 0x1

    .line 361
    new-array p4, p2, [Landroidx/media3/exoplayer/Renderer;

    new-instance v0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;

    iget-object v1, p1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->context:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media3/inspector/FrameExtractorInternal;->playerHandler:Landroid/os/Handler;

    iget-object v3, p1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    iget-boolean v4, p1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->extractHdrFrames:Z

    xor-int/lit8 v5, v4, 0x1

    iget-object v6, p1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    iget-object v7, p0, Landroidx/media3/inspector/FrameExtractorInternal;->extractedFrameNeedsRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x0

    move-object v8, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v9}, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractorRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/exoplayer/video/VideoRendererEventListener;ZLandroidx/media3/common/GlObjectsProvider;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/media3/inspector/FrameExtractorInternal;Landroidx/media3/inspector/FrameExtractorInternal$1;)V

    const/4 p1, 0x0

    aput-object v0, p4, p1

    return-object p4
.end method

.method synthetic lambda$getDecoderCounters$3$androidx-media3-inspector-FrameExtractorInternal(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getVideoDecoderCounters()Landroidx/media3/exoplayer/DecoderCounters;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 293
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-object v1
.end method

.method synthetic lambda$getDecoderCounters$4$androidx-media3-inspector-FrameExtractorInternal(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->executionSequencer:Lcom/google/common/util/concurrent/ExecutionSequencer;

    new-instance v1, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/inspector/FrameExtractorInternal;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    iget-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal;->playerHandler:Landroid/os/Handler;

    .line 296
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda3;-><init>(Landroid/os/Handler;)V

    .line 289
    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/ExecutionSequencer;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 297
    const-string p1, "FrameExtractorInternal.getDecoderCounters"

    return-object p1
.end method

.method synthetic lambda$processTask$5$androidx-media3-inspector-FrameExtractorInternal(Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;ZZLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->activeTaskCompleter:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p4}, Landroidx/lifecycle/AtomicReference$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Another task is already active"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 311
    const-string p1, "FrameExtractorInternal.processTask - conflict"

    return-object p1

    .line 314
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/media3/inspector/FrameExtractorInternal;->ensurePlayerInitialized(Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;Z)V

    .line 316
    new-instance p2, Landroidx/media3/inspector/FrameExtractorInternal$FrameReader;

    invoke-direct {p2, p0, v1}, Landroidx/media3/inspector/FrameExtractorInternal$FrameReader;-><init>(Landroidx/media3/inspector/FrameExtractorInternal;Landroidx/media3/inspector/FrameExtractorInternal$1;)V

    .line 317
    iget-object p4, p1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->effects:Ljava/util/List;

    invoke-static {p4, p2}, Landroidx/media3/inspector/FrameExtractorInternal;->buildVideoEffects(Ljava/util/List;Landroidx/media3/inspector/FrameExtractorInternal$FrameReader;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    .line 319
    iget-object p4, p0, Landroidx/media3/inspector/FrameExtractorInternal;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p3, :cond_1

    .line 321
    iput-object v1, p0, Landroidx/media3/inspector/FrameExtractorInternal;->lastSeekDedupeFrame:Landroidx/media3/inspector/FrameExtractor$Frame;

    .line 322
    iget-object p3, p0, Landroidx/media3/inspector/FrameExtractorInternal;->extractedFrameNeedsRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 323
    iput-wide v0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->thumbnailPresentationTimeMs:J

    .line 324
    invoke-interface {p4, p2}, Landroidx/media3/exoplayer/ExoPlayer;->setVideoEffects(Ljava/util/List;)V

    .line 325
    iget-object p2, p1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-interface {p4, p2}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaItem(Landroidx/media3/common/MediaItem;)V

    .line 326
    iget-object p1, p1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    invoke-interface {p4, p1}, Landroidx/media3/exoplayer/ExoPlayer;->setSeekParameters(Landroidx/media3/exoplayer/SeekParameters;)V

    .line 327
    invoke-interface {p4}, Landroidx/media3/exoplayer/ExoPlayer;->prepare()V

    goto :goto_0

    .line 329
    :cond_1
    iget-object p3, p0, Landroidx/media3/inspector/FrameExtractorInternal;->extractedFrameNeedsRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 330
    invoke-interface {p4, p2}, Landroidx/media3/exoplayer/ExoPlayer;->setVideoEffects(Ljava/util/List;)V

    .line 331
    iget-object p2, p1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    invoke-interface {p4, p2}, Landroidx/media3/exoplayer/ExoPlayer;->setSeekParameters(Landroidx/media3/exoplayer/SeekParameters;)V

    .line 332
    iget-wide p1, p1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->positionMs:J

    invoke-interface {p4, p1, p2}, Landroidx/media3/exoplayer/ExoPlayer;->seekTo(J)V

    .line 334
    :goto_0
    const-string p1, "FrameExtractorInternal.processTask - scheduled"

    return-object p1
.end method

.method synthetic lambda$releaseReference$0$androidx-media3-inspector-FrameExtractorInternal()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    .line 216
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    .line 217
    iput-object v1, p0, Landroidx/media3/inspector/FrameExtractorInternal;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 219
    :cond_0
    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->DEFAULT:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    iput-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->currentMediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    const/4 v0, 0x0

    .line 220
    iput-boolean v0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->currentExtractHdrFrames:Z

    .line 221
    iput-object v1, p0, Landroidx/media3/inspector/FrameExtractorInternal;->currentGlObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    .line 222
    iput-object v1, p0, Landroidx/media3/inspector/FrameExtractorInternal;->lastSeekDedupeFrame:Landroidx/media3/inspector/FrameExtractor$Frame;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 223
    iput-wide v2, p0, Landroidx/media3/inspector/FrameExtractorInternal;->thumbnailPresentationTimeMs:J

    :cond_1
    return-object v1
.end method

.method synthetic lambda$submitTask$1$androidx-media3-inspector-FrameExtractorInternal(ZLandroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;Landroidx/media3/inspector/FrameExtractor$Frame;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 0
    if-eqz p1, :cond_0

    .line 263
    invoke-direct {p0}, Landroidx/media3/inspector/FrameExtractorInternal;->getThumbnailPresentationTimeMs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p2, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->positionMs:J

    .line 264
    :goto_0
    iget-wide v2, p3, Landroidx/media3/inspector/FrameExtractor$Frame;->presentationTimeMs:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_1

    .line 265
    invoke-static {p3}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 268
    :cond_1
    invoke-virtual {p2, v0, v1}, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->copyWithPositionMs(J)Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;

    move-result-object p1

    const/4 p2, 0x0

    .line 267
    invoke-direct {p0, p1, p2, p2}, Landroidx/media3/inspector/FrameExtractorInternal;->processTask(Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;ZZ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$submitTask$2$androidx-media3-inspector-FrameExtractorInternal(Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->currentExtractHdrFrames:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->extractHdrFrames:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 242
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getPlayerError()Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    iget-object v3, p0, Landroidx/media3/inspector/FrameExtractorInternal;->currentMediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    if-ne v0, v3, :cond_1

    iget-object v0, p1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    iget-object v3, p0, Landroidx/media3/inspector/FrameExtractorInternal;->currentGlObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_3

    .line 246
    iget-object v3, p1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v4, p0, Landroidx/media3/inspector/FrameExtractorInternal;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 248
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v4}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v2

    .line 250
    :goto_3
    iget-wide v4, p1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->positionMs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    move v1, v2

    :cond_4
    if-eqz v3, :cond_5

    const-wide/16 v3, 0x0

    .line 255
    invoke-virtual {p1, v3, v4}, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->copyWithPositionMs(J)Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;

    move-result-object v3

    .line 254
    invoke-direct {p0, v3, v0, v2}, Landroidx/media3/inspector/FrameExtractorInternal;->processTask(Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;ZZ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 259
    new-instance v2, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1, p1}, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/inspector/FrameExtractorInternal;ZLandroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;)V

    iget-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal;->playerHandler:Landroid/os/Handler;

    .line 273
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda3;-><init>(Landroid/os/Handler;)V

    .line 259
    invoke-static {v0, v2, v1}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_5
    if-eqz v1, :cond_6

    .line 276
    invoke-direct {p0}, Landroidx/media3/inspector/FrameExtractorInternal;->getThumbnailPresentationTimeMs()J

    move-result-wide v1

    goto :goto_4

    :cond_6
    iget-wide v1, p1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->positionMs:J

    .line 278
    :goto_4
    invoke-virtual {p1, v1, v2}, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->copyWithPositionMs(J)Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;

    move-result-object p1

    .line 277
    invoke-direct {p0, p1, v0, v3}, Landroidx/media3/inspector/FrameExtractorInternal;->processTask(Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;ZZ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public releaseReference()V
    .locals 4

    .line 211
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->executionSequencer:Lcom/google/common/util/concurrent/ExecutionSequencer;

    new-instance v1, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/inspector/FrameExtractorInternal;)V

    iget-object v2, p0, Landroidx/media3/inspector/FrameExtractorInternal;->playerHandler:Landroid/os/Handler;

    .line 227
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda3;-><init>(Landroid/os/Handler;)V

    .line 212
    invoke-virtual {v0, v1, v3}, Lcom/google/common/util/concurrent/ExecutionSequencer;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public submitTask(Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/inspector/FrameExtractor$Frame;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal;->executionSequencer:Lcom/google/common/util/concurrent/ExecutionSequencer;

    new-instance v1, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/inspector/FrameExtractorInternal;Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;)V

    iget-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal;->playerHandler:Landroid/os/Handler;

    .line 281
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda3;-><init>(Landroid/os/Handler;)V

    .line 232
    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/ExecutionSequencer;->submitAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
