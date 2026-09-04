.class final Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AudioDecoder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/toyota32k/media/lib/codec/AudioDecoder;->chainTo(Lio/github/toyota32k/media/lib/codec/BaseEncoder;)Z
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

.field final synthetic this$0:Lio/github/toyota32k/media/lib/codec/AudioDecoder;


# direct methods
.method constructor <init>(Lio/github/toyota32k/media/lib/codec/AudioDecoder;Lio/github/toyota32k/media/lib/codec/BaseEncoder;)V
    .locals 0

    iput-object p1, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$2;->this$0:Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    iput-object p2, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$2;->$encoder:Lio/github/toyota32k/media/lib/codec/BaseEncoder;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 13
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

    invoke-virtual/range {v0 .. v5}, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$2;->invoke(IIZJ)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(IIZJ)V
    .locals 4

    const-wide/16 v0, 0x0

    if-lez p2, :cond_1

    .line 18
    iget-object p2, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$2;->this$0:Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    invoke-virtual {p2}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->getTrimmingRange()Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    move-result-object p2

    invoke-virtual {p2, p4, p5}, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->contains(J)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 20
    iget-object p2, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$2;->this$0:Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    invoke-virtual {p2}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object p2

    const-string p4, "render end of data."

    invoke-virtual {p2, p4}, Lio/github/toyota32k/media/lib/utils/UtLog;->info(Ljava/lang/String;)V

    .line 22
    :cond_0
    iget-object p2, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$2;->this$0:Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    invoke-static {p2}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->access$getAudioChannel$p(Lio/github/toyota32k/media/lib/codec/AudioDecoder;)Lio/github/toyota32k/media/lib/audio/AudioChannel;

    move-result-object p2

    iget-object p4, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$2;->this$0:Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    invoke-virtual {p4}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->getDecoder()Landroid/media/MediaCodec;

    move-result-object p4

    iget-object p5, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$2;->this$0:Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    invoke-virtual {p5}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->getBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object p5

    iget-wide v2, p5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p2, p4, p1, v2, v3}, Lio/github/toyota32k/media/lib/audio/AudioChannel;->drainDecoderBufferAndQueue(Landroid/media/MediaCodec;IJ)V

    .line 23
    iget-object p1, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$2;->this$0:Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    invoke-static {p1}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->access$getAudioChannel$p(Lio/github/toyota32k/media/lib/codec/AudioDecoder;)Lio/github/toyota32k/media/lib/audio/AudioChannel;

    move-result-object p1

    iget-object p2, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$2;->this$0:Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    invoke-virtual {p2}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->getDecoder()Landroid/media/MediaCodec;

    move-result-object p2

    iget-object p4, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$2;->$encoder:Lio/github/toyota32k/media/lib/codec/BaseEncoder;

    invoke-virtual {p4}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getEncoder()Landroid/media/MediaCodec;

    move-result-object p4

    invoke-virtual {p1, p2, p4, v0, v1}, Lio/github/toyota32k/media/lib/audio/AudioChannel;->feedEncoder(Landroid/media/MediaCodec;Landroid/media/MediaCodec;J)Z

    :cond_1
    if-eqz p3, :cond_2

    .line 26
    iget-object p1, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$2;->this$0:Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object p1

    const-string p2, "found eos"

    invoke-virtual {p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$2;->this$0:Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    invoke-static {p1}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->access$getAudioChannel$p(Lio/github/toyota32k/media/lib/codec/AudioDecoder;)Lio/github/toyota32k/media/lib/audio/AudioChannel;

    move-result-object p1

    iget-object p2, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$2;->this$0:Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    invoke-virtual {p2}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->getDecoder()Landroid/media/MediaCodec;

    move-result-object p2

    sget-object p3, Lio/github/toyota32k/media/lib/audio/AudioChannel;->Companion:Lio/github/toyota32k/media/lib/audio/AudioChannel$Companion;

    invoke-virtual {p3}, Lio/github/toyota32k/media/lib/audio/AudioChannel$Companion;->getBUFFER_INDEX_END_OF_STREAM()I

    move-result p3

    invoke-virtual {p1, p2, p3, v0, v1}, Lio/github/toyota32k/media/lib/audio/AudioChannel;->drainDecoderBufferAndQueue(Landroid/media/MediaCodec;IJ)V

    .line 28
    iget-object p1, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$2;->this$0:Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    invoke-static {p1}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->access$getAudioChannel$p(Lio/github/toyota32k/media/lib/codec/AudioDecoder;)Lio/github/toyota32k/media/lib/audio/AudioChannel;

    move-result-object p1

    iget-object p2, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$2;->this$0:Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    invoke-virtual {p2}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->getDecoder()Landroid/media/MediaCodec;

    move-result-object p2

    iget-object p3, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$2;->$encoder:Lio/github/toyota32k/media/lib/codec/BaseEncoder;

    invoke-virtual {p3}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getEncoder()Landroid/media/MediaCodec;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v0, v1}, Lio/github/toyota32k/media/lib/audio/AudioChannel;->feedEncoder(Landroid/media/MediaCodec;Landroid/media/MediaCodec;J)Z

    .line 29
    iget-object p1, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$2;->this$0:Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    invoke-static {p1}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->access$getAudioChannel$p(Lio/github/toyota32k/media/lib/codec/AudioDecoder;)Lio/github/toyota32k/media/lib/audio/AudioChannel;

    move-result-object p1

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/audio/AudioChannel;->getEos()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 33
    iget-object p1, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$2;->this$0:Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object p1

    const-string p2, "decoder complete (no more buffer in AudioChannel"

    invoke-virtual {p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$2;->this$0:Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->setEos(Z)V

    :cond_2
    return-void
.end method
