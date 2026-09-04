.class final Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;
.super Ljava/lang/Object;
.source "SpeedChangingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/SpeedChangingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SpeedProviderMapper"
.end annotation


# instance fields
.field private final clipStartUs:J

.field private final inputSegmentStartTimesUs:[J

.field private final outputSegmentStartTimesUs:[J

.field private final speeds:[F


# direct methods
.method public constructor <init>(Landroidx/media3/common/audio/SpeedProvider;J)V
    .locals 12

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-wide p2, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->clipStartUs:J

    .line 325
    new-instance p2, Landroidx/media3/common/util/LongArray;

    invoke-direct {p2}, Landroidx/media3/common/util/LongArray;-><init>()V

    .line 326
    new-instance p3, Landroidx/media3/common/util/LongArray;

    invoke-direct {p3}, Landroidx/media3/common/util/LongArray;-><init>()V

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    .line 331
    invoke-interface {p1, v1, v2}, Landroidx/media3/common/audio/SpeedProvider;->getSpeed(J)F

    move-result v3

    .line 332
    invoke-virtual {p2, v1, v2}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 333
    invoke-virtual {p3, v1, v2}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 334
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-interface {p1, v1, v2}, Landroidx/media3/common/audio/SpeedProvider;->getNextSpeedChangeTimeUs(J)J

    move-result-wide v4

    move v7, v3

    move-wide v10, v4

    move-wide v3, v1

    move-wide v5, v3

    :goto_0
    move-wide v1, v10

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v1, v8

    if-eqz v8, :cond_1

    cmp-long v8, v1, v3

    if-lez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 339
    :goto_1
    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    sub-long v3, v1, v3

    long-to-float v3, v3

    div-float/2addr v3, v7

    float-to-long v3, v3

    add-long/2addr v5, v3

    .line 343
    invoke-interface {p1, v1, v2}, Landroidx/media3/common/audio/SpeedProvider;->getSpeed(J)F

    move-result v7

    .line 344
    invoke-virtual {p2, v5, v6}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 345
    invoke-virtual {p3, v1, v2}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 346
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-interface {p1, v1, v2}, Landroidx/media3/common/audio/SpeedProvider;->getNextSpeedChangeTimeUs(J)J

    move-result-wide v3

    move-wide v10, v3

    move-wide v3, v1

    goto :goto_0

    .line 349
    :cond_1
    invoke-virtual {p2}, Landroidx/media3/common/util/LongArray;->toArray()[J

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->outputSegmentStartTimesUs:[J

    .line 350
    invoke-virtual {p3}, Landroidx/media3/common/util/LongArray;->toArray()[J

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->inputSegmentStartTimesUs:[J

    .line 351
    invoke-static {v0}, Lcom/google/common/primitives/Floats;->toArray(Ljava/util/Collection;)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->speeds:[F

    return-void
.end method

.method static synthetic access$200(Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;J)J
    .locals 0

    .line 316
    invoke-direct {p0, p1, p2}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->getOriginalPeriodTimeUs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private getOriginalPeriodTimeUs(J)J
    .locals 2

    .line 373
    iget-wide v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->clipStartUs:J

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->getOriginalTimeUs(J)J

    move-result-wide p1

    iget-wide v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->clipStartUs:J

    add-long/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public getAdjustedPeriodTimeUs(J)J
    .locals 2

    .line 362
    iget-wide v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->clipStartUs:J

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->getAdjustedTimeUs(J)J

    move-result-wide p1

    iget-wide v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->clipStartUs:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public getAdjustedTimeUs(J)J
    .locals 4

    .line 377
    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->inputSegmentStartTimesUs:[J

    const/4 v1, 0x1

    .line 378
    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 383
    iget-object v1, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->outputSegmentStartTimesUs:[J

    aget-wide v1, v1, v0

    long-to-float v1, v1

    iget-object v2, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->inputSegmentStartTimesUs:[J

    aget-wide v2, v2, v0

    sub-long/2addr p1, v2

    long-to-float p1, p1

    iget-object p2, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->speeds:[F

    aget p2, p2, v0

    div-float/2addr p1, p2

    add-float/2addr v1, p1

    float-to-long p1, v1

    return-wide p1
.end method

.method public getOriginalTimeUs(J)J
    .locals 4

    .line 389
    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->outputSegmentStartTimesUs:[J

    const/4 v1, 0x1

    .line 390
    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 395
    iget-object v1, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->inputSegmentStartTimesUs:[J

    aget-wide v1, v1, v0

    long-to-float v1, v1

    iget-object v2, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->outputSegmentStartTimesUs:[J

    aget-wide v2, v2, v0

    sub-long/2addr p1, v2

    long-to-float p1, p1

    iget-object p2, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->speeds:[F

    aget p2, p2, v0

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    float-to-long p1, v1

    return-wide p1
.end method
