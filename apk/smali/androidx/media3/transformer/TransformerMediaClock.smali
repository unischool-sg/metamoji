.class final Landroidx/media3/transformer/TransformerMediaClock;
.super Ljava/lang/Object;
.source "TransformerMediaClock.java"

# interfaces
.implements Landroidx/media3/exoplayer/MediaClock;


# instance fields
.field private minTrackTimeUs:J

.field private final trackTypeToTimeUs:Landroid/util/SparseLongArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/transformer/TransformerMediaClock;->trackTypeToTimeUs:Landroid/util/SparseLongArray;

    return-void
.end method


# virtual methods
.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    .line 64
    sget-object v0, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    .line 55
    iget-wide v0, p0, Landroidx/media3/transformer/TransformerMediaClock;->minTrackTimeUs:J

    return-wide v0
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public updateTimeForTrackType(IJ)V
    .locals 5

    .line 39
    iget-object v0, p0, Landroidx/media3/transformer/TransformerMediaClock;->trackTypeToTimeUs:Landroid/util/SparseLongArray;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    cmp-long v1, p2, v3

    if-gtz v1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    iget-object v1, p0, Landroidx/media3/transformer/TransformerMediaClock;->trackTypeToTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    if-eqz v0, :cond_2

    .line 46
    iget-wide p1, p0, Landroidx/media3/transformer/TransformerMediaClock;->minTrackTimeUs:J

    cmp-long p1, v3, p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 47
    :cond_2
    :goto_1
    iget-object p1, p0, Landroidx/media3/transformer/TransformerMediaClock;->trackTypeToTimeUs:Landroid/util/SparseLongArray;

    invoke-static {p1}, Landroidx/media3/common/util/Util;->minValue(Landroid/util/SparseLongArray;)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/transformer/TransformerMediaClock;->minTrackTimeUs:J

    return-void
.end method
