.class final Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod$SpeedProviderMapperSampleStream;
.super Ljava/lang/Object;
.source "SpeedChangingMediaSource.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpeedProviderMapperSampleStream"
.end annotation


# instance fields
.field private final sampleStream:Landroidx/media3/exoplayer/source/SampleStream;

.field private final speedProviderMapper:Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/SampleStream;Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;)V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod$SpeedProviderMapperSampleStream;->sampleStream:Landroidx/media3/exoplayer/source/SampleStream;

    .line 281
    iput-object p2, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod$SpeedProviderMapperSampleStream;->speedProviderMapper:Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;

    return-void
.end method


# virtual methods
.method public getChildStream()Landroidx/media3/exoplayer/source/SampleStream;
    .locals 1

    .line 285
    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod$SpeedProviderMapperSampleStream;->sampleStream:Landroidx/media3/exoplayer/source/SampleStream;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .line 290
    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod$SpeedProviderMapperSampleStream;->sampleStream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SampleStream;->isReady()Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod$SpeedProviderMapperSampleStream;->sampleStream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SampleStream;->maybeThrowError()V

    return-void
.end method

.method public readData(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 2

    .line 301
    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod$SpeedProviderMapperSampleStream;->sampleStream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/SampleStream;->readData(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_0

    .line 303
    iget-object p3, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod$SpeedProviderMapperSampleStream;->speedProviderMapper:Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;

    iget-wide v0, p2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {p3, v0, v1}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->getAdjustedPeriodTimeUs(J)J

    move-result-wide v0

    iput-wide v0, p2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    :cond_0
    return p1
.end method

.method public skipData(J)I
    .locals 2

    .line 310
    iget-object v0, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod$SpeedProviderMapperSampleStream;->sampleStream:Landroidx/media3/exoplayer/source/SampleStream;

    iget-object v1, p0, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMediaPeriod$SpeedProviderMapperSampleStream;->speedProviderMapper:Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;

    invoke-static {v1, p1, p2}, Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;->access$200(Landroidx/media3/transformer/SpeedChangingMediaSource$SpeedProviderMapper;J)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/SampleStream;->skipData(J)I

    move-result p1

    return p1
.end method
