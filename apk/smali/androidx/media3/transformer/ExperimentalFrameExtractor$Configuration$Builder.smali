.class public final Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;
.super Ljava/lang/Object;
.source "ExperimentalFrameExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private extractHdrFrames:Z

.field private glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

.field private mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

.field private seekParameters:Landroidx/media3/exoplayer/SeekParameters;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Landroidx/media3/exoplayer/SeekParameters;->DEFAULT:Landroidx/media3/exoplayer/SeekParameters;

    iput-object v0, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    .line 68
    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->PREFER_SOFTWARE:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    iput-object v0, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;->extractHdrFrames:Z

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;
    .locals 6

    .line 138
    new-instance v0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;

    iget-object v1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    iget-object v2, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    iget-boolean v3, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;->extractHdrFrames:Z

    iget-object v4, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;-><init>(Landroidx/media3/exoplayer/SeekParameters;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;ZLandroidx/media3/common/GlObjectsProvider;Landroidx/media3/transformer/ExperimentalFrameExtractor$1;)V

    return-object v0
.end method

.method public setExtractHdrFrames(Z)Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;
    .locals 0

    .line 118
    iput-boolean p1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;->extractHdrFrames:Z

    return-object p0
.end method

.method public setGlObjectsProvider(Landroidx/media3/common/GlObjectsProvider;)Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;
    .locals 0

    .line 132
    iput-object p1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    return-object p0
.end method

.method public setMediaCodecSelector(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;)Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;
    .locals 0

    .line 94
    iput-object p1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    return-object p0
.end method

.method public setSeekParameters(Landroidx/media3/exoplayer/SeekParameters;)Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;
    .locals 0

    .line 81
    iput-object p1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    return-object p0
.end method
