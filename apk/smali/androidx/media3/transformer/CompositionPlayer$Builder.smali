.class public final Landroidx/media3/transformer/CompositionPlayer$Builder;
.super Ljava/lang/Object;
.source "CompositionPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/CompositionPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private audioAttributes:Landroidx/media3/common/AudioAttributes;

.field private audioMixerFactorySupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/transformer/AudioMixer$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private audioSinkSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/audio/AudioSink;",
            ">;"
        }
    .end annotation
.end field

.field private built:Z

.field private clock:Landroidx/media3/common/util/Clock;

.field private final context:Landroid/content/Context;

.field private enableReplayableCache:Z

.field private glExecutorService:Ljava/util/concurrent/ExecutorService;

.field private glObjectsProviderSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/common/GlObjectsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private handleAudioFocus:Z

.field private imageDecoderFactorySupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/image/ImageDecoder$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private lateThresholdToDropInputUs:J

.field private loadControlSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/LoadControl;",
            ">;"
        }
    .end annotation
.end field

.field private looper:Landroid/os/Looper;

.field private mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private packetConsumerFactory:Landroidx/media3/effect/PacketConsumer$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/effect/PacketConsumer$Factory<",
            "Ljava/util/List<",
            "Landroidx/media3/effect/GlTextureFrame;",
            ">;>;"
        }
    .end annotation
.end field

.field private videoGraphFactory:Landroidx/media3/common/VideoGraph$Factory;

.field private videoPrewarmingEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$LrxBn1-t2o-xYeQznc73ICy_qHQ()Landroidx/media3/effect/DefaultGlObjectsProvider;
    .locals 1

    new-instance v0, Landroidx/media3/effect/DefaultGlObjectsProvider;

    invoke-direct {v0}, Landroidx/media3/effect/DefaultGlObjectsProvider;-><init>()V

    return-object v0
.end method

.method public static synthetic $r8$lambda$MRFgkfWw775_uDR5k8zwyHP4pUE()Landroidx/media3/exoplayer/DefaultLoadControl;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/DefaultLoadControl;

    invoke-direct {v0}, Landroidx/media3/exoplayer/DefaultLoadControl;-><init>()V

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->context:Landroid/content/Context;

    .line 181
    invoke-static {}, Landroidx/media3/common/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->looper:Landroid/os/Looper;

    .line 182
    new-instance v0, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->audioSinkSupplier:Lcom/google/common/base/Supplier;

    .line 183
    new-instance v0, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda3;-><init>()V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->glObjectsProviderSupplier:Lcom/google/common/base/Supplier;

    .line 184
    new-instance v0, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda4;-><init>()V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->audioMixerFactorySupplier:Lcom/google/common/base/Supplier;

    .line 185
    new-instance v0, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    .line 186
    new-instance v0, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda6;-><init>()V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    .line 187
    new-instance v0, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->imageDecoderFactorySupplier:Lcom/google/common/base/Supplier;

    const/4 p1, 0x1

    .line 191
    iput-boolean p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->videoPrewarmingEnabled:Z

    const-wide/16 v0, 0x3a98

    .line 192
    iput-wide v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->lateThresholdToDropInputUs:J

    .line 193
    sget-object p1, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->clock:Landroidx/media3/common/util/Clock;

    .line 194
    sget-object p1, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroid/os/Looper;
    .locals 0

    .line 152
    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->looper:Landroid/os/Looper;

    return-object p0
.end method

.method static synthetic access$1000(Landroidx/media3/transformer/CompositionPlayer$Builder;)Lcom/google/common/base/Supplier;
    .locals 0

    .line 152
    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method static synthetic access$1100(Landroidx/media3/transformer/CompositionPlayer$Builder;)Z
    .locals 0

    .line 152
    iget-boolean p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->enableReplayableCache:Z

    return p0
.end method

.method static synthetic access$1200(Landroidx/media3/transformer/CompositionPlayer$Builder;)J
    .locals 2

    .line 152
    iget-wide v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->lateThresholdToDropInputUs:J

    return-wide v0
.end method

.method static synthetic access$1300(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroidx/media3/common/AudioAttributes;
    .locals 0

    .line 152
    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    return-object p0
.end method

.method static synthetic access$1400(Landroidx/media3/transformer/CompositionPlayer$Builder;)Z
    .locals 0

    .line 152
    iget-boolean p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->handleAudioFocus:Z

    return p0
.end method

.method static synthetic access$1600(Landroidx/media3/transformer/CompositionPlayer$Builder;)Lcom/google/common/base/Supplier;
    .locals 0

    .line 152
    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->glObjectsProviderSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method static synthetic access$1700(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroidx/media3/effect/PacketConsumer$Factory;
    .locals 0

    .line 152
    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->packetConsumerFactory:Landroidx/media3/effect/PacketConsumer$Factory;

    return-object p0
.end method

.method static synthetic access$1800(Landroidx/media3/transformer/CompositionPlayer$Builder;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 152
    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->glExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroidx/media3/common/util/Clock;
    .locals 0

    .line 152
    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->clock:Landroidx/media3/common/util/Clock;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroid/content/Context;
    .locals 0

    .line 152
    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/media3/transformer/CompositionPlayer$Builder;)Lcom/google/common/base/Supplier;
    .locals 0

    .line 152
    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->audioSinkSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/media3/transformer/CompositionPlayer$Builder;)Lcom/google/common/base/Supplier;
    .locals 0

    .line 152
    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->audioMixerFactorySupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/media3/transformer/CompositionPlayer$Builder;)Lcom/google/common/base/Supplier;
    .locals 0

    .line 152
    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method static synthetic access$700(Landroidx/media3/transformer/CompositionPlayer$Builder;)Lcom/google/common/base/Supplier;
    .locals 0

    .line 152
    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->imageDecoderFactorySupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method static synthetic access$800(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroidx/media3/common/VideoGraph$Factory;
    .locals 0

    .line 152
    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->videoGraphFactory:Landroidx/media3/common/VideoGraph$Factory;

    return-object p0
.end method

.method static synthetic access$900(Landroidx/media3/transformer/CompositionPlayer$Builder;)Z
    .locals 0

    .line 152
    iget-boolean p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->videoPrewarmingEnabled:Z

    return p0
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;)Landroidx/media3/exoplayer/audio/AudioSink;
    .locals 1

    .line 182
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->build()Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$1(Landroid/content/Context;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 1

    .line 185
    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$new$2(Landroid/content/Context;)Landroidx/media3/exoplayer/image/ImageDecoder$Factory;
    .locals 1

    .line 189
    new-instance v0, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x1000

    .line 190
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;->setMaxOutputSize(I)Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setAudioMixerFactory$4(Landroidx/media3/transformer/AudioMixer$Factory;)Landroidx/media3/transformer/AudioMixer$Factory;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$setAudioSink$3(Landroidx/media3/exoplayer/audio/AudioSink;)Landroidx/media3/exoplayer/audio/AudioSink;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$setGlObjectsProvider$7(Landroidx/media3/common/GlObjectsProvider;)Landroidx/media3/common/GlObjectsProvider;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$setImageDecoderFactory$6(Landroidx/media3/exoplayer/image/ImageDecoder$Factory;)Landroidx/media3/exoplayer/image/ImageDecoder$Factory;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$setLoadControl$8(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/LoadControl;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$setMediaSourceFactory$5(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public build()Landroidx/media3/transformer/CompositionPlayer;
    .locals 3

    .line 470
    iget-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->built:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 471
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->videoGraphFactory:Landroidx/media3/common/VideoGraph$Factory;

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;

    invoke-direct {v0}, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;-><init>()V

    iget-boolean v2, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->enableReplayableCache:Z

    .line 474
    invoke-virtual {v0, v2}, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;->setEnableReplayableCache(Z)Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->glObjectsProviderSupplier:Lcom/google/common/base/Supplier;

    .line 475
    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/GlObjectsProvider;

    invoke-virtual {v0, v2}, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;->setGlObjectsProvider(Landroidx/media3/common/GlObjectsProvider;)Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->glExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 476
    invoke-virtual {v0, v2}, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;->setExecutorService(Ljava/util/concurrent/ExecutorService;)Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;->build()Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;

    move-result-object v0

    .line 478
    new-instance v2, Landroidx/media3/effect/SingleInputVideoGraph$Factory;

    invoke-direct {v2, v0}, Landroidx/media3/effect/SingleInputVideoGraph$Factory;-><init>(Landroidx/media3/common/VideoFrameProcessor$Factory;)V

    iput-object v2, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->videoGraphFactory:Landroidx/media3/common/VideoGraph$Factory;

    .line 480
    :cond_0
    new-instance v0, Landroidx/media3/transformer/CompositionPlayer;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroidx/media3/transformer/CompositionPlayer;-><init>(Landroidx/media3/transformer/CompositionPlayer$Builder;Landroidx/media3/transformer/CompositionPlayer$1;)V

    .line 481
    iput-boolean v1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->built:Z

    return-object v0
.end method

.method public experimentalSetEnableReplayableCache(Z)Landroidx/media3/transformer/CompositionPlayer$Builder;
    .locals 0

    .line 413
    iput-boolean p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->enableReplayableCache:Z

    return-object p0
.end method

.method public experimentalSetLateThresholdToDropInputUs(J)Landroidx/media3/transformer/CompositionPlayer$Builder;
    .locals 0

    .line 432
    iput-wide p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->lateThresholdToDropInputUs:J

    return-object p0
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)Landroidx/media3/transformer/CompositionPlayer$Builder;
    .locals 0

    .line 397
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/AudioAttributes;

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 398
    iput-boolean p2, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->handleAudioFocus:Z

    return-object p0
.end method

.method public setAudioMixerFactory(Landroidx/media3/transformer/AudioMixer$Factory;)Landroidx/media3/transformer/CompositionPlayer$Builder;
    .locals 1

    .line 238
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v0, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/transformer/AudioMixer$Factory;)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->audioMixerFactorySupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setAudioSink(Landroidx/media3/exoplayer/audio/AudioSink;)Landroidx/media3/transformer/CompositionPlayer$Builder;
    .locals 1

    .line 222
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v0, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/audio/AudioSink;)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->audioSinkSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setClock(Landroidx/media3/common/util/Clock;)Landroidx/media3/transformer/CompositionPlayer$Builder;
    .locals 0

    .line 306
    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->clock:Landroidx/media3/common/util/Clock;

    return-object p0
.end method

.method public setGlObjectsProvider(Landroidx/media3/common/GlObjectsProvider;)Landroidx/media3/transformer/CompositionPlayer$Builder;
    .locals 1

    .line 339
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    new-instance v0, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/common/GlObjectsProvider;)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->glObjectsProviderSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setGlThreadExecutorService(Ljava/util/concurrent/ExecutorService;)Landroidx/media3/transformer/CompositionPlayer$Builder;
    .locals 1

    .line 361
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->videoGraphFactory:Landroidx/media3/common/VideoGraph$Factory;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 363
    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->glExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public setImageDecoderFactory(Landroidx/media3/exoplayer/image/ImageDecoder$Factory;)Landroidx/media3/transformer/CompositionPlayer$Builder;
    .locals 1

    .line 274
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance v0, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda10;-><init>(Landroidx/media3/exoplayer/image/ImageDecoder$Factory;)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->imageDecoderFactorySupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setLoadControl(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/transformer/CompositionPlayer$Builder;
    .locals 1

    .line 378
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    new-instance v0, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/LoadControl;)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setLooper(Landroid/os/Looper;)Landroidx/media3/transformer/CompositionPlayer$Builder;
    .locals 0

    .line 208
    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->looper:Landroid/os/Looper;

    return-object p0
.end method

.method public setMediaSourceFactory(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/transformer/CompositionPlayer$Builder;
    .locals 1

    .line 256
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-instance v0, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda11;-><init>(Landroidx/media3/exoplayer/source/MediaSource$Factory;)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setPacketConsumerFactory(Landroidx/media3/effect/PacketConsumer$Factory;)Landroidx/media3/transformer/CompositionPlayer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/effect/PacketConsumer$Factory<",
            "Ljava/util/List<",
            "Landroidx/media3/effect/GlTextureFrame;",
            ">;>;)",
            "Landroidx/media3/transformer/CompositionPlayer$Builder;"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->videoGraphFactory:Landroidx/media3/common/VideoGraph$Factory;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 458
    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->packetConsumerFactory:Landroidx/media3/effect/PacketConsumer$Factory;

    return-object p0
.end method

.method public setVideoGraphFactory(Landroidx/media3/common/VideoGraph$Factory;)Landroidx/media3/transformer/CompositionPlayer$Builder;
    .locals 1

    .line 322
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->glExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 323
    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->videoGraphFactory:Landroidx/media3/common/VideoGraph$Factory;

    return-object p0
.end method

.method setVideoPrewarmingEnabled(Z)Landroidx/media3/transformer/CompositionPlayer$Builder;
    .locals 0

    .line 291
    iput-boolean p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->videoPrewarmingEnabled:Z

    return-object p0
.end method
