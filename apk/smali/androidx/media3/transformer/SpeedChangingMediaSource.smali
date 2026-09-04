.class final Landroidx/media3/transformer/SpeedChangingMediaSource;
.super Landroidx/media3/exoplayer/source/WrappingMediaSource;
.source "SpeedChangingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;,
        Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;
    }
.end annotation


# instance fields
.field private final clipStartUs:J

.field private final speedProviderMapper:Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/audio/SpeedProvider;Landroidx/media3/common/MediaItem$ClippingConfiguration;)V
    .locals 2

    .line 60
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/WrappingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 61
    iget-wide v0, p3, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    iput-wide v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource;->clipStartUs:J

    .line 62
    new-instance p1, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;

    invoke-direct {p1, p2, v0, v1}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;-><init>(Landroidx/media3/common/audio/SpeedProvider;J)V

    iput-object p1, p0, Landroidx/media3/transformer/SpeedChangingMediaSource;->speedProviderMapper:Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/transformer/SpeedChangingMediaSource;)Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;
    .locals 0

    .line 51
    iget-object p0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource;->speedProviderMapper:Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/media3/transformer/SpeedChangingMediaSource;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource;->clipStartUs:J

    return-wide v0
.end method


# virtual methods
.method public createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 1

    .line 67
    new-instance v0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/transformer/SpeedChangingMediaSource;->speedProviderMapper:Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;

    invoke-direct {v0, p1, p2}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaPeriod;Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;)V

    return-object v0
.end method

.method protected onChildSourceInfoRefreshed(Landroidx/media3/common/Timeline;)V
    .locals 1

    .line 79
    new-instance v0, Landroidx/media3/transformer/SpeedChangingMediaSource$1;

    invoke-direct {v0, p0, p1, p1}, Landroidx/media3/transformer/SpeedChangingMediaSource$1;-><init>(Landroidx/media3/transformer/SpeedChangingMediaSource;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)V

    .line 117
    invoke-super {p0, v0}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->onChildSourceInfoRefreshed(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 0

    .line 73
    check-cast p1, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;

    invoke-virtual {p1}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->getWrappedMediaPeriod()Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object p1

    .line 74
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method
