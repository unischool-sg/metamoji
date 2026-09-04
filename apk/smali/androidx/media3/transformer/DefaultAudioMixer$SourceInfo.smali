.class final Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;
.super Ljava/lang/Object;
.source "DefaultAudioMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/DefaultAudioMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SourceInfo"
.end annotation


# instance fields
.field private final audioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

.field private final baseChannelMixingMatrix:Landroidx/media3/common/audio/ChannelMixingMatrix;

.field private channelMixingMatrix:Landroidx/media3/common/audio/ChannelMixingMatrix;

.field public position:J

.field final synthetic this$0:Landroidx/media3/transformer/DefaultAudioMixer;


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/DefaultAudioMixer;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;Landroidx/media3/common/audio/ChannelMixingMatrix;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 442
    iput-object p1, p0, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->this$0:Landroidx/media3/transformer/DefaultAudioMixer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-object p2, p0, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->audioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 444
    iput-object p3, p0, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->baseChannelMixingMatrix:Landroidx/media3/common/audio/ChannelMixingMatrix;

    .line 445
    iput-wide p4, p0, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->position:J

    .line 446
    iput-object p3, p0, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->channelMixingMatrix:Landroidx/media3/common/audio/ChannelMixingMatrix;

    return-void
.end method


# virtual methods
.method public discardTo(Ljava/nio/ByteBuffer;J)V
    .locals 3

    .line 465
    iget-wide v0, p0, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->position:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 466
    iget-wide v0, p0, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->position:J

    sub-long v0, p2, v0

    long-to-int v0, v0

    .line 467
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->audioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v2, v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 468
    iput-wide p2, p0, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->position:J

    return-void
.end method

.method public getChannelMixingMatrix()Landroidx/media3/common/audio/ChannelMixingMatrix;
    .locals 1

    .line 450
    iget-object v0, p0, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->channelMixingMatrix:Landroidx/media3/common/audio/ChannelMixingMatrix;

    return-object v0
.end method

.method public getPositionAfterBuffer(Ljava/nio/ByteBuffer;)J
    .locals 4

    .line 459
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    iget-object v0, p0, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->audioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v0, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    div-int/2addr p1, v0

    .line 460
    iget-wide v0, p0, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->position:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public mixTo(Ljava/nio/ByteBuffer;JLjava/nio/ByteBuffer;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V
    .locals 10

    .line 477
    iget-wide v0, p0, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->position:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 478
    iget-wide v0, p0, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->position:J

    sub-long v0, p2, v0

    long-to-int v7, v0

    .line 479
    iget-object v3, p0, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->audioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget-object v6, p0, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->channelMixingMatrix:Landroidx/media3/common/audio/ChannelMixingMatrix;

    iget-object v0, p0, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->this$0:Landroidx/media3/transformer/DefaultAudioMixer;

    .line 487
    invoke-static {v0}, Landroidx/media3/transformer/DefaultAudioMixer;->access$100(Landroidx/media3/transformer/DefaultAudioMixer;)Z

    move-result v9

    const/4 v8, 0x1

    move-object v2, p1

    move-object v4, p4

    move-object v5, p5

    .line 479
    invoke-static/range {v2 .. v9}, Landroidx/media3/common/audio/AudioMixingUtil;->mix(Ljava/nio/ByteBuffer;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;Ljava/nio/ByteBuffer;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;Landroidx/media3/common/audio/ChannelMixingMatrix;IZZ)Ljava/nio/ByteBuffer;

    .line 488
    iput-wide p2, p0, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->position:J

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 454
    iget-object v0, p0, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->baseChannelMixingMatrix:Landroidx/media3/common/audio/ChannelMixingMatrix;

    invoke-virtual {v0, p1}, Landroidx/media3/common/audio/ChannelMixingMatrix;->scaleBy(F)Landroidx/media3/common/audio/ChannelMixingMatrix;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/DefaultAudioMixer$SourceInfo;->channelMixingMatrix:Landroidx/media3/common/audio/ChannelMixingMatrix;

    return-void
.end method
