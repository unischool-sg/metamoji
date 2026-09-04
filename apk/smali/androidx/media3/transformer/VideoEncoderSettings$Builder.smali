.class public final Landroidx/media3/transformer/VideoEncoderSettings$Builder;
.super Ljava/lang/Object;
.source "VideoEncoderSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/VideoEncoderSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bitrate:I

.field private bitrateMode:I

.field private iFrameIntervalSeconds:F

.field private level:I

.field private maxBFrames:I

.field private numBidirectionalTemporalLayers:I

.field private numNonBidirectionalTemporalLayers:I

.field private operatingRate:I

.field private priority:I

.field private profile:I

.field private repeatPreviousFrameIntervalUs:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->bitrate:I

    const/4 v1, 0x1

    .line 91
    iput v1, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->bitrateMode:I

    .line 92
    iput v0, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->profile:I

    .line 93
    iput v0, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->level:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 94
    iput v1, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->iFrameIntervalSeconds:F

    .line 95
    iput v0, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->operatingRate:I

    .line 96
    iput v0, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->priority:I

    const-wide/16 v1, -0x1

    .line 97
    iput-wide v1, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->repeatPreviousFrameIntervalUs:J

    .line 98
    iput v0, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->maxBFrames:I

    .line 99
    iput v0, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->numNonBidirectionalTemporalLayers:I

    .line 100
    iput v0, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->numBidirectionalTemporalLayers:I

    return-void
.end method

.method private constructor <init>(Landroidx/media3/transformer/VideoEncoderSettings;)V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iget v0, p1, Landroidx/media3/transformer/VideoEncoderSettings;->bitrate:I

    iput v0, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->bitrate:I

    .line 105
    iget v0, p1, Landroidx/media3/transformer/VideoEncoderSettings;->bitrateMode:I

    iput v0, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->bitrateMode:I

    .line 106
    iget v0, p1, Landroidx/media3/transformer/VideoEncoderSettings;->profile:I

    iput v0, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->profile:I

    .line 107
    iget v0, p1, Landroidx/media3/transformer/VideoEncoderSettings;->level:I

    iput v0, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->level:I

    .line 108
    iget v0, p1, Landroidx/media3/transformer/VideoEncoderSettings;->iFrameIntervalSeconds:F

    iput v0, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->iFrameIntervalSeconds:F

    .line 109
    iget v0, p1, Landroidx/media3/transformer/VideoEncoderSettings;->operatingRate:I

    iput v0, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->operatingRate:I

    .line 110
    iget v0, p1, Landroidx/media3/transformer/VideoEncoderSettings;->priority:I

    iput v0, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->priority:I

    .line 111
    iget-wide v0, p1, Landroidx/media3/transformer/VideoEncoderSettings;->repeatPreviousFrameIntervalUs:J

    iput-wide v0, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->repeatPreviousFrameIntervalUs:J

    .line 112
    iget v0, p1, Landroidx/media3/transformer/VideoEncoderSettings;->maxBFrames:I

    iput v0, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->maxBFrames:I

    .line 113
    iget v0, p1, Landroidx/media3/transformer/VideoEncoderSettings;->numNonBidirectionalTemporalLayers:I

    iput v0, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->numNonBidirectionalTemporalLayers:I

    .line 115
    iget p1, p1, Landroidx/media3/transformer/VideoEncoderSettings;->numBidirectionalTemporalLayers:I

    iput p1, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->numBidirectionalTemporalLayers:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/transformer/VideoEncoderSettings;Landroidx/media3/transformer/VideoEncoderSettings$1;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Landroidx/media3/transformer/VideoEncoderSettings$Builder;-><init>(Landroidx/media3/transformer/VideoEncoderSettings;)V

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/transformer/VideoEncoderSettings;
    .locals 14

    .line 252
    new-instance v0, Landroidx/media3/transformer/VideoEncoderSettings;

    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->bitrate:I

    iget v2, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->bitrateMode:I

    iget v3, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->profile:I

    iget v4, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->level:I

    iget v5, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->iFrameIntervalSeconds:F

    iget v6, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->operatingRate:I

    iget v7, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->priority:I

    iget-wide v8, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->repeatPreviousFrameIntervalUs:J

    iget v10, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->maxBFrames:I

    iget v11, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->numNonBidirectionalTemporalLayers:I

    iget v12, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->numBidirectionalTemporalLayers:I

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Landroidx/media3/transformer/VideoEncoderSettings;-><init>(IIIIFIIJIIILandroidx/media3/transformer/VideoEncoderSettings$1;)V

    return-object v0
.end method

.method public setBitrate(I)Landroidx/media3/transformer/VideoEncoderSettings$Builder;
    .locals 0

    .line 126
    iput p1, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->bitrate:I

    return-object p0
.end method

.method public setBitrateMode(I)Landroidx/media3/transformer/VideoEncoderSettings$Builder;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 141
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 142
    iput p1, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->bitrateMode:I

    return-object p0
.end method

.method public setEncoderPerformanceParameters(II)Landroidx/media3/transformer/VideoEncoderSettings$Builder;
    .locals 0

    .line 194
    iput p1, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->operatingRate:I

    .line 195
    iput p2, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->priority:I

    return-object p0
.end method

.method public setEncodingProfileLevel(II)Landroidx/media3/transformer/VideoEncoderSettings$Builder;
    .locals 0

    .line 162
    iput p1, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->profile:I

    .line 163
    iput p2, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->level:I

    return-object p0
.end method

.method public setMaxBFrames(I)Landroidx/media3/transformer/VideoEncoderSettings$Builder;
    .locals 0

    .line 224
    iput p1, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->maxBFrames:I

    return-object p0
.end method

.method public setRepeatPreviousFrameIntervalUs(J)Landroidx/media3/transformer/VideoEncoderSettings$Builder;
    .locals 0

    .line 210
    iput-wide p1, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->repeatPreviousFrameIntervalUs:J

    return-object p0
.end method

.method public setTemporalLayers(II)Landroidx/media3/transformer/VideoEncoderSettings$Builder;
    .locals 0

    .line 245
    iput p1, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->numNonBidirectionalTemporalLayers:I

    .line 246
    iput p2, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->numBidirectionalTemporalLayers:I

    return-object p0
.end method

.method public setiFrameIntervalSeconds(F)Landroidx/media3/transformer/VideoEncoderSettings$Builder;
    .locals 0

    .line 176
    iput p1, p0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->iFrameIntervalSeconds:F

    return-object p0
.end method
