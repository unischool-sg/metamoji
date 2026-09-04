.class final Landroidx/media3/transformer/AudioGraphInputAudioSink;
.super Ljava/lang/Object;
.source "AudioGraphInputAudioSink.java"

# interfaces
.implements Landroidx/media3/exoplayer/audio/AudioSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/AudioGraphInputAudioSink$Controller;,
        Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;
    }
.end annotation


# instance fields
.field private final controller:Landroidx/media3/transformer/AudioGraphInputAudioSink$Controller;

.field private currentEditedMediaItemInfo:Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;

.field private currentInputFormat:Landroidx/media3/common/Format;

.field private inputPositionUs:J

.field private inputStreamEnded:Z

.field private isConfigurationPending:Z

.field private isFlushPending:Z

.field private offsetToCompositionTimeUs:J

.field private outputGraphInput:Landroidx/media3/transformer/AudioGraphInput;

.field private outputStreamOffsetUs:J

.field private signalledEndOfStream:Z


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/AudioGraphInputAudioSink$Controller;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->controller:Landroidx/media3/transformer/AudioGraphInputAudioSink$Controller;

    return-void
.end method

.method private getCompositionPlayerPositionUs()J
    .locals 4

    .line 326
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->controller:Landroidx/media3/transformer/AudioGraphInputAudioSink$Controller;

    iget-boolean v1, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->inputStreamEnded:Z

    invoke-interface {v0, v1}, Landroidx/media3/transformer/AudioGraphInputAudioSink$Controller;->getCurrentPositionUs(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 329
    iget-wide v2, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->offsetToCompositionTimeUs:J

    sub-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method private handleBufferInternal(Ljava/nio/ByteBuffer;JI)Z
    .locals 5

    .line 335
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentInputFormat:Landroidx/media3/common/Format;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->signalledEndOfStream:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 337
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->outputGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/AudioGraphInput;

    .line 339
    invoke-virtual {v0}, Landroidx/media3/transformer/AudioGraphInput;->getInputBuffer()Landroidx/media3/decoder/DecoderInputBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 343
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 344
    invoke-virtual {v1, v2}, Landroidx/media3/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 345
    iget-object v3, v1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p1, p2, v3

    if-nez p1, :cond_1

    goto :goto_0

    .line 350
    :cond_1
    iget-wide v3, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->offsetToCompositionTimeUs:J

    add-long/2addr v3, p2

    :goto_0
    iput-wide v3, v1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 351
    invoke-virtual {v1, p4}, Landroidx/media3/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 353
    invoke-virtual {v0}, Landroidx/media3/transformer/AudioGraphInput;->queueInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 355
    iget-object p4, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentInputFormat:Landroidx/media3/common/Format;

    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/media3/common/Format;

    .line 356
    iget v0, p4, Landroidx/media3/common/Format;->pcmEncoding:I

    iget v1, p4, Landroidx/media3/common/Format;->channelCount:I

    .line 360
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->getPcmFrameSize(II)I

    move-result v0

    div-int/2addr v2, v0

    int-to-long v0, v2

    iget p4, p4, Landroidx/media3/common/Format;->sampleRate:I

    .line 358
    invoke-static {v0, v1, p4}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v0

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->inputPositionUs:J

    :cond_2
    return p1
.end method


# virtual methods
.method public configure(Landroidx/media3/common/Format;I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0, p1}, Landroidx/media3/transformer/AudioGraphInputAudioSink;->supportsFormat(Landroidx/media3/common/Format;)Z

    move-result p2

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    const/4 p2, 0x1

    if-nez p3, :cond_0

    move p3, p2

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 133
    :goto_0
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 134
    iput-object p1, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentInputFormat:Landroidx/media3/common/Format;

    .line 135
    iput-boolean p2, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->isConfigurationPending:Z

    return-void
.end method

.method public disableTunneling()V
    .locals 0

    return-void
.end method

.method public enableTunnelingV21()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 1

    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->inputStreamEnded:Z

    .line 255
    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->signalledEndOfStream:Z

    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->isFlushPending:Z

    return-void
.end method

.method public getAudioAttributes()Landroidx/media3/common/AudioAttributes;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAudioTrackBufferSizeUs()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public getCurrentPositionUs(Z)J
    .locals 2

    .line 240
    invoke-virtual {p0}, Landroidx/media3/transformer/AudioGraphInputAudioSink;->isEnded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 241
    iget-wide v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->inputPositionUs:J

    return-wide v0

    .line 243
    :cond_0
    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInputAudioSink;->getCompositionPlayerPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFormatSupport(Landroidx/media3/common/Format;)I
    .locals 2

    .line 220
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    .line 297
    sget-object v0, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    return-object v0
.end method

.method public getSkipSilenceEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;JI)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 152
    iget-boolean p4, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->inputStreamEnded:Z

    const/4 v0, 0x1

    xor-int/2addr p4, v0

    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 154
    iget-object p4, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentEditedMediaItemInfo:Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;

    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;

    iget-object v2, p4, Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    .line 155
    iget-object p4, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->outputGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    const/4 v9, 0x0

    if-nez p4, :cond_1

    .line 159
    :try_start_0
    iget-object p4, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->controller:Landroidx/media3/transformer/AudioGraphInputAudioSink$Controller;

    iget-object v1, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentInputFormat:Landroidx/media3/common/Format;

    .line 160
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Format;

    invoke-interface {p4, v2, v1}, Landroidx/media3/transformer/AudioGraphInputAudioSink$Controller;->getAudioGraphInput(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;)Landroidx/media3/transformer/AudioGraphInput;

    move-result-object p4
    :try_end_0
    .catch Landroidx/media3/transformer/ExportException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p4, :cond_0

    return v9

    .line 172
    :cond_0
    iput-object p4, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->outputGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    .line 173
    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->isConfigurationPending:Z

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v5, p1

    .line 162
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    iget-object v3, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentInputFormat:Landroidx/media3/common/Format;

    const/4 v4, 0x0

    const-string v1, "Error creating AudioGraphInput"

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;-><init>(Ljava/lang/String;ILandroidx/media3/common/Format;ZLjava/lang/Throwable;)V

    throw v0

    .line 176
    :cond_1
    :goto_0
    iget-boolean p4, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->isConfigurationPending:Z

    if-eqz p4, :cond_2

    .line 181
    iget-object v1, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->outputGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    iget-object v5, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentInputFormat:Landroidx/media3/common/Format;

    iget-wide v3, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->outputStreamOffsetUs:J

    sub-long v7, p2, v3

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroidx/media3/transformer/AudioGraphInput;->onMediaItemChanged(Landroidx/media3/transformer/EditedMediaItem;JLandroidx/media3/common/Format;ZJ)V

    .line 187
    iput-boolean v9, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->isConfigurationPending:Z

    .line 188
    iput-boolean v9, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->isFlushPending:Z

    goto :goto_1

    .line 189
    :cond_2
    iget-boolean p4, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->isFlushPending:Z

    if-eqz p4, :cond_3

    .line 190
    iget-object p4, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->outputGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    iget-wide v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->outputStreamOffsetUs:J

    sub-long v0, p2, v0

    invoke-virtual {p4, v0, v1}, Landroidx/media3/transformer/AudioGraphInput;->flush(J)V

    .line 192
    iput-boolean v9, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->isFlushPending:Z

    .line 195
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2, p3, v9}, Landroidx/media3/transformer/AudioGraphInputAudioSink;->handleBufferInternal(Ljava/nio/ByteBuffer;JI)Z

    move-result p1

    return p1
.end method

.method public handleDiscontinuity()V
    .locals 0

    return-void
.end method

.method public hasPendingData()Z
    .locals 1

    .line 235
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->controller:Landroidx/media3/transformer/AudioGraphInputAudioSink$Controller;

    invoke-interface {v0}, Landroidx/media3/transformer/AudioGraphInputAudioSink$Controller;->hasPendingData()Z

    move-result v0

    return v0
.end method

.method public isEnded()Z
    .locals 4

    .line 140
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentInputFormat:Landroidx/media3/common/Format;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->outputGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    if-nez v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->inputStreamEnded:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/media3/transformer/AudioGraphInputAudioSink;->getCompositionPlayerPositionUs()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->inputPositionUs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    .line 142
    :cond_2
    :goto_0
    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->inputStreamEnded:Z

    return v0
.end method

.method public onMediaItemChanged(Landroidx/media3/transformer/EditedMediaItem;JZ)V
    .locals 1

    .line 122
    new-instance v0, Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;

    invoke-direct {v0, p1, p4}, Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;-><init>(Landroidx/media3/transformer/EditedMediaItem;Z)V

    iput-object v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentEditedMediaItemInfo:Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;

    .line 123
    iput-wide p2, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->offsetToCompositionTimeUs:J

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public play()V
    .locals 0

    return-void
.end method

.method public playToEndOfStream()V
    .locals 4

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->inputStreamEnded:Z

    .line 206
    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentInputFormat:Landroidx/media3/common/Format;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->outputGraphInput:Landroidx/media3/transformer/AudioGraphInput;

    if-nez v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->signalledEndOfStream:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentEditedMediaItemInfo:Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;

    iget-boolean v0, v0, Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;->isLastInSequence:Z

    if-eqz v0, :cond_1

    .line 212
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x4

    .line 213
    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/media3/transformer/AudioGraphInputAudioSink;->handleBufferInternal(Ljava/nio/ByteBuffer;JI)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->signalledEndOfStream:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 261
    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->inputStreamEnded:Z

    .line 262
    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->signalledEndOfStream:Z

    const/4 v1, 0x0

    .line 263
    iput-object v1, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentInputFormat:Landroidx/media3/common/Format;

    .line 264
    iput-object v1, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->currentEditedMediaItemInfo:Landroidx/media3/transformer/AudioGraphInputAudioSink$EditedMediaItemInfo;

    const-wide/16 v1, 0x0

    .line 265
    iput-wide v1, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->outputStreamOffsetUs:J

    .line 266
    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->isConfigurationPending:Z

    .line 267
    iput-boolean v0, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->isFlushPending:Z

    return-void
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V
    .locals 0

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 0

    return-void
.end method

.method public setAuxEffectInfo(Landroidx/media3/common/AuxEffectInfo;)V
    .locals 0

    return-void
.end method

.method public setListener(Landroidx/media3/exoplayer/audio/AudioSink$Listener;)V
    .locals 0

    return-void
.end method

.method public setOutputStreamOffsetUs(J)V
    .locals 0

    .line 200
    iput-wide p1, p0, Landroidx/media3/transformer/AudioGraphInputAudioSink;->outputStreamOffsetUs:J

    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setVolume(F)V
    .locals 0

    return-void
.end method

.method public supportsFormat(Landroidx/media3/common/Format;)Z
    .locals 1

    .line 230
    invoke-virtual {p0, p1}, Landroidx/media3/transformer/AudioGraphInputAudioSink;->getFormatSupport(Landroidx/media3/common/Format;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
