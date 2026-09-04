.class final Landroidx/media3/transformer/CapturingDecoderFactory;
.super Ljava/lang/Object;
.source "CapturingDecoderFactory.java"

# interfaces
.implements Landroidx/media3/transformer/Codec$DecoderFactory;


# instance fields
.field private audioDecoderName:Ljava/lang/String;

.field private final decoderFactory:Landroidx/media3/transformer/Codec$DecoderFactory;

.field private videoDecoderName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/Codec$DecoderFactory;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroidx/media3/transformer/CapturingDecoderFactory;->decoderFactory:Landroidx/media3/transformer/Codec$DecoderFactory;

    return-void
.end method


# virtual methods
.method public createForAudioDecoding(Landroidx/media3/common/Format;Landroid/media/metrics/LogSessionId;)Landroidx/media3/transformer/Codec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Landroidx/media3/transformer/CapturingDecoderFactory;->decoderFactory:Landroidx/media3/transformer/Codec$DecoderFactory;

    invoke-interface {v0, p1, p2}, Landroidx/media3/transformer/Codec$DecoderFactory;->createForAudioDecoding(Landroidx/media3/common/Format;Landroid/media/metrics/LogSessionId;)Landroidx/media3/transformer/Codec;

    move-result-object p1

    .line 38
    invoke-interface {p1}, Landroidx/media3/transformer/Codec;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/transformer/CapturingDecoderFactory;->audioDecoderName:Ljava/lang/String;

    return-object p1
.end method

.method public createForVideoDecoding(Landroidx/media3/common/Format;Landroid/view/Surface;ZLandroid/media/metrics/LogSessionId;)Landroidx/media3/transformer/Codec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Landroidx/media3/transformer/CapturingDecoderFactory;->decoderFactory:Landroidx/media3/transformer/Codec$DecoderFactory;

    .line 50
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/transformer/Codec$DecoderFactory;->createForVideoDecoding(Landroidx/media3/common/Format;Landroid/view/Surface;ZLandroid/media/metrics/LogSessionId;)Landroidx/media3/transformer/Codec;

    move-result-object p1

    .line 52
    invoke-interface {p1}, Landroidx/media3/transformer/Codec;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/transformer/CapturingDecoderFactory;->videoDecoderName:Ljava/lang/String;

    return-object p1
.end method

.method public getAudioDecoderName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Landroidx/media3/transformer/CapturingDecoderFactory;->audioDecoderName:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoDecoderName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/media3/transformer/CapturingDecoderFactory;->videoDecoderName:Ljava/lang/String;

    return-object v0
.end method
