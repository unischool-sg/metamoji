.class public final Lio/github/toyota32k/media/lib/codec/VideoEncoder;
.super Lio/github/toyota32k/media/lib/codec/BaseEncoder;
.source "VideoEncoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0014R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/codec/VideoEncoder;",
        "Lio/github/toyota32k/media/lib/codec/BaseEncoder;",
        "format",
        "Landroid/media/MediaFormat;",
        "(Landroid/media/MediaFormat;)V",
        "inputSurface",
        "Lio/github/toyota32k/media/lib/surface/InputSurface;",
        "getInputSurface",
        "()Lio/github/toyota32k/media/lib/surface/InputSurface;",
        "setInputSurface",
        "(Lio/github/toyota32k/media/lib/surface/InputSurface;)V",
        "sampleType",
        "Lio/github/toyota32k/media/lib/track/Muxer$SampleType;",
        "getSampleType",
        "()Lio/github/toyota32k/media/lib/track/Muxer$SampleType;",
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
.field public inputSurface:Lio/github/toyota32k/media/lib/surface/InputSurface;

.field private final sampleType:Lio/github/toyota32k/media/lib/track/Muxer$SampleType;


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;)V
    .locals 1

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;-><init>(Landroid/media/MediaFormat;)V

    .line 9
    sget-object p1, Lio/github/toyota32k/media/lib/track/Muxer$SampleType;->Video:Lio/github/toyota32k/media/lib/track/Muxer$SampleType;

    iput-object p1, p0, Lio/github/toyota32k/media/lib/codec/VideoEncoder;->sampleType:Lio/github/toyota32k/media/lib/track/Muxer$SampleType;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 22
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/VideoEncoder;->getDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/VideoEncoder;->getInputSurface()Lio/github/toyota32k/media/lib/surface/InputSurface;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/surface/InputSurface;->release()V

    .line 25
    :cond_0
    invoke-super {p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->close()V

    return-void
.end method

.method protected configure()V
    .locals 4

    .line 16
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/VideoEncoder;->getEncoder()Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/VideoEncoder;->getMediaFormat()Landroid/media/MediaFormat;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 17
    new-instance v0, Lio/github/toyota32k/media/lib/surface/InputSurface;

    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/VideoEncoder;->getEncoder()Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/github/toyota32k/media/lib/surface/InputSurface;-><init>(Landroid/view/Surface;)V

    invoke-virtual {p0, v0}, Lio/github/toyota32k/media/lib/codec/VideoEncoder;->setInputSurface(Lio/github/toyota32k/media/lib/surface/InputSurface;)V

    .line 18
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/VideoEncoder;->getInputSurface()Lio/github/toyota32k/media/lib/surface/InputSurface;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/surface/InputSurface;->makeCurrent()V

    return-void
.end method

.method public final getInputSurface()Lio/github/toyota32k/media/lib/surface/InputSurface;
    .locals 1

    .line 11
    iget-object v0, p0, Lio/github/toyota32k/media/lib/codec/VideoEncoder;->inputSurface:Lio/github/toyota32k/media/lib/surface/InputSurface;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "inputSurface"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleType()Lio/github/toyota32k/media/lib/track/Muxer$SampleType;
    .locals 1

    .line 9
    iget-object v0, p0, Lio/github/toyota32k/media/lib/codec/VideoEncoder;->sampleType:Lio/github/toyota32k/media/lib/track/Muxer$SampleType;

    return-object v0
.end method

.method public final setInputSurface(Lio/github/toyota32k/media/lib/surface/InputSurface;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lio/github/toyota32k/media/lib/codec/VideoEncoder;->inputSurface:Lio/github/toyota32k/media/lib/surface/InputSurface;

    return-void
.end method
