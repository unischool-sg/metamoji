.class public abstract Lio/github/toyota32k/media/lib/codec/BaseEncoder;
.super Lio/github/toyota32k/media/lib/codec/BaseCodec;
.source "BaseEncoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u0008\u0010\u0018\u001a\u00020\u0019H\u0014J\u000e\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\u00068TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008R\u0014\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u001e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001b"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/codec/BaseEncoder;",
        "Lio/github/toyota32k/media/lib/codec/BaseCodec;",
        "format",
        "Landroid/media/MediaFormat;",
        "(Landroid/media/MediaFormat;)V",
        "encoder",
        "Landroid/media/MediaCodec;",
        "getEncoder",
        "()Landroid/media/MediaCodec;",
        "mediaCodec",
        "getMediaCodec",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "<set-?>",
        "",
        "writtenPresentationTimeUs",
        "getWrittenPresentationTimeUs",
        "()J",
        "chainTo",
        "",
        "muxer",
        "Lio/github/toyota32k/media/lib/track/Muxer;",
        "configure",
        "",
        "forceEos",
        "libMedia_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final encoder:Landroid/media/MediaCodec;

.field private writtenPresentationTimeUs:J


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;)V
    .locals 1

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lio/github/toyota32k/media/lib/codec/BaseCodec;-><init>(Landroid/media/MediaFormat;)V

    .line 8
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    const-string v0, "createEncoderByType(form\u2026(MediaFormat.KEY_MIME)!!)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->encoder:Landroid/media/MediaCodec;

    return-void
.end method


# virtual methods
.method public final chainTo(Lio/github/toyota32k/media/lib/track/Muxer;)Z
    .locals 13

    const-string v0, "muxer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 21
    :cond_0
    :goto_0
    iget-object v2, p0, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 24
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object p1

    sget-object v0, Lio/github/toyota32k/media/lib/codec/BaseEncoder$chainTo$1;->INSTANCE:Lio/github/toyota32k/media/lib/codec/BaseEncoder$chainTo$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0}, Lio/github/toyota32k/media/lib/utils/UtLog;->verbose(Lkotlin/jvm/functions/Function0;)V

    return v1

    :cond_1
    const/4 v3, -0x2

    const/4 v6, 0x1

    if-ne v2, v3, :cond_2

    .line 28
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v1

    const-string v2, "input format changed."

    invoke-virtual {v1, v2}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "encoder.outputFormat"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getSampleType()Lio/github/toyota32k/media/lib/track/Muxer$SampleType;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lio/github/toyota32k/media/lib/track/Muxer;->setOutputFormat(Lio/github/toyota32k/media/lib/track/Muxer$SampleType;Landroid/media/MediaFormat;)V

    :goto_1
    move v1, v6

    goto :goto_0

    :cond_2
    if-ltz v2, :cond_0

    .line 35
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v1

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 36
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v1

    const-string v3, "found end of stream."

    invoke-virtual {v1, v3}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, v6}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->setEos(Z)V

    .line 38
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v7

    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v1

    iget v12, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto :goto_2

    .line 40
    :cond_3
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v1

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 41
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v1

    const-string v3, "codec config."

    invoke-virtual {v1, v3}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_1

    .line 45
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v1

    new-instance v3, Lio/github/toyota32k/media/lib/codec/BaseEncoder$chainTo$2;

    invoke-direct {v3, v2, p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder$chainTo$2;-><init>(ILio/github/toyota32k/media/lib/codec/BaseEncoder;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v3}, Lio/github/toyota32k/media/lib/utils/UtLog;->verbose(Lkotlin/jvm/functions/Function0;)V

    .line 46
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getSampleType()Lio/github/toyota32k/media/lib/track/Muxer$SampleType;

    move-result-object v1

    iget-object v3, p0, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v7, "encoder.getOutputBuffer(result)!!"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v7

    invoke-virtual {p1, v1, v3, v7}, Lio/github/toyota32k/media/lib/track/Muxer;->writeSampleData(Lio/github/toyota32k/media/lib/track/Muxer$SampleType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 47
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object p1

    iget-wide v7, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long p1, v7, v4

    if-lez p1, :cond_5

    .line 48
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object p1

    iget-wide v3, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v3, p0, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->writtenPresentationTimeUs:J

    .line 50
    :cond_5
    iget-object p1, p0, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, v2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v6
.end method

.method protected configure()V
    .locals 4

    .line 15
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getMediaCodec()Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getMediaFormat()Landroid/media/MediaFormat;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method public final forceEos(Lio/github/toyota32k/media/lib/track/Muxer;)Z
    .locals 2

    const-string v0, "muxer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getEos()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v0

    const-string v1, "forced to set eos."

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, v0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->setEos(Z)V

    .line 62
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getSampleType()Lio/github/toyota32k/media/lib/track/Muxer$SampleType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/github/toyota32k/media/lib/track/Muxer;->complete(Lio/github/toyota32k/media/lib/track/Muxer$SampleType;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getEncoder()Landroid/media/MediaCodec;
    .locals 1

    .line 8
    iget-object v0, p0, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->encoder:Landroid/media/MediaCodec;

    return-object v0
.end method

.method protected getMediaCodec()Landroid/media/MediaCodec;
    .locals 1

    .line 10
    iget-object v0, p0, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->encoder:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Encoder("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getSampleType()Lio/github/toyota32k/media/lib/track/Muxer$SampleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWrittenPresentationTimeUs()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->writtenPresentationTimeUs:J

    return-wide v0
.end method
