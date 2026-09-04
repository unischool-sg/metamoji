.class final Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;
.super Ljava/lang/Object;
.source "ExoPlayerAssetLoader.java"

# interfaces
.implements Landroidx/media3/exoplayer/RenderersFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/ExoPlayerAssetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RenderersFactoryImpl"
.end annotation


# instance fields
.field private final assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

.field private final decoderFactory:Landroidx/media3/transformer/Codec$DecoderFactory;

.field private final flattenForSlowMotion:Z

.field private final hdrMode:I

.field private final logSessionId:Landroid/media/metrics/LogSessionId;

.field private final mediaClock:Landroidx/media3/transformer/TransformerMediaClock;

.field private final removeAudio:Z

.field private final removeVideo:Z


# direct methods
.method public constructor <init>(ZZZLandroidx/media3/transformer/Codec$DecoderFactory;ILandroidx/media3/transformer/AssetLoader$Listener;Landroid/media/metrics/LogSessionId;)V
    .locals 0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-boolean p1, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->removeAudio:Z

    .line 366
    iput-boolean p2, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->removeVideo:Z

    .line 367
    iput-boolean p3, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->flattenForSlowMotion:Z

    .line 368
    iput-object p4, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->decoderFactory:Landroidx/media3/transformer/Codec$DecoderFactory;

    .line 369
    iput p5, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->hdrMode:I

    .line 370
    iput-object p6, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    .line 371
    iput-object p7, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->logSessionId:Landroid/media/metrics/LogSessionId;

    .line 372
    new-instance p1, Landroidx/media3/transformer/TransformerMediaClock;

    invoke-direct {p1}, Landroidx/media3/transformer/TransformerMediaClock;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->mediaClock:Landroidx/media3/transformer/TransformerMediaClock;

    return-void
.end method


# virtual methods
.method public createRenderers(Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/text/TextOutput;Landroidx/media3/exoplayer/metadata/MetadataOutput;)[Landroidx/media3/exoplayer/Renderer;
    .locals 7

    .line 382
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 383
    iget-boolean p2, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->removeAudio:Z

    if-nez p2, :cond_0

    .line 384
    new-instance p2, Landroidx/media3/transformer/ExoAssetLoaderAudioRenderer;

    iget-object p3, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->decoderFactory:Landroidx/media3/transformer/Codec$DecoderFactory;

    iget-object p4, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->mediaClock:Landroidx/media3/transformer/TransformerMediaClock;

    iget-object p5, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    iget-object v0, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->logSessionId:Landroid/media/metrics/LogSessionId;

    invoke-direct {p2, p3, p4, p5, v0}, Landroidx/media3/transformer/ExoAssetLoaderAudioRenderer;-><init>(Landroidx/media3/transformer/Codec$DecoderFactory;Landroidx/media3/transformer/TransformerMediaClock;Landroidx/media3/transformer/AssetLoader$Listener;Landroid/media/metrics/LogSessionId;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_0
    iget-boolean p2, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->removeVideo:Z

    if-nez p2, :cond_1

    .line 389
    new-instance v0, Landroidx/media3/transformer/ExoAssetLoaderVideoRenderer;

    iget-boolean v1, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->flattenForSlowMotion:Z

    iget-object v2, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->decoderFactory:Landroidx/media3/transformer/Codec$DecoderFactory;

    iget v3, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->hdrMode:I

    iget-object v4, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->mediaClock:Landroidx/media3/transformer/TransformerMediaClock;

    iget-object v5, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    iget-object v6, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->logSessionId:Landroid/media/metrics/LogSessionId;

    invoke-direct/range {v0 .. v6}, Landroidx/media3/transformer/ExoAssetLoaderVideoRenderer;-><init>(ZLandroidx/media3/transformer/Codec$DecoderFactory;ILandroidx/media3/transformer/TransformerMediaClock;Landroidx/media3/transformer/AssetLoader$Listener;Landroid/media/metrics/LogSessionId;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p2, 0x0

    .line 398
    new-array p2, p2, [Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media3/exoplayer/Renderer;

    return-object p1
.end method
