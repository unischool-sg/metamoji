.class final Landroidx/media3/transformer/CompositionPlayer$CompositionFrameTimingEvaluator;
.super Ljava/lang/Object;
.source "CompositionPlayer.java"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/CompositionPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompositionFrameTimingEvaluator"
.end annotation


# static fields
.field private static final DEFAULT_FRAME_LATE_THRESHOLD_US:J = -0x7530L

.field private static final FRAME_RELEASE_THRESHOLD_US:J = 0x186a0L


# instance fields
.field private final lateThresholdUs:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 1929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1930
    iput-wide p1, p0, Landroidx/media3/transformer/CompositionPlayer$CompositionFrameTimingEvaluator;->lateThresholdUs:J

    return-void
.end method

.method synthetic constructor <init>(JLandroidx/media3/transformer/CompositionPlayer$1;)V
    .locals 0

    .line 1915
    invoke-direct {p0, p1, p2}, Landroidx/media3/transformer/CompositionPlayer$CompositionFrameTimingEvaluator;-><init>(J)V

    return-void
.end method


# virtual methods
.method public shouldDropFrame(JJZ)Z
    .locals 2

    .line 1943
    iget-wide p3, p0, Landroidx/media3/transformer/CompositionPlayer$CompositionFrameTimingEvaluator;->lateThresholdUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    cmp-long p1, p1, p3

    if-gez p1, :cond_1

    if-nez p5, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public shouldForceReleaseFrame(JJ)Z
    .locals 4

    .line 1935
    iget-wide v0, p0, Landroidx/media3/transformer/CompositionPlayer$CompositionFrameTimingEvaluator;->lateThresholdUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    cmp-long p1, p1, v0

    if-gez p1, :cond_1

    const-wide/32 p1, 0x186a0

    cmp-long p1, p3, p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v3
.end method

.method public shouldIgnoreFrame(JJJZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
