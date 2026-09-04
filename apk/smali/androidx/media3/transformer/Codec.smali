.class public interface abstract Landroidx/media3/transformer/Codec;
.super Ljava/lang/Object;
.source "Codec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/Codec$EncoderFactory;,
        Landroidx/media3/transformer/Codec$DecoderFactory;
    }
.end annotation


# virtual methods
.method public abstract getConfigurationFormat()Landroidx/media3/common/Format;
.end method

.method public abstract getInputFormat()Landroidx/media3/common/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation
.end method

.method public abstract getInputSurface()Landroid/view/Surface;
.end method

.method public getMaxPendingFrameCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOutputBuffer()Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation
.end method

.method public abstract getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation
.end method

.method public abstract getOutputFormat()Landroidx/media3/common/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation
.end method

.method public abstract isEnded()Z
.end method

.method public abstract maybeDequeueInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation
.end method

.method public abstract queueInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract releaseOutputBuffer(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation
.end method

.method public abstract releaseOutputBuffer(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation
.end method

.method public abstract signalEndOfInputStream()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation
.end method
