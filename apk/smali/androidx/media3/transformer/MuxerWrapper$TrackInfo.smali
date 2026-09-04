.class final Landroidx/media3/transformer/MuxerWrapper$TrackInfo;
.super Ljava/lang/Object;
.source "MuxerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/MuxerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackInfo"
.end annotation


# instance fields
.field public bytesWritten:J

.field public endTimeUs:J

.field public final format:Landroidx/media3/common/Format;

.field public sampleCount:I

.field public startTimeUs:J

.field public final trackId:I


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;I)V
    .locals 0

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 770
    iput-object p1, p0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->format:Landroidx/media3/common/Format;

    .line 771
    iput p2, p0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->trackId:I

    return-void
.end method


# virtual methods
.method public getAverageBitrate()I
    .locals 11

    .line 779
    iget-wide v0, p0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->endTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-wide v5, p0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->bytesWritten:J

    cmp-long v2, v5, v2

    if-lez v2, :cond_1

    iget-wide v2, p0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->startTimeUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v7, 0x7a1200

    sub-long v9, v0, v2

    .line 786
    invoke-static/range {v5 .. v10}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_1
    :goto_0
    const v0, -0x7fffffff

    return v0
.end method
