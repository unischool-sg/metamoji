.class public final Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;
.super Ljava/lang/Object;
.source "FrameExtractorInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/inspector/FrameExtractorInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrameExtractionRequest"
.end annotation


# instance fields
.field public final context:Landroid/content/Context;

.field public final effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;"
        }
    .end annotation
.end field

.field public final extractHdrFrames:Z

.field public final glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

.field public final mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

.field public final mediaItem:Landroidx/media3/common/MediaItem;

.field public final positionMs:J

.field public final seekParameters:Landroidx/media3/exoplayer/SeekParameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/common/MediaItem;Ljava/util/List;Landroidx/media3/exoplayer/SeekParameters;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/GlObjectsProvider;ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media3/common/MediaItem;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;",
            "Landroidx/media3/exoplayer/SeekParameters;",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;",
            "Landroidx/media3/common/GlObjectsProvider;",
            "ZJ)V"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->context:Landroid/content/Context;

    .line 132
    iput-object p2, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 133
    iput-object p3, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->effects:Ljava/util/List;

    .line 134
    iput-object p4, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    .line 135
    iput-object p5, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 136
    iput-object p6, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    .line 137
    iput-boolean p7, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->extractHdrFrames:Z

    .line 138
    iput-wide p8, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->positionMs:J

    return-void
.end method


# virtual methods
.method public copyWithPositionMs(J)Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;
    .locals 11

    .line 143
    iget-wide v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->positionMs:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-object p0

    .line 146
    :cond_0
    new-instance v1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;

    iget-object v2, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->context:Landroid/content/Context;

    iget-object v3, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v4, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->effects:Ljava/util/List;

    iget-object v5, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    iget-object v6, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    iget-object v7, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    iget-boolean v8, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;->extractHdrFrames:Z

    move-wide v9, p1

    invoke-direct/range {v1 .. v10}, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;-><init>(Landroid/content/Context;Landroidx/media3/common/MediaItem;Ljava/util/List;Landroidx/media3/exoplayer/SeekParameters;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/GlObjectsProvider;ZJ)V

    return-object v1
.end method
