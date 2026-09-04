.class public abstract Lio/github/toyota32k/media/lib/codec/BaseDecoder;
.super Lio/github/toyota32k/media/lib/codec/BaseCodec;
.source "BaseDecoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u008f\u0001\u0010\u001b\u001a\u00020\n2#\u0010\u001c\u001a\u001f\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u001f\u0012\u0004\u0012\u00020 \u0018\u00010\u001d2`\u0010!\u001a\\\u0012\u0013\u0012\u00110#\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008($\u0012\u0013\u0012\u00110#\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(%\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(&\u0012\u0013\u0012\u00110\'\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008((\u0012\u0004\u0012\u00020 0\"H\u0004J\u0010\u0010\u001b\u001a\u00020\n2\u0006\u0010)\u001a\u00020*H&R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00068TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0008R\u0014\u0010\u0011\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006+"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/codec/BaseDecoder;",
        "Lio/github/toyota32k/media/lib/codec/BaseCodec;",
        "format",
        "Landroid/media/MediaFormat;",
        "(Landroid/media/MediaFormat;)V",
        "decoder",
        "Landroid/media/MediaCodec;",
        "getDecoder",
        "()Landroid/media/MediaCodec;",
        "decoderEos",
        "",
        "getDecoderEos",
        "()Z",
        "setDecoderEos",
        "(Z)V",
        "mediaCodec",
        "getMediaCodec",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "trimmingRange",
        "Lio/github/toyota32k/media/lib/converter/TrimmingRange;",
        "getTrimmingRange",
        "()Lio/github/toyota32k/media/lib/converter/TrimmingRange;",
        "setTrimmingRange",
        "(Lio/github/toyota32k/media/lib/converter/TrimmingRange;)V",
        "chainTo",
        "formatChanged",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "decodedFormat",
        "",
        "dataConsumed",
        "Lkotlin/Function4;",
        "",
        "index",
        "length",
        "end",
        "",
        "timeUs",
        "encoder",
        "Lio/github/toyota32k/media/lib/codec/BaseEncoder;",
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
.field private final decoder:Landroid/media/MediaCodec;

.field private decoderEos:Z

.field private trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;)V
    .locals 1

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lio/github/toyota32k/media/lib/codec/BaseCodec;-><init>(Landroid/media/MediaFormat;)V

    .line 9
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    const-string v0, "createDecoderByType(form\u2026(MediaFormat.KEY_MIME)!!)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->decoder:Landroid/media/MediaCodec;

    .line 10
    sget-object p1, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->Companion:Lio/github/toyota32k/media/lib/converter/TrimmingRange$Companion;

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/converter/TrimmingRange$Companion;->getEmpty()Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    move-result-object p1

    iput-object p1, p0, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    return-void
.end method


# virtual methods
.method public abstract chainTo(Lio/github/toyota32k/media/lib/codec/BaseEncoder;)Z
.end method

.method protected final chainTo(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/media/MediaFormat;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "dataConsumed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->decoderEos:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 27
    :goto_0
    iget-object v2, p0, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->getBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v3, 0x1

    if-ltz v2, :cond_3

    .line 30
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object p1

    new-instance v0, Lio/github/toyota32k/media/lib/codec/BaseDecoder$chainTo$1;

    invoke-direct {v0, v2, p0}, Lio/github/toyota32k/media/lib/codec/BaseDecoder$chainTo$1;-><init>(ILio/github/toyota32k/media/lib/codec/BaseDecoder;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0}, Lio/github/toyota32k/media/lib/utils/UtLog;->verbose(Lkotlin/jvm/functions/Function0;)V

    .line 31
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->getBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object p1

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    move v1, v3

    :cond_1
    if-eqz v1, :cond_2

    .line 33
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object p1

    const-string v0, "found eos"

    invoke-virtual {p1, v0}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 34
    iput-boolean v3, p0, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->decoderEos:Z

    .line 36
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->getBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->getBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v2

    iget-wide v4, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, p1, v0, v1, v2}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_3
    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    .line 40
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object p1

    sget-object p2, Lio/github/toyota32k/media/lib/codec/BaseDecoder$chainTo$2;->INSTANCE:Lio/github/toyota32k/media/lib/codec/BaseDecoder$chainTo$2;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLog;->verbose(Lkotlin/jvm/functions/Function0;)V

    return v0

    :cond_4
    const/4 v0, -0x2

    if-ne v2, v0, :cond_6

    .line 44
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v0

    const-string v2, "format changed"

    invoke-virtual {v0, v2}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    if-nez p1, :cond_5

    goto :goto_1

    .line 45
    :cond_5
    iget-object v0, p0, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "decoder.outputFormat"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    const/4 v0, -0x3

    if-ne v2, v0, :cond_7

    .line 49
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v0

    const-string v2, "BUFFERS_CHANGED ... ignorable."

    invoke-virtual {v0, v2}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 51
    :cond_7
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unknown index ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/github/toyota32k/media/lib/utils/UtLog;->error(Ljava/lang/String;)V

    :goto_1
    move v0, v3

    goto/16 :goto_0
.end method

.method public final getDecoder()Landroid/media/MediaCodec;
    .locals 1

    .line 9
    iget-object v0, p0, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->decoder:Landroid/media/MediaCodec;

    return-object v0
.end method

.method protected final getDecoderEos()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->decoderEos:Z

    return v0
.end method

.method protected getMediaCodec()Landroid/media/MediaCodec;
    .locals 1

    .line 12
    iget-object v0, p0, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->decoder:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Decoder("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->getSampleType()Lio/github/toyota32k/media/lib/track/Muxer$SampleType;

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

.method public final getTrimmingRange()Lio/github/toyota32k/media/lib/converter/TrimmingRange;
    .locals 1

    .line 10
    iget-object v0, p0, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    return-object v0
.end method

.method protected final setDecoderEos(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->decoderEos:Z

    return-void
.end method

.method public final setTrimmingRange(Lio/github/toyota32k/media/lib/converter/TrimmingRange;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    return-void
.end method
