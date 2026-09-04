.class final Landroidx/media3/transformer/CapturingEncoderFactory;
.super Ljava/lang/Object;
.source "CapturingEncoderFactory.java"

# interfaces
.implements Landroidx/media3/transformer/Codec$EncoderFactory;


# instance fields
.field private audioEncoderName:Ljava/lang/String;

.field private final encoderFactory:Landroidx/media3/transformer/Codec$EncoderFactory;

.field private videoEncoderName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/Codec$EncoderFactory;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroidx/media3/transformer/CapturingEncoderFactory;->encoderFactory:Landroidx/media3/transformer/Codec$EncoderFactory;

    return-void
.end method


# virtual methods
.method public audioNeedsEncoding()Z
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/media3/transformer/CapturingEncoderFactory;->encoderFactory:Landroidx/media3/transformer/Codec$EncoderFactory;

    invoke-interface {v0}, Landroidx/media3/transformer/Codec$EncoderFactory;->audioNeedsEncoding()Z

    move-result v0

    return v0
.end method

.method public createForAudioEncoding(Landroidx/media3/common/Format;Landroid/media/metrics/LogSessionId;)Landroidx/media3/transformer/Codec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Landroidx/media3/transformer/CapturingEncoderFactory;->encoderFactory:Landroidx/media3/transformer/Codec$EncoderFactory;

    invoke-interface {v0, p1, p2}, Landroidx/media3/transformer/Codec$EncoderFactory;->createForAudioEncoding(Landroidx/media3/common/Format;Landroid/media/metrics/LogSessionId;)Landroidx/media3/transformer/Codec;

    move-result-object p1

    .line 37
    invoke-interface {p1}, Landroidx/media3/transformer/Codec;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/transformer/CapturingEncoderFactory;->audioEncoderName:Ljava/lang/String;

    return-object p1
.end method

.method public createForVideoEncoding(Landroidx/media3/common/Format;Landroid/media/metrics/LogSessionId;)Landroidx/media3/transformer/Codec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Landroidx/media3/transformer/CapturingEncoderFactory;->encoderFactory:Landroidx/media3/transformer/Codec$EncoderFactory;

    invoke-interface {v0, p1, p2}, Landroidx/media3/transformer/Codec$EncoderFactory;->createForVideoEncoding(Landroidx/media3/common/Format;Landroid/media/metrics/LogSessionId;)Landroidx/media3/transformer/Codec;

    move-result-object p1

    .line 45
    invoke-interface {p1}, Landroidx/media3/transformer/Codec;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/transformer/CapturingEncoderFactory;->videoEncoderName:Ljava/lang/String;

    return-object p1
.end method

.method public getAudioEncoderName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/media3/transformer/CapturingEncoderFactory;->audioEncoderName:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoEncoderName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Landroidx/media3/transformer/CapturingEncoderFactory;->videoEncoderName:Ljava/lang/String;

    return-object v0
.end method

.method public videoNeedsEncoding()Z
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/media3/transformer/CapturingEncoderFactory;->encoderFactory:Landroidx/media3/transformer/Codec$EncoderFactory;

    invoke-interface {v0}, Landroidx/media3/transformer/Codec$EncoderFactory;->videoNeedsEncoding()Z

    move-result v0

    return v0
.end method
