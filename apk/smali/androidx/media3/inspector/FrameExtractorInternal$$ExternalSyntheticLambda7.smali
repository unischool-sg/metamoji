.class public final synthetic Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/exoplayer/RenderersFactory;


# instance fields
.field public final synthetic f$0:Landroidx/media3/inspector/FrameExtractorInternal;

.field public final synthetic f$1:Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/inspector/FrameExtractorInternal;Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda7;->f$0:Landroidx/media3/inspector/FrameExtractorInternal;

    iput-object p2, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda7;->f$1:Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;

    return-void
.end method


# virtual methods
.method public final createRenderers(Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/text/TextOutput;Landroidx/media3/exoplayer/metadata/MetadataOutput;)[Landroidx/media3/exoplayer/Renderer;
    .locals 7

    .line 0
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda7;->f$0:Landroidx/media3/inspector/FrameExtractorInternal;

    iget-object v1, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda7;->f$1:Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/inspector/FrameExtractorInternal;->lambda$ensurePlayerInitialized$6$androidx-media3-inspector-FrameExtractorInternal(Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/text/TextOutput;Landroidx/media3/exoplayer/metadata/MetadataOutput;)[Landroidx/media3/exoplayer/Renderer;

    move-result-object p1

    return-object p1
.end method
