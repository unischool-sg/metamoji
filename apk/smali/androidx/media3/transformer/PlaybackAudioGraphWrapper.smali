.class final Landroidx/media3/transformer/PlaybackAudioGraphWrapper;
.super Ljava/lang/Object;
.source "PlaybackAudioGraphWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;
    }
.end annotation


# static fields
.field private static final PRIMARY_SEQUENCE_INDEX:I


# instance fields
.field private audioGraph:Landroidx/media3/transformer/AudioGraph;

.field private audioGraphInputsCreated:I

.field private effects:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/audio/AudioProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

.field private hasRegisteredPrimaryFormat:Z

.field private inputAudioSinksCreated:I

.field private isRenderingStarted:Z

.field private final mixerFactory:Landroidx/media3/transformer/AudioMixer$Factory;

.field private outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

.field private outputFramesWritten:J

.field private seekPositionUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/AudioMixer$Factory;Landroidx/media3/exoplayer/audio/AudioSink;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 67
    iput-object p1, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->mixerFactory:Landroidx/media3/transformer/AudioMixer$Factory;

    .line 68
    sget-object p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object p1, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 69
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->effects:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method static synthetic access$008(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;)I
    .locals 2

    .line 40
    iget v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->inputAudioSinksCreated:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->inputAudioSinksCreated:I

    return v0
.end method

.method static synthetic access$100(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->hasRegisteredPrimaryFormat:Z

    return p0
.end method

.method static synthetic access$102(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->hasRegisteredPrimaryFormat:Z

    return p1
.end method

.method static synthetic access$200(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;)Landroidx/media3/transformer/AudioGraph;
    .locals 0

    .line 40
    iget-object p0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->audioGraph:Landroidx/media3/transformer/AudioGraph;

    return-object p0
.end method

.method static synthetic access$308(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;)I
    .locals 2

    .line 40
    iget v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->audioGraphInputsCreated:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->audioGraphInputsCreated:I

    return v0
.end method

.method static synthetic access$400(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;)Landroidx/media3/exoplayer/audio/AudioSink;
    .locals 0

    .line 40
    iget-object p0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    return-object p0
.end method

.method private getBufferPresentationTimeUs()J
    .locals 5

    .line 149
    iget-wide v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->seekPositionUs:J

    iget-wide v2, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->outputFramesWritten:J

    iget-object v4, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v4, v4, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 150
    invoke-static {v2, v3, v4}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public createInput(I)Landroidx/media3/transformer/AudioGraphInputAudioSink;
    .locals 2

    .line 95
    new-instance v0, Landroidx/media3/transformer/AudioGraphInputAudioSink;

    new-instance v1, Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;

    invoke-direct {v1, p0, p1}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;-><init>(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;I)V

    invoke-direct {v0, v1}, Landroidx/media3/transformer/AudioGraphInputAudioSink;-><init>(Landroidx/media3/transformer/AudioGraphInputAudioSink$Controller;)V

    return-object v0
.end method

.method public endSeek()V
    .locals 1

    .line 190
    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->audioGraph:Landroidx/media3/transformer/AudioGraph;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/AudioGraph;

    invoke-virtual {v0}, Landroidx/media3/transformer/AudioGraph;->unblockInput()V

    return-void
.end method

.method public processData()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;,
            Landroidx/media3/exoplayer/audio/AudioSink$WriteException;,
            Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;,
            Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;
        }
    .end annotation

    .line 109
    iget v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->inputAudioSinksCreated:I

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget v2, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->audioGraphInputsCreated:I

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    sget-object v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->audioGraph:Landroidx/media3/transformer/AudioGraph;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/AudioGraph;

    invoke-virtual {v0}, Landroidx/media3/transformer/AudioGraph;->getOutputAudioFormat()Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    move-result-object v0

    .line 115
    sget-object v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 119
    :cond_1
    iget-object v2, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 120
    invoke-static {v0}, Landroidx/media3/common/util/Util;->getPcmFormat(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/Format;

    move-result-object v3

    const/4 v4, 0x0

    .line 119
    invoke-interface {v2, v3, v1, v4}, Landroidx/media3/exoplayer/audio/AudioSink;->configure(Landroidx/media3/common/Format;I[I)V

    .line 123
    iput-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 126
    :cond_2
    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->audioGraph:Landroidx/media3/transformer/AudioGraph;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/AudioGraph;

    invoke-virtual {v0}, Landroidx/media3/transformer/AudioGraph;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 130
    :cond_3
    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->playToEndOfStream()V

    return v1

    .line 134
    :cond_4
    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->audioGraph:Landroidx/media3/transformer/AudioGraph;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/AudioGraph;

    invoke-virtual {v0}, Landroidx/media3/transformer/AudioGraph;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 139
    :cond_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 140
    iget-object v2, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 142
    invoke-direct {p0}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->getBufferPresentationTimeUs()J

    move-result-wide v3

    const/4 v5, 0x1

    .line 141
    invoke-interface {v2, v0, v3, v4, v5}, Landroidx/media3/exoplayer/audio/AudioSink;->handleBuffer(Ljava/nio/ByteBuffer;JI)Z

    move-result v2

    .line 143
    iget-wide v3, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->outputFramesWritten:J

    .line 144
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v0, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    div-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v3, v0

    iput-wide v3, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->outputFramesWritten:J

    return v2

    :cond_6
    :goto_0
    return v1
.end method

.method public release()V
    .locals 1

    .line 84
    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->audioGraph:Landroidx/media3/transformer/AudioGraph;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroidx/media3/transformer/AudioGraph;->reset()V

    .line 87
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->reset()V

    .line 88
    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->release()V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->audioGraphInputsCreated:I

    .line 90
    iput v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->inputAudioSinksCreated:I

    return-void
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V
    .locals 1

    .line 195
    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V

    return-void
.end method

.method public setAudioProcessors(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/audio/AudioProcessor;",
            ">;)V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->audioGraph:Landroidx/media3/transformer/AudioGraph;

    if-nez v0, :cond_0

    .line 78
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->effects:Lcom/google/common/collect/ImmutableList;

    .line 79
    new-instance p1, Landroidx/media3/transformer/AudioGraph;

    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->mixerFactory:Landroidx/media3/transformer/AudioMixer$Factory;

    iget-object v1, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->effects:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p1, v0, v1}, Landroidx/media3/transformer/AudioGraph;-><init>(Landroidx/media3/transformer/AudioMixer$Factory;Lcom/google/common/collect/ImmutableList;)V

    iput-object p1, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->audioGraph:Landroidx/media3/transformer/AudioGraph;

    return-void

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Setting AudioProcessors after creating the AudioGraph is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVolume(F)V
    .locals 1

    .line 168
    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->setVolume(F)V

    return-void
.end method

.method public startRendering()V
    .locals 1

    .line 154
    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->play()V

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->isRenderingStarted:Z

    return-void
.end method

.method public startSeek(J)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    move-wide p1, v1

    .line 180
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->stopRendering()V

    .line 181
    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->audioGraph:Landroidx/media3/transformer/AudioGraph;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/AudioGraph;

    invoke-virtual {v0}, Landroidx/media3/transformer/AudioGraph;->blockInput()V

    .line 182
    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->audioGraph:Landroidx/media3/transformer/AudioGraph;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/AudioGraph;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/transformer/AudioGraph;->flush(J)V

    .line 183
    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->flush()V

    .line 184
    iput-wide v1, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->outputFramesWritten:J

    .line 185
    iput-wide p1, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->seekPositionUs:J

    return-void
.end method

.method public stopRendering()V
    .locals 1

    .line 159
    iget-boolean v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->isRenderingStarted:Z

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->pause()V

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->isRenderingStarted:Z

    return-void
.end method
