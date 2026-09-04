.class final Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;
.super Ljava/lang/Object;
.source "SpeedChangingMediaSource.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;
.implements Landroidx/media3/exoplayer/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/SpeedChangingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SpeedProviderMediaPeriod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod$SpeedProviderMapperSampleStream;
    }
.end annotation


# instance fields
.field private callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

.field public final mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

.field private final speedProviderMapper:Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaPeriod;Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 137
    iput-object p2, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->speedProviderMapper:Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;

    return-void
.end method


# virtual methods
.method public continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 5

    .line 245
    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 247
    invoke-virtual {p1}, Landroidx/media3/exoplayer/LoadingInfo;->buildUpon()Landroidx/media3/exoplayer/LoadingInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->speedProviderMapper:Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;

    iget-wide v3, p1, Landroidx/media3/exoplayer/LoadingInfo;->playbackPositionUs:J

    .line 249
    invoke-static {v2, v3, v4}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->access$200(Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;J)J

    move-result-wide v2

    .line 248
    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/LoadingInfo$Builder;->setPlaybackPositionUs(J)Landroidx/media3/exoplayer/LoadingInfo$Builder;

    move-result-object p1

    .line 250
    invoke-virtual {p1}, Landroidx/media3/exoplayer/LoadingInfo$Builder;->build()Landroidx/media3/exoplayer/LoadingInfo;

    move-result-object p1

    .line 245
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/MediaPeriod;->continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)Z

    move-result p1

    return p1
.end method

.method public discardBuffer(JZ)V
    .locals 2

    .line 200
    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v1, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->speedProviderMapper:Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;

    .line 201
    invoke-static {v1, p1, p2}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->access$200(Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;J)J

    move-result-wide p1

    .line 200
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->discardBuffer(JZ)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 1

    .line 221
    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->speedProviderMapper:Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;

    invoke-static {v0, p1, p2}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->access$200(Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;J)J

    move-result-wide p1

    .line 222
    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 223
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J

    move-result-wide p1

    .line 224
    iget-object p3, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->speedProviderMapper:Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;

    invoke-virtual {p3, p1, p2}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->getAdjustedPeriodTimeUs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .locals 5

    .line 229
    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 232
    :cond_0
    iget-object v2, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->speedProviderMapper:Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;

    invoke-virtual {v2, v0, v1}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->getAdjustedPeriodTimeUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 5

    .line 237
    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 240
    :cond_0
    iget-object v2, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->speedProviderMapper:Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;

    invoke-virtual {v2, v0, v1}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->getAdjustedPeriodTimeUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media3/common/StreamKey;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/MediaPeriod;->getStreamKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 1

    .line 159
    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedMediaPeriod()Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 1

    .line 142
    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 255
    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->isLoading()Z

    move-result v0

    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->maybeThrowPrepareError()V

    return-void
.end method

.method public onContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 0

    .line 270
    iget-object p1, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 121
    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, p1}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 0

    .line 265
    iget-object p1, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 1

    .line 147
    iput-object p1, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 148
    iget-object p1, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->speedProviderMapper:Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;

    .line 149
    invoke-static {v0, p2, p3}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->access$200(Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;J)J

    move-result-wide p2

    .line 148
    invoke-interface {p1, p0, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 5

    .line 206
    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 210
    :cond_0
    iget-object v2, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->speedProviderMapper:Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;

    invoke-virtual {v2, v0, v1}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->getAdjustedPeriodTimeUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 2

    .line 260
    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v1, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->speedProviderMapper:Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;

    invoke-static {v1, p1, p2}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->access$200(Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;J)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->reevaluateBuffer(J)V

    return-void
.end method

.method public seekToUs(J)J
    .locals 2

    .line 215
    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->speedProviderMapper:Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;

    iget-object v1, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 216
    invoke-static {v0, p1, p2}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->access$200(Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;J)J

    move-result-wide p1

    invoke-interface {v1, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    .line 215
    invoke-virtual {v0, p1, p2}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->getAdjustedPeriodTimeUs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 9

    .line 174
    array-length v0, p3

    new-array v4, v0, [Landroidx/media3/exoplayer/source/SampleStream;

    const/4 v0, 0x0

    move v1, v0

    .line 175
    :goto_0
    array-length v2, p3

    const/4 v8, 0x0

    if-ge v1, v2, :cond_1

    .line 176
    aget-object v2, p3, v1

    check-cast v2, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod$SpeedProviderMapperSampleStream;

    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {v2}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod$SpeedProviderMapperSampleStream;->getChildStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v8

    :cond_0
    aput-object v8, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_1
    iget-object v1, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v2, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->speedProviderMapper:Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;

    .line 185
    invoke-static {v2, p5, p6}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->access$200(Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;J)J

    move-result-wide v6

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 180
    invoke-interface/range {v1 .. v7}, Landroidx/media3/exoplayer/source/MediaPeriod;->selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J

    move-result-wide p1

    .line 186
    :goto_1
    array-length p4, p3

    if-ge v0, p4, :cond_5

    .line 187
    aget-object p4, v4, v0

    if-nez p4, :cond_2

    .line 189
    aput-object v8, p3, v0

    goto :goto_2

    .line 190
    :cond_2
    aget-object p5, p3, v0

    if-eqz p5, :cond_3

    check-cast p5, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod$SpeedProviderMapperSampleStream;

    .line 191
    invoke-virtual {p5}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod$SpeedProviderMapperSampleStream;->getChildStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object p5

    if-eq p5, p4, :cond_4

    .line 192
    :cond_3
    new-instance p5, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod$SpeedProviderMapperSampleStream;

    iget-object p6, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->speedProviderMapper:Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;

    invoke-direct {p5, p4, p6}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod$SpeedProviderMapperSampleStream;-><init>(Landroidx/media3/exoplayer/source/SampleStream;Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;)V

    aput-object p5, p3, v0

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 195
    :cond_5
    iget-object p3, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;->speedProviderMapper:Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;

    invoke-virtual {p3, p1, p2}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->getAdjustedPeriodTimeUs(J)J

    move-result-wide p1

    return-wide p1
.end method
