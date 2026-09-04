.class Landroidx/media3/transformer/SpeedChangingMediaSource$1;
.super Landroidx/media3/exoplayer/source/ForwardingTimeline;
.source "SpeedChangingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/transformer/SpeedChangingMediaSource;->onChildSourceInfoRefreshed(Landroidx/media3/common/Timeline;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/transformer/SpeedChangingMediaSource;

.field final synthetic val$newTimeline:Landroidx/media3/common/Timeline;


# direct methods
.method constructor <init>(Landroidx/media3/transformer/SpeedChangingMediaSource;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 80
    iput-object p1, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$1;->this$0:Landroidx/media3/transformer/SpeedChangingMediaSource;

    iput-object p3, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$1;->val$newTimeline:Landroidx/media3/common/Timeline;

    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    return-void
.end method


# virtual methods
.method public getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 5

    .line 102
    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$1;->val$newTimeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object p1

    .line 103
    iget-wide p2, p1, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    const-string v1, "SpeedChangingMediaSource does not support Period instances starting after their Window."

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 107
    iget-wide v1, p1, Landroidx/media3/common/Timeline$Period;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v1, v3

    if-eqz p2, :cond_2

    .line 110
    iget-object p2, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$1;->this$0:Landroidx/media3/transformer/SpeedChangingMediaSource;

    invoke-static {p2}, Landroidx/media3/transformer/SpeedChangingMediaSource;->access$100(Landroidx/media3/transformer/SpeedChangingMediaSource;)J

    move-result-wide v1

    iget-wide v3, p1, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    neg-long v3, v3

    cmp-long p2, v1, v3

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_1
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 111
    iget-object p2, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$1;->this$0:Landroidx/media3/transformer/SpeedChangingMediaSource;

    .line 112
    invoke-static {p2}, Landroidx/media3/transformer/SpeedChangingMediaSource;->access$000(Landroidx/media3/transformer/SpeedChangingMediaSource;)Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;

    move-result-object p2

    iget-wide v0, p1, Landroidx/media3/common/Timeline$Period;->durationUs:J

    invoke-virtual {p2, v0, v1}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->getAdjustedPeriodTimeUs(J)J

    move-result-wide p2

    iput-wide p2, p1, Landroidx/media3/common/Timeline$Period;->durationUs:J

    :cond_2
    return-object p1
.end method

.method public getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 2

    .line 84
    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$1;->val$newTimeline:Landroidx/media3/common/Timeline;

    .line 85
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p1

    .line 86
    iget p2, p1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    iget p3, p1, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p3, "SpeedChangingMediaSource does not support multiple Period instances per Window."

    invoke-static {p2, p3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 90
    iget-wide p2, p1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p4, p2, v0

    if-eqz p4, :cond_1

    .line 94
    iget-object p4, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$1;->this$0:Landroidx/media3/transformer/SpeedChangingMediaSource;

    .line 95
    invoke-static {p4}, Landroidx/media3/transformer/SpeedChangingMediaSource;->access$000(Landroidx/media3/transformer/SpeedChangingMediaSource;)Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->getAdjustedTimeUs(J)J

    move-result-wide p2

    iput-wide p2, p1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    :cond_1
    return-object p1
.end method
