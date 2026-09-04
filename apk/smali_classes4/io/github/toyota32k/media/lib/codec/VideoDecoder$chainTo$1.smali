.class final Lio/github/toyota32k/media/lib/codec/VideoDecoder$chainTo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "VideoDecoder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/toyota32k/media/lib/codec/VideoDecoder;->chainTo(Lio/github/toyota32k/media/lib/codec/BaseEncoder;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Long;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "index",
        "",
        "length",
        "end",
        "",
        "timeUs",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $encoder:Lio/github/toyota32k/media/lib/codec/BaseEncoder;

.field final synthetic this$0:Lio/github/toyota32k/media/lib/codec/VideoDecoder;


# direct methods
.method constructor <init>(Lio/github/toyota32k/media/lib/codec/VideoDecoder;Lio/github/toyota32k/media/lib/codec/BaseEncoder;)V
    .locals 0

    iput-object p1, p0, Lio/github/toyota32k/media/lib/codec/VideoDecoder$chainTo$1;->this$0:Lio/github/toyota32k/media/lib/codec/VideoDecoder;

    iput-object p2, p0, Lio/github/toyota32k/media/lib/codec/VideoDecoder$chainTo$1;->$encoder:Lio/github/toyota32k/media/lib/codec/BaseEncoder;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 16
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lio/github/toyota32k/media/lib/codec/VideoDecoder$chainTo$1;->invoke(IIZJ)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(IIZJ)V
    .locals 3

    const/4 v0, 0x1

    if-lez p2, :cond_0

    .line 17
    iget-object p2, p0, Lio/github/toyota32k/media/lib/codec/VideoDecoder$chainTo$1;->this$0:Lio/github/toyota32k/media/lib/codec/VideoDecoder;

    invoke-virtual {p2}, Lio/github/toyota32k/media/lib/codec/VideoDecoder;->getTrimmingRange()Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    move-result-object p2

    invoke-virtual {p2, p4, p5}, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->contains(J)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 18
    :goto_0
    iget-object p4, p0, Lio/github/toyota32k/media/lib/codec/VideoDecoder$chainTo$1;->this$0:Lio/github/toyota32k/media/lib/codec/VideoDecoder;

    invoke-virtual {p4}, Lio/github/toyota32k/media/lib/codec/VideoDecoder;->getDecoder()Landroid/media/MediaCodec;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-eqz p2, :cond_4

    .line 19
    iget-object p1, p0, Lio/github/toyota32k/media/lib/codec/VideoDecoder$chainTo$1;->$encoder:Lio/github/toyota32k/media/lib/codec/BaseEncoder;

    instance-of p1, p1, Lio/github/toyota32k/media/lib/codec/VideoEncoder;

    if-eqz p1, :cond_4

    if-eqz p3, :cond_1

    .line 21
    iget-object p1, p0, Lio/github/toyota32k/media/lib/codec/VideoDecoder$chainTo$1;->this$0:Lio/github/toyota32k/media/lib/codec/VideoDecoder;

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/codec/VideoDecoder;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object p1

    const-string p2, "render end of data."

    invoke-virtual {p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLog;->info(Ljava/lang/String;)V

    .line 23
    :cond_1
    iget-object p1, p0, Lio/github/toyota32k/media/lib/codec/VideoDecoder$chainTo$1;->this$0:Lio/github/toyota32k/media/lib/codec/VideoDecoder;

    invoke-static {p1}, Lio/github/toyota32k/media/lib/codec/VideoDecoder;->access$getOutputSurface$p(Lio/github/toyota32k/media/lib/codec/VideoDecoder;)Lio/github/toyota32k/media/lib/surface/OutputSurface;

    move-result-object p1

    const/4 p2, 0x0

    const-string p4, "outputSurface"

    if-nez p1, :cond_2

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/surface/OutputSurface;->awaitNewImage()V

    .line 24
    iget-object p1, p0, Lio/github/toyota32k/media/lib/codec/VideoDecoder$chainTo$1;->this$0:Lio/github/toyota32k/media/lib/codec/VideoDecoder;

    invoke-static {p1}, Lio/github/toyota32k/media/lib/codec/VideoDecoder;->access$getOutputSurface$p(Lio/github/toyota32k/media/lib/codec/VideoDecoder;)Lio/github/toyota32k/media/lib/surface/OutputSurface;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object p2, p1

    :goto_1
    invoke-virtual {p2}, Lio/github/toyota32k/media/lib/surface/OutputSurface;->drawImage()V

    .line 25
    iget-object p1, p0, Lio/github/toyota32k/media/lib/codec/VideoDecoder$chainTo$1;->$encoder:Lio/github/toyota32k/media/lib/codec/BaseEncoder;

    check-cast p1, Lio/github/toyota32k/media/lib/codec/VideoEncoder;

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/codec/VideoEncoder;->getInputSurface()Lio/github/toyota32k/media/lib/surface/InputSurface;

    move-result-object p1

    iget-object p2, p0, Lio/github/toyota32k/media/lib/codec/VideoDecoder$chainTo$1;->this$0:Lio/github/toyota32k/media/lib/codec/VideoDecoder;

    invoke-virtual {p2}, Lio/github/toyota32k/media/lib/codec/VideoDecoder;->getBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object p2

    iget-wide p4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/16 p2, 0x3e8

    int-to-long v1, p2

    mul-long/2addr p4, v1

    invoke-virtual {p1, p4, p5}, Lio/github/toyota32k/media/lib/surface/InputSurface;->setPresentationTime(J)V

    .line 26
    iget-object p1, p0, Lio/github/toyota32k/media/lib/codec/VideoDecoder$chainTo$1;->$encoder:Lio/github/toyota32k/media/lib/codec/BaseEncoder;

    check-cast p1, Lio/github/toyota32k/media/lib/codec/VideoEncoder;

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/codec/VideoEncoder;->getInputSurface()Lio/github/toyota32k/media/lib/surface/InputSurface;

    move-result-object p1

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/surface/InputSurface;->swapBuffers()Z

    :cond_4
    if-eqz p3, :cond_5

    .line 29
    iget-object p1, p0, Lio/github/toyota32k/media/lib/codec/VideoDecoder$chainTo$1;->this$0:Lio/github/toyota32k/media/lib/codec/VideoDecoder;

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/codec/VideoDecoder;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object p1

    const-string p2, "signal end of input stream to encoder."

    invoke-virtual {p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLog;->info(Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lio/github/toyota32k/media/lib/codec/VideoDecoder$chainTo$1;->this$0:Lio/github/toyota32k/media/lib/codec/VideoDecoder;

    invoke-virtual {p1, v0}, Lio/github/toyota32k/media/lib/codec/VideoDecoder;->setEos(Z)V

    .line 31
    iget-object p1, p0, Lio/github/toyota32k/media/lib/codec/VideoDecoder$chainTo$1;->$encoder:Lio/github/toyota32k/media/lib/codec/BaseEncoder;

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getEncoder()Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    :cond_5
    return-void
.end method
