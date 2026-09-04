.class final Landroidx/media3/transformer/AudioGraph;
.super Ljava/lang/Object;
.source "AudioGraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/AudioGraph$InputInfo;
    }
.end annotation


# instance fields
.field private final audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

.field private finishedInputs:I

.field private final inputInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/transformer/AudioGraph$InputInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isMixerConfigured:Z

.field private isMixerReady:Z

.field private final mixer:Landroidx/media3/transformer/AudioMixer;

.field private mixerAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

.field private mixerOutput:Ljava/nio/ByteBuffer;

.field private pendingStartTimeUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/AudioMixer$Factory;Lcom/google/common/collect/ImmutableList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/transformer/AudioMixer$Factory;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/audio/AudioProcessor;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    .line 60
    invoke-interface {p1}, Landroidx/media3/transformer/AudioMixer$Factory;->create()Landroidx/media3/transformer/AudioMixer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/AudioGraph;->mixer:Landroidx/media3/transformer/AudioMixer;

    .line 61
    sget-object p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object p1, p0, Landroidx/media3/transformer/AudioGraph;->mixerAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 62
    sget-object p1, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Landroidx/media3/transformer/AudioGraph;->mixerOutput:Ljava/nio/ByteBuffer;

    .line 63
    new-instance p1, Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-direct {p1, p2}, Landroidx/media3/common/audio/AudioProcessingPipeline;-><init>(Lcom/google/common/collect/ImmutableList;)V

    iput-object p1, p0, Landroidx/media3/transformer/AudioGraph;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    return-void
.end method

.method private ensureMixerReady()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 211
    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraph;->isMixerReady:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 214
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraph;->isMixerConfigured:Z

    const/4 v2, -0x1

    if-nez v0, :cond_1

    .line 216
    :try_start_0
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->mixer:Landroidx/media3/transformer/AudioMixer;

    iget-object v3, p0, Landroidx/media3/transformer/AudioGraph;->mixerAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget-wide v4, p0, Landroidx/media3/transformer/AudioGraph;->pendingStartTimeUs:J

    invoke-interface {v0, v3, v2, v4, v5}, Landroidx/media3/transformer/AudioMixer;->configure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;IJ)V
    :try_end_0
    .catch Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    iput-boolean v1, p0, Landroidx/media3/transformer/AudioGraph;->isMixerConfigured:Z

    goto :goto_0

    :catch_0
    move-exception v0

    .line 218
    const-string v1, "Error while configuring mixer"

    invoke-static {v0, v1}, Landroidx/media3/transformer/ExportException;->createForAudioProcessing(Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;Ljava/lang/String;)Landroidx/media3/transformer/ExportException;

    move-result-object v0

    throw v0

    .line 222
    :cond_1
    :goto_0
    iput-boolean v1, p0, Landroidx/media3/transformer/AudioGraph;->isMixerReady:Z

    const/4 v0, 0x0

    move v1, v0

    .line 223
    :goto_1
    iget-object v3, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 224
    iget-object v3, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/transformer/AudioGraph$InputInfo;

    .line 225
    iget v4, v3, Landroidx/media3/transformer/AudioGraph$InputInfo;->mixerSourceId:I

    if-eq v4, v2, :cond_2

    goto :goto_2

    .line 228
    :cond_2
    iget-object v4, v3, Landroidx/media3/transformer/AudioGraph$InputInfo;->audioGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    .line 231
    :try_start_1
    invoke-virtual {v4}, Landroidx/media3/transformer/AudioGraphInput;->getOutput()Ljava/nio/ByteBuffer;

    .line 232
    invoke-virtual {v4}, Landroidx/media3/transformer/AudioGraphInput;->getStartTimeUs()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v5, v7

    if-nez v7, :cond_3

    .line 234
    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraph;->isMixerReady:Z

    goto :goto_2

    :cond_3
    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v7, v5, v7

    if-nez v7, :cond_4

    goto :goto_2

    .line 239
    :cond_4
    iget-object v7, p0, Landroidx/media3/transformer/AudioGraph;->mixer:Landroidx/media3/transformer/AudioMixer;

    .line 240
    invoke-virtual {v4}, Landroidx/media3/transformer/AudioGraphInput;->getOutputAudioFormat()Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    move-result-object v4

    invoke-interface {v7, v4, v5, v6}, Landroidx/media3/transformer/AudioMixer;->addSource(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;J)I

    move-result v4

    iput v4, v3, Landroidx/media3/transformer/AudioGraph$InputInfo;->mixerSourceId:I
    :try_end_1
    .catch Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled format while adding source "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v3, Landroidx/media3/transformer/AudioGraph$InputInfo;->mixerSourceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/transformer/ExportException;->createForAudioProcessing(Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;Ljava/lang/String;)Landroidx/media3/transformer/ExportException;

    move-result-object v0

    throw v0

    .line 246
    :cond_5
    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraph;->isMixerReady:Z

    return v0
.end method

.method private feedMixer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 250
    :goto_0
    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 251
    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/AudioGraph$InputInfo;

    invoke-direct {p0, v1}, Landroidx/media3/transformer/AudioGraph;->feedMixerFromInput(Landroidx/media3/transformer/AudioGraph$InputInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private feedMixerFromInput(Landroidx/media3/transformer/AudioGraph$InputInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 256
    iget v0, p1, Landroidx/media3/transformer/AudioGraph$InputInfo;->mixerSourceId:I

    .line 257
    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->mixer:Landroidx/media3/transformer/AudioMixer;

    invoke-interface {v1, v0}, Landroidx/media3/transformer/AudioMixer;->hasSource(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v1, p1, Landroidx/media3/transformer/AudioGraph$InputInfo;->audioGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    .line 262
    invoke-virtual {v1}, Landroidx/media3/transformer/AudioGraphInput;->isEnded()Z

    move-result v2

    .line 270
    iget-object v3, p0, Landroidx/media3/transformer/AudioGraph;->mixer:Landroidx/media3/transformer/AudioMixer;

    if-eqz v2, :cond_1

    .line 263
    invoke-interface {v3, v0}, Landroidx/media3/transformer/AudioMixer;->removeSource(I)V

    const/4 v0, -0x1

    .line 264
    iput v0, p1, Landroidx/media3/transformer/AudioGraph$InputInfo;->mixerSourceId:I

    .line 265
    iget p1, p0, Landroidx/media3/transformer/AudioGraph;->finishedInputs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/transformer/AudioGraph;->finishedInputs:I

    return-void

    .line 270
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroidx/media3/transformer/AudioGraphInput;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v3, v0, p1}, Landroidx/media3/transformer/AudioMixer;->queueInput(ILjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioGraphInput (sourceId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") reconfiguration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/media3/transformer/ExportException;->createForAudioProcessing(Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;Ljava/lang/String;)Landroidx/media3/transformer/ExportException;

    move-result-object p1

    throw p1
.end method

.method private feedProcessingPipelineFromMixer()V
    .locals 2

    .line 278
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraph;->isMixerEnded()Z

    move-result v0

    .line 282
    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v1}, Landroidx/media3/common/audio/AudioProcessingPipeline;->queueEndOfStream()V

    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->mixerOutput:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->queueInput(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static isInputAudioFormatValid(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Z
    .locals 3

    .line 68
    iget v0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 71
    :cond_0
    iget v0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    if-ne v0, v2, :cond_1

    return v1

    .line 74
    :cond_1
    iget p0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    if-ne p0, v2, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private isMixerEnded()Z
    .locals 2

    .line 286
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->mixerOutput:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media3/transformer/AudioGraph;->finishedInputs:I

    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->mixer:Landroidx/media3/transformer/AudioMixer;

    invoke-interface {v0}, Landroidx/media3/transformer/AudioMixer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blockInput()V
    .locals 2

    const/4 v0, 0x0

    .line 146
    :goto_0
    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 147
    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/AudioGraph$InputInfo;

    iget-object v1, v1, Landroidx/media3/transformer/AudioGraph$InputInfo;->audioGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    invoke-virtual {v1}, Landroidx/media3/transformer/AudioGraphInput;->blockInput()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public flush(J)V
    .locals 3

    .line 166
    iput-wide p1, p0, Landroidx/media3/transformer/AudioGraph;->pendingStartTimeUs:J

    const/4 p1, 0x0

    move p2, p1

    .line 168
    :goto_0
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 169
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/AudioGraph$InputInfo;

    const/4 v1, -0x1

    .line 170
    iput v1, v0, Landroidx/media3/transformer/AudioGraph$InputInfo;->mixerSourceId:I

    .line 175
    iget-object v0, v0, Landroidx/media3/transformer/AudioGraph$InputInfo;->audioGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/media3/transformer/AudioGraphInput;->flush(J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 177
    :cond_0
    iget-object p2, p0, Landroidx/media3/transformer/AudioGraph;->mixer:Landroidx/media3/transformer/AudioMixer;

    invoke-interface {p2}, Landroidx/media3/transformer/AudioMixer;->reset()V

    .line 178
    iput-boolean p1, p0, Landroidx/media3/transformer/AudioGraph;->isMixerConfigured:Z

    .line 179
    iput-boolean p1, p0, Landroidx/media3/transformer/AudioGraph;->isMixerReady:Z

    .line 180
    sget-object p2, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Landroidx/media3/transformer/AudioGraph;->mixerOutput:Ljava/nio/ByteBuffer;

    .line 181
    iget-object p2, p0, Landroidx/media3/transformer/AudioGraph;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;

    iget-wide v1, p0, Landroidx/media3/transformer/AudioGraph;->pendingStartTimeUs:J

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;-><init>(J)V

    invoke-virtual {p2, v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->flush(Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;)V

    .line 182
    iput p1, p0, Landroidx/media3/transformer/AudioGraph;->finishedInputs:I

    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraph;->ensureMixerReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    .line 129
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->mixer:Landroidx/media3/transformer/AudioMixer;

    invoke-interface {v0}, Landroidx/media3/transformer/AudioMixer;->isEnded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraph;->feedMixer()V

    .line 132
    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->mixerOutput:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->mixer:Landroidx/media3/transformer/AudioMixer;

    invoke-interface {v0}, Landroidx/media3/transformer/AudioMixer;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/AudioGraph;->mixerOutput:Ljava/nio/ByteBuffer;

    .line 136
    :cond_2
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraph;->feedProcessingPipelineFromMixer()V

    .line 138
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 141
    :cond_3
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->mixerOutput:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getOutputAudioFormat()Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 1

    .line 116
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->getOutputAudioFormat()Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    move-result-object v0

    return-object v0
.end method

.method public isEnded()Z
    .locals 1

    .line 204
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isEnded()Z

    move-result v0

    return v0

    .line 207
    :cond_0
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraph;->isMixerEnded()Z

    move-result v0

    return v0
.end method

.method public registerInput(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;)Landroidx/media3/transformer/AudioGraphInput;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 87
    iget v0, p2, Landroidx/media3/common/Format;->pcmEncoding:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 90
    :try_start_0
    new-instance v0, Landroidx/media3/transformer/AudioGraphInput;

    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->mixerAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-direct {v0, v1, p1, p2}, Landroidx/media3/transformer/AudioGraphInput;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;)V

    .line 91
    iget-object p1, p0, Landroidx/media3/transformer/AudioGraph;->mixerAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    sget-object v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {v0}, Landroidx/media3/transformer/AudioGraphInput;->getOutputAudioFormat()Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/AudioGraph;->mixerAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 93
    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v1, p1}, Landroidx/media3/common/audio/AudioProcessingPipeline;->configure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 94
    iget-object p1, p0, Landroidx/media3/transformer/AudioGraph;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    new-instance v1, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;

    iget-wide v2, p0, Landroidx/media3/transformer/AudioGraph;->pendingStartTimeUs:J

    invoke-direct {v1, v2, v3}, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;-><init>(J)V

    invoke-virtual {p1, v1}, Landroidx/media3/common/audio/AudioProcessingPipeline;->flush(Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;)V
    :try_end_0
    .catch Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_1
    iget-object p1, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    new-instance v1, Landroidx/media3/transformer/AudioGraph$InputInfo;

    invoke-direct {v1, v0}, Landroidx/media3/transformer/AudioGraph$InputInfo;-><init>(Landroidx/media3/transformer/AudioGraphInput;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v6, "%s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v7

    const-string v2, "AudioGraph"

    const-string v3, "RegisterNewInputStream"

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static/range {v2 .. v7}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error while registering input "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 97
    invoke-static {p1, p2}, Landroidx/media3/transformer/ExportException;->createForAudioProcessing(Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;Ljava/lang/String;)Landroidx/media3/transformer/ExportException;

    move-result-object p1

    throw p1
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 191
    :goto_0
    iget-object v2, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 194
    iget-object v3, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    if-ge v1, v2, :cond_0

    .line 192
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/AudioGraph$InputInfo;

    iget-object v2, v2, Landroidx/media3/transformer/AudioGraph$InputInfo;->audioGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    invoke-virtual {v2}, Landroidx/media3/transformer/AudioGraphInput;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 195
    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->mixer:Landroidx/media3/transformer/AudioMixer;

    invoke-interface {v1}, Landroidx/media3/transformer/AudioMixer;->reset()V

    .line 196
    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v1}, Landroidx/media3/common/audio/AudioProcessingPipeline;->reset()V

    .line 197
    iput v0, p0, Landroidx/media3/transformer/AudioGraph;->finishedInputs:I

    .line 198
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/transformer/AudioGraph;->mixerOutput:Ljava/nio/ByteBuffer;

    .line 199
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/transformer/AudioGraph;->mixerAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    return-void
.end method

.method public unblockInput()V
    .locals 2

    const/4 v0, 0x0

    .line 153
    :goto_0
    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 154
    iget-object v1, p0, Landroidx/media3/transformer/AudioGraph;->inputInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/AudioGraph$InputInfo;

    iget-object v1, v1, Landroidx/media3/transformer/AudioGraph$InputInfo;->audioGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    invoke-virtual {v1}, Landroidx/media3/transformer/AudioGraphInput;->unblockInput()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
