.class final Landroidx/media3/transformer/SefSlowMotionFlattener;
.super Ljava/lang/Object;
.source "SefSlowMotionFlattener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;,
        Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;
    }
.end annotation


# static fields
.field static final INPUT_FRAME_RATE:I = 0x1e

.field private static final NAL_START_CODE_LENGTH:I

.field private static final TARGET_OUTPUT_FRAME_RATE:I = 0x1e


# instance fields
.field private final captureFrameRate:F

.field private currentSegmentInfo:Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;

.field private frameTimeDeltaUs:J

.field private final inputMaxLayer:I

.field private lastSamplePresentationTimeUs:J

.field private final mimeType:Ljava/lang/String;

.field private nextSegmentInfo:Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;

.field private final normalSpeedMaxLayer:I

.field private final scratch:[B

.field private final segmentIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private final slowMotionData:Landroidx/media3/extractor/metadata/mp4/SlowMotionData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    sget-object v0, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    array-length v0, v0

    sput v0, Landroidx/media3/transformer/SefSlowMotionFlattener;->NAL_START_CODE_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/Format;)V
    .locals 4

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    sget v0, Landroidx/media3/transformer/SefSlowMotionFlattener;->NAL_START_CODE_LENGTH:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->scratch:[B

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 120
    iput-wide v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->lastSamplePresentationTimeUs:J

    .line 121
    iget-object v0, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-static {v0}, Landroidx/media3/transformer/SefSlowMotionFlattener;->getMetadataInfo(Landroidx/media3/common/Metadata;)Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;

    move-result-object v0

    .line 122
    iget-object v1, v0, Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;->slowMotionData:Landroidx/media3/extractor/metadata/mp4/SlowMotionData;

    iput-object v1, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->slowMotionData:Landroidx/media3/extractor/metadata/mp4/SlowMotionData;

    .line 123
    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 125
    const-string/jumbo v2, "video/avc"

    .line 126
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "video/hevc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "Unsupported MIME type for SEF slow motion video track: %s"

    .line 125
    invoke-static {v2, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 131
    iget-object p1, v1, Landroidx/media3/extractor/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 132
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->segmentIterator:Ljava/util/Iterator;

    .line 133
    iget v1, v0, Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;->captureFrameRate:F

    iput v1, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->captureFrameRate:F

    .line 134
    iget v1, v0, Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;->inputMaxLayer:I

    iput v1, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->inputMaxLayer:I

    .line 135
    iget v0, v0, Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;->normalSpeedMaxLayer:I

    iput v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->normalSpeedMaxLayer:I

    .line 137
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 138
    new-instance v2, Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    invoke-direct {v2, p1, v1, v0}, Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;-><init>(Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;II)V

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 139
    :goto_3
    iput-object v2, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->nextSegmentInfo:Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;

    return-void
.end method

.method private enterNextSegment()V
    .locals 4

    .line 221
    iget-object v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->currentSegmentInfo:Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Landroidx/media3/transformer/SefSlowMotionFlattener;->leaveCurrentSegment()V

    .line 224
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->nextSegmentInfo:Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;

    iput-object v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->currentSegmentInfo:Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;

    .line 226
    iget-object v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->segmentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    new-instance v0, Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;

    iget-object v1, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->segmentIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    iget v2, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->inputMaxLayer:I

    iget v3, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->normalSpeedMaxLayer:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;-><init>(Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;II)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 228
    :goto_0
    iput-object v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->nextSegmentInfo:Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;

    return-void
.end method

.method private static getMetadataInfo(Landroidx/media3/common/Metadata;)Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;
    .locals 5

    .line 295
    new-instance v0, Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;

    invoke-direct {v0}, Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;-><init>()V

    if-nez p0, :cond_0

    goto/16 :goto_5

    .line 299
    :cond_0
    const-class v1, Landroidx/media3/extractor/metadata/mp4/SlowMotionData;

    invoke-virtual {p0, v1}, Landroidx/media3/common/Metadata;->getFirstEntryOfType(Ljava/lang/Class;)Landroidx/media3/common/Metadata$Entry;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/metadata/mp4/SlowMotionData;

    if-nez v1, :cond_1

    goto/16 :goto_5

    .line 303
    :cond_1
    iput-object v1, v0, Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;->slowMotionData:Landroidx/media3/extractor/metadata/mp4/SlowMotionData;

    .line 305
    const-class v1, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;

    invoke-virtual {p0, v1}, Landroidx/media3/common/Metadata;->getFirstEntryOfType(Ljava/lang/Class;)Landroidx/media3/common/Metadata$Entry;

    move-result-object p0

    check-cast p0, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    .line 307
    iget v2, p0, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->captureFrameRate:F

    iput v2, v0, Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;->captureFrameRate:F

    .line 308
    iget p0, p0, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;->svcTemporalLayerCount:I

    sub-int/2addr p0, v1

    iput p0, v0, Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;->inputMaxLayer:I

    .line 310
    :cond_2
    iget p0, v0, Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;->inputMaxLayer:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq p0, v2, :cond_3

    move p0, v1

    goto :goto_0

    :cond_3
    move p0, v3

    :goto_0
    const-string v2, "SVC temporal layer count not found."

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 311
    iget p0, v0, Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;->captureFrameRate:F

    const v2, -0x800001

    cmpl-float p0, p0, v2

    if-eqz p0, :cond_4

    move p0, v1

    goto :goto_1

    :cond_4
    move p0, v3

    :goto_1
    const-string v2, "Capture frame rate not found."

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 312
    iget p0, v0, Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;->captureFrameRate:F

    const/high16 v2, 0x3f800000    # 1.0f

    rem-float/2addr p0, v2

    const/4 v2, 0x0

    cmpl-float p0, p0, v2

    if-nez p0, :cond_5

    iget p0, v0, Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;->captureFrameRate:F

    const/high16 v4, 0x41f00000    # 30.0f

    rem-float/2addr p0, v4

    cmpl-float p0, p0, v2

    if-nez p0, :cond_5

    move p0, v1

    goto :goto_2

    :cond_5
    move p0, v3

    :goto_2
    iget v2, v0, Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;->captureFrameRate:F

    .line 316
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 312
    const-string v4, "Invalid capture frame rate: %s"

    invoke-static {p0, v4, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 318
    iget p0, v0, Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;->captureFrameRate:F

    float-to-int p0, p0

    div-int/lit8 p0, p0, 0x1e

    .line 319
    iget v2, v0, Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;->inputMaxLayer:I

    :goto_3
    if-ltz v2, :cond_8

    and-int/lit8 v4, p0, 0x1

    if-ne v4, v1, :cond_7

    shr-int/2addr p0, v1

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    move v1, v3

    .line 325
    :goto_4
    iget p0, v0, Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;->captureFrameRate:F

    .line 328
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    .line 325
    const-string v3, "Could not compute normal speed max SVC layer for capture frame rate %s"

    invoke-static {v1, v3, p0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 329
    iput v2, v0, Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;->normalSpeedMaxLayer:I

    return-object v0

    :cond_7
    shr-int/lit8 p0, p0, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_8
    :goto_5
    return-object v0
.end method

.method private leaveCurrentSegment()V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "currentSegmentInfo"
        }
    .end annotation

    .line 237
    iget-wide v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->frameTimeDeltaUs:J

    iget-object v2, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->currentSegmentInfo:Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;

    iget-wide v2, v2, Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;->endTimeUs:J

    iget-object v4, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->currentSegmentInfo:Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;

    iget-wide v4, v4, Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;->startTimeUs:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->currentSegmentInfo:Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;

    iget v4, v4, Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;->speedDivisor:I

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->frameTimeDeltaUs:J

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->currentSegmentInfo:Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;

    return-void
.end method

.method private shouldKeepFrameForOutputValidity(IJ)Z
    .locals 6

    .line 252
    iget-object v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->nextSegmentInfo:Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, v0, Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;->maxLayer:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 256
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->nextSegmentInfo:Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;

    iget-wide v2, v0, Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;->startTimeUs:J

    sub-long/2addr v2, p2

    const-wide/16 p2, 0x1e

    mul-long/2addr v2, p2

    const-wide/32 p2, 0xf4240

    div-long/2addr v2, p2

    .line 259
    iget p2, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->inputMaxLayer:I

    iget-object p3, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->nextSegmentInfo:Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;

    iget p3, p3, Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;->maxLayer:I

    sub-int/2addr p2, p3

    const/4 p3, 0x1

    shl-int p2, p3, p2

    neg-int p2, p2

    int-to-float p2, p2

    const v0, 0x3ee66666    # 0.45f

    add-float/2addr p2, v0

    move v0, p3

    .line 261
    :goto_0
    iget-object v4, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->nextSegmentInfo:Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;

    iget v4, v4, Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;->maxLayer:I

    if-ge v0, v4, :cond_2

    long-to-float v4, v2

    .line 262
    iget v5, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->inputMaxLayer:I

    sub-int/2addr v5, v0

    shl-int v5, p3, v5

    int-to-float v5, v5

    add-float/2addr v5, p2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    if-gt p1, v0, :cond_1

    return p3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
.method public dropOrTransformSample(Ljava/nio/ByteBuffer;J)Z
    .locals 6

    .line 152
    iget-object v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->slowMotionData:Landroidx/media3/extractor/metadata/mp4/SlowMotionData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 154
    iput-wide p2, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->lastSamplePresentationTimeUs:J

    return v1

    .line 158
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 159
    sget v2, Landroidx/media3/transformer/SefSlowMotionFlattener;->NAL_START_CODE_LENGTH:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 160
    iget-object v2, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->scratch:[B

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v1, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 162
    iget-object v2, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->mimeType:Ljava/lang/String;

    const-string/jumbo v3, "video/avc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 163
    iget-object v2, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->scratch:[B

    aget-byte v4, v2, v1

    and-int/lit8 v4, v4, 0x1f

    .line 164
    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x7

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const/16 v5, 0xe

    if-ne v4, v5, :cond_2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    .line 165
    :goto_1
    const-string v4, "Missing SVC extension prefix NAL unit."

    invoke-static {v2, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 168
    iget-object v2, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->scratch:[B

    const/4 v4, 0x3

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x5

    goto :goto_2

    .line 169
    :cond_3
    iget-object v2, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->mimeType:Ljava/lang/String;

    const-string/jumbo v4, "video/hevc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 170
    iget-object v2, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->scratch:[B

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x7

    sub-int/2addr v2, v3

    .line 175
    :goto_2
    invoke-virtual {p0, v2, p2, p3}, Landroidx/media3/transformer/SefSlowMotionFlattener;->processCurrentFrame(IJ)Z

    move-result v2

    .line 178
    invoke-virtual {p0, p2, p3}, Landroidx/media3/transformer/SefSlowMotionFlattener;->getCurrentFrameOutputTimeUs(J)J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->lastSamplePresentationTimeUs:J

    if-eqz v2, :cond_4

    .line 180
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v1

    :cond_4
    return v3

    .line 172
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method getCurrentFrameOutputTimeUs(J)J
    .locals 4

    .line 285
    iget-wide v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->frameTimeDeltaUs:J

    add-long/2addr v0, p1

    .line 286
    iget-object v2, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->currentSegmentInfo:Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;

    if-eqz v2, :cond_0

    .line 287
    iget-wide v2, v2, Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;->startTimeUs:J

    sub-long/2addr p1, v2

    iget-object v2, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->currentSegmentInfo:Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;

    iget v2, v2, Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;->speedDivisor:I

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    mul-long/2addr p1, v2

    add-long/2addr v0, p1

    :cond_0
    const-wide/16 p1, 0x1e

    mul-long/2addr v0, p1

    long-to-float p1, v0

    .line 290
    iget p2, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->captureFrameRate:F

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public getSamplePresentationTimeUs()J
    .locals 4

    .line 191
    iget-wide v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->lastSamplePresentationTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 192
    iget-wide v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->lastSamplePresentationTimeUs:J

    return-wide v0
.end method

.method processCurrentFrame(IJ)Z
    .locals 2

    .line 205
    :goto_0
    iget-object v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->nextSegmentInfo:Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;->endTimeUs:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 206
    invoke-direct {p0}, Landroidx/media3/transformer/SefSlowMotionFlattener;->enterNextSegment()V

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->nextSegmentInfo:Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;->startTimeUs:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    .line 210
    invoke-direct {p0}, Landroidx/media3/transformer/SefSlowMotionFlattener;->enterNextSegment()V

    goto :goto_1

    .line 211
    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->currentSegmentInfo:Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;

    if-eqz v0, :cond_2

    iget-wide v0, v0, Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;->endTimeUs:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2

    .line 212
    invoke-direct {p0}, Landroidx/media3/transformer/SefSlowMotionFlattener;->leaveCurrentSegment()V

    .line 215
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->currentSegmentInfo:Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;

    if-eqz v0, :cond_3

    iget v0, v0, Landroidx/media3/transformer/SefSlowMotionFlattener$SegmentInfo;->maxLayer:I

    goto :goto_2

    :cond_3
    iget v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener;->normalSpeedMaxLayer:I

    :goto_2
    if-le p1, v0, :cond_5

    .line 216
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/transformer/SefSlowMotionFlattener;->shouldKeepFrameForOutputValidity(IJ)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    return p1

    :cond_5
    :goto_3
    const/4 p1, 0x1

    return p1
.end method
