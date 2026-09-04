.class public final Landroidx/media3/transformer/VideoEncoderSettings;
.super Ljava/lang/Object;
.source "VideoEncoderSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/VideoEncoderSettings$Builder;,
        Landroidx/media3/transformer/VideoEncoderSettings$BitrateMode;
    }
.end annotation


# static fields
.field public static final DEFAULT:Landroidx/media3/transformer/VideoEncoderSettings;

.field public static final DEFAULT_I_FRAME_INTERVAL_SECONDS:F = 1.0f

.field public static final NO_VALUE:I = -0x1

.field public static final RATE_UNSET:I = -0x2


# instance fields
.field public final bitrate:I

.field public final bitrateMode:I

.field public final iFrameIntervalSeconds:F

.field public final level:I

.field public final maxBFrames:I

.field public final numBidirectionalTemporalLayers:I

.field public final numNonBidirectionalTemporalLayers:I

.field public final operatingRate:I

.field public final priority:I

.field public final profile:I

.field public final repeatPreviousFrameIntervalUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;

    invoke-direct {v0}, Landroidx/media3/transformer/VideoEncoderSettings$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->build()Landroidx/media3/transformer/VideoEncoderSettings;

    move-result-object v0

    sput-object v0, Landroidx/media3/transformer/VideoEncoderSettings;->DEFAULT:Landroidx/media3/transformer/VideoEncoderSettings;

    return-void
.end method

.method private constructor <init>(IIIIFIIJIII)V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput p1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->bitrate:I

    .line 319
    iput p2, p0, Landroidx/media3/transformer/VideoEncoderSettings;->bitrateMode:I

    .line 320
    iput p3, p0, Landroidx/media3/transformer/VideoEncoderSettings;->profile:I

    .line 321
    iput p4, p0, Landroidx/media3/transformer/VideoEncoderSettings;->level:I

    .line 322
    iput p5, p0, Landroidx/media3/transformer/VideoEncoderSettings;->iFrameIntervalSeconds:F

    .line 323
    iput p6, p0, Landroidx/media3/transformer/VideoEncoderSettings;->operatingRate:I

    .line 324
    iput p7, p0, Landroidx/media3/transformer/VideoEncoderSettings;->priority:I

    .line 325
    iput-wide p8, p0, Landroidx/media3/transformer/VideoEncoderSettings;->repeatPreviousFrameIntervalUs:J

    .line 326
    iput p10, p0, Landroidx/media3/transformer/VideoEncoderSettings;->maxBFrames:I

    .line 327
    iput p11, p0, Landroidx/media3/transformer/VideoEncoderSettings;->numNonBidirectionalTemporalLayers:I

    .line 328
    iput p12, p0, Landroidx/media3/transformer/VideoEncoderSettings;->numBidirectionalTemporalLayers:I

    return-void
.end method

.method synthetic constructor <init>(IIIIFIIJIIILandroidx/media3/transformer/VideoEncoderSettings$1;)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p12}, Landroidx/media3/transformer/VideoEncoderSettings;-><init>(IIIIFIIJIII)V

    return-void
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/transformer/VideoEncoderSettings$Builder;
    .locals 2

    .line 335
    new-instance v0, Landroidx/media3/transformer/VideoEncoderSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/transformer/VideoEncoderSettings$Builder;-><init>(Landroidx/media3/transformer/VideoEncoderSettings;Landroidx/media3/transformer/VideoEncoderSettings$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 343
    :cond_0
    instance-of v1, p1, Landroidx/media3/transformer/VideoEncoderSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 346
    :cond_1
    check-cast p1, Landroidx/media3/transformer/VideoEncoderSettings;

    .line 347
    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->bitrate:I

    iget v3, p1, Landroidx/media3/transformer/VideoEncoderSettings;->bitrate:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->bitrateMode:I

    iget v3, p1, Landroidx/media3/transformer/VideoEncoderSettings;->bitrateMode:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->profile:I

    iget v3, p1, Landroidx/media3/transformer/VideoEncoderSettings;->profile:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->level:I

    iget v3, p1, Landroidx/media3/transformer/VideoEncoderSettings;->level:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->iFrameIntervalSeconds:F

    iget v3, p1, Landroidx/media3/transformer/VideoEncoderSettings;->iFrameIntervalSeconds:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->operatingRate:I

    iget v3, p1, Landroidx/media3/transformer/VideoEncoderSettings;->operatingRate:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->priority:I

    iget v3, p1, Landroidx/media3/transformer/VideoEncoderSettings;->priority:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/transformer/VideoEncoderSettings;->repeatPreviousFrameIntervalUs:J

    iget-wide v5, p1, Landroidx/media3/transformer/VideoEncoderSettings;->repeatPreviousFrameIntervalUs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->maxBFrames:I

    iget v3, p1, Landroidx/media3/transformer/VideoEncoderSettings;->maxBFrames:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->numNonBidirectionalTemporalLayers:I

    iget v3, p1, Landroidx/media3/transformer/VideoEncoderSettings;->numNonBidirectionalTemporalLayers:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->numBidirectionalTemporalLayers:I

    iget p1, p1, Landroidx/media3/transformer/VideoEncoderSettings;->numBidirectionalTemporalLayers:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 5

    const/16 v0, 0xd9

    .line 363
    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->bitrate:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 364
    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->bitrateMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 365
    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->profile:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 366
    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->level:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 367
    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->iFrameIntervalSeconds:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 368
    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->operatingRate:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 369
    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->priority:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 370
    iget-wide v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->repeatPreviousFrameIntervalUs:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 373
    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->maxBFrames:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 374
    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->numNonBidirectionalTemporalLayers:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 375
    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->numBidirectionalTemporalLayers:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoEncoderSettings{bitrate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitrateMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->bitrateMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->profile:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iFrameIntervalSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->iFrameIntervalSeconds:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", operatingRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->operatingRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repeatPreviousFrameIntervalUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->repeatPreviousFrameIntervalUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxBFrames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->maxBFrames:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numNonBidirectionalTemporalLayers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->numNonBidirectionalTemporalLayers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numBidirectionalTemporalLayers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/transformer/VideoEncoderSettings;->numBidirectionalTemporalLayers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
