.class public final Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;
.super Ljava/lang/Object;
.source "ExperimentalFrameExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/ExperimentalFrameExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;
    }
.end annotation


# instance fields
.field public final extractHdrFrames:Z

.field public final glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

.field public final mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

.field public final seekParameters:Landroidx/media3/exoplayer/SeekParameters;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/SeekParameters;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;ZLandroidx/media3/common/GlObjectsProvider;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    .line 161
    iput-object p2, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 162
    iput-boolean p3, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;->extractHdrFrames:Z

    .line 163
    iput-object p4, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/SeekParameters;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;ZLandroidx/media3/common/GlObjectsProvider;Landroidx/media3/transformer/ExperimentalFrameExtractor$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;-><init>(Landroidx/media3/exoplayer/SeekParameters;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;ZLandroidx/media3/common/GlObjectsProvider;)V

    return-void
.end method
