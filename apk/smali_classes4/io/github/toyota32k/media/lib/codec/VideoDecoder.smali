.class public final Lio/github/toyota32k/media/lib/codec/VideoDecoder;
.super Lio/github/toyota32k/media/lib/codec/BaseDecoder;
.source "VideoDecoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/codec/VideoDecoder;",
        "Lio/github/toyota32k/media/lib/codec/BaseDecoder;",
        "format",
        "Landroid/media/MediaFormat;",
        "(Landroid/media/MediaFormat;)V",
        "outputSurface",
        "Lio/github/toyota32k/media/lib/surface/OutputSurface;",
        "sampleType",
        "Lio/github/toyota32k/media/lib/track/Muxer$SampleType;",
        "getSampleType",
        "()Lio/github/toyota32k/media/lib/track/Muxer$SampleType;",
        "chainTo",
        "",
        "encoder",
        "Lio/github/toyota32k/media/lib/codec/BaseEncoder;",
        "close",
        "",
        "configure",
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
.field private outputSurface:Lio/github/toyota32k/media/lib/surface/OutputSurface;

.field private final sampleType:Lio/github/toyota32k/media/lib/track/Muxer$SampleType;


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;)V
    .locals 1

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lio/github/toyota32k/media/lib/codec/BaseDecoder;-><init>(Landroid/media/MediaFormat;)V

    .line 9
    sget-object p1, Lio/github/toyota32k/media/lib/track/Muxer$SampleType;->Video:Lio/github/toyota32k/media/lib/track/Muxer$SampleType;

    iput-object p1, p0, Lio/github/toyota32k/media/lib/codec/VideoDecoder;->sampleType:Lio/github/toyota32k/media/lib/track/Muxer$SampleType;

    return-void
.end method

.method public static final synthetic access$getOutputSurface$p(Lio/github/toyota32k/media/lib/codec/VideoDecoder;)Lio/github/toyota32k/media/lib/surface/OutputSurface;
    .locals 0

    .line 7
    iget-object p0, p0, Lio/github/toyota32k/media/lib/codec/VideoDecoder;->outputSurface:Lio/github/toyota32k/media/lib/surface/OutputSurface;

    return-object p0
.end method


# virtual methods
.method public chainTo(Lio/github/toyota32k/media/lib/codec/BaseEncoder;)Z
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lio/github/toyota32k/media/lib/codec/VideoDecoder$chainTo$1;

    invoke-direct {v0, p0, p1}, Lio/github/toyota32k/media/lib/codec/VideoDecoder$chainTo$1;-><init>(Lio/github/toyota32k/media/lib/codec/VideoDecoder;Lio/github/toyota32k/media/lib/codec/BaseEncoder;)V

    check-cast v0, Lkotlin/jvm/functions/Function4;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lio/github/toyota32k/media/lib/codec/VideoDecoder;->chainTo(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)Z

    move-result p1

    return p1
.end method

.method public close()V
    .locals 1

    .line 37
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/VideoDecoder;->getDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lio/github/toyota32k/media/lib/codec/VideoDecoder;->outputSurface:Lio/github/toyota32k/media/lib/surface/OutputSurface;

    if-nez v0, :cond_0

    const-string v0, "outputSurface"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/surface/OutputSurface;->release()V

    .line 40
    :cond_1
    invoke-super {p0}, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->close()V

    return-void
.end method

.method protected configure()V
    .locals 5

    .line 11
    new-instance v0, Lio/github/toyota32k/media/lib/surface/OutputSurface;

    invoke-direct {v0}, Lio/github/toyota32k/media/lib/surface/OutputSurface;-><init>()V

    iput-object v0, p0, Lio/github/toyota32k/media/lib/codec/VideoDecoder;->outputSurface:Lio/github/toyota32k/media/lib/surface/OutputSurface;

    .line 12
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/VideoDecoder;->getMediaCodec()Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/VideoDecoder;->getMediaFormat()Landroid/media/MediaFormat;

    move-result-object v1

    iget-object v2, p0, Lio/github/toyota32k/media/lib/codec/VideoDecoder;->outputSurface:Lio/github/toyota32k/media/lib/surface/OutputSurface;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "outputSurface"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    invoke-virtual {v2}, Lio/github/toyota32k/media/lib/surface/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method public getSampleType()Lio/github/toyota32k/media/lib/track/Muxer$SampleType;
    .locals 1

    .line 9
    iget-object v0, p0, Lio/github/toyota32k/media/lib/codec/VideoDecoder;->sampleType:Lio/github/toyota32k/media/lib/track/Muxer$SampleType;

    return-object v0
.end method
