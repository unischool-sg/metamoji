.class public final Lio/github/toyota32k/media/lib/codec/AudioDecoder;
.super Lio/github/toyota32k/media/lib/codec/BaseDecoder;
.source "AudioDecoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/codec/AudioDecoder;",
        "Lio/github/toyota32k/media/lib/codec/BaseDecoder;",
        "format",
        "Landroid/media/MediaFormat;",
        "(Landroid/media/MediaFormat;)V",
        "audioChannel",
        "Lio/github/toyota32k/media/lib/audio/AudioChannel;",
        "sampleType",
        "Lio/github/toyota32k/media/lib/track/Muxer$SampleType;",
        "getSampleType",
        "()Lio/github/toyota32k/media/lib/track/Muxer$SampleType;",
        "chainTo",
        "",
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
.field private final audioChannel:Lio/github/toyota32k/media/lib/audio/AudioChannel;

.field private final sampleType:Lio/github/toyota32k/media/lib/track/Muxer$SampleType;


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;)V
    .locals 1

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lio/github/toyota32k/media/lib/codec/BaseDecoder;-><init>(Landroid/media/MediaFormat;)V

    .line 8
    new-instance p1, Lio/github/toyota32k/media/lib/audio/AudioChannel;

    invoke-direct {p1}, Lio/github/toyota32k/media/lib/audio/AudioChannel;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->audioChannel:Lio/github/toyota32k/media/lib/audio/AudioChannel;

    .line 9
    sget-object p1, Lio/github/toyota32k/media/lib/track/Muxer$SampleType;->Audio:Lio/github/toyota32k/media/lib/track/Muxer$SampleType;

    iput-object p1, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->sampleType:Lio/github/toyota32k/media/lib/track/Muxer$SampleType;

    return-void
.end method

.method public static final synthetic access$getAudioChannel$p(Lio/github/toyota32k/media/lib/codec/AudioDecoder;)Lio/github/toyota32k/media/lib/audio/AudioChannel;
    .locals 0

    .line 7
    iget-object p0, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->audioChannel:Lio/github/toyota32k/media/lib/audio/AudioChannel;

    return-object p0
.end method


# virtual methods
.method public chainTo(Lio/github/toyota32k/media/lib/codec/BaseEncoder;)Z
    .locals 4

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->getDecoderEos()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$1;

    invoke-direct {v0, p0}, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$1;-><init>(Lio/github/toyota32k/media/lib/codec/AudioDecoder;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance v1, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$2;

    invoke-direct {v1, p0, p1}, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$2;-><init>(Lio/github/toyota32k/media/lib/codec/AudioDecoder;Lio/github/toyota32k/media/lib/codec/BaseEncoder;)V

    check-cast v1, Lkotlin/jvm/functions/Function4;

    invoke-virtual {p0, v0, v1}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->chainTo(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)Z

    move-result p1

    return p1

    .line 38
    :cond_0
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->getEos()Z

    move-result v0

    if-nez v0, :cond_2

    .line 40
    iget-object v0, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->audioChannel:Lio/github/toyota32k/media/lib/audio/AudioChannel;

    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->getDecoder()Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getEncoder()Landroid/media/MediaCodec;

    move-result-object p1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lio/github/toyota32k/media/lib/audio/AudioChannel;->feedEncoder(Landroid/media/MediaCodec;Landroid/media/MediaCodec;J)Z

    move-result p1

    .line 41
    iget-object v0, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->audioChannel:Lio/github/toyota32k/media/lib/audio/AudioChannel;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/audio/AudioChannel;->getEos()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v0

    const-string v1, "decoder complete (AudioChannel flushed)"

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, v0}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->setEos(Z)V

    :cond_1
    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getSampleType()Lio/github/toyota32k/media/lib/track/Muxer$SampleType;
    .locals 1

    .line 9
    iget-object v0, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->sampleType:Lio/github/toyota32k/media/lib/track/Muxer$SampleType;

    return-object v0
.end method
