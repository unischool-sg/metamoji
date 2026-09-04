.class public interface abstract Lio/github/toyota32k/media/lib/surface/MediaCodecWrapper;
.super Ljava/lang/Object;
.source "MediaCodecWrapper.java"


# virtual methods
.method public abstract configure(Landroid/media/MediaFormat;I)V
.end method

.method public abstract configure(Landroid/media/MediaFormat;ILandroid/view/Surface;)V
.end method

.method public abstract createInputSurface()Lio/github/toyota32k/media/lib/surface/InputSurfaceInterface;
.end method

.method public abstract dequeueInputBuffer(J)I
.end method

.method public abstract dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
.end method

.method public abstract getInputBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract getInputBuffers()[Ljava/nio/ByteBuffer;
.end method

.method public abstract getOutputBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract getOutputBuffers()[Ljava/nio/ByteBuffer;
.end method

.method public abstract getOutputFormatString()Ljava/lang/String;
.end method

.method public abstract queueInputBuffer(IIIJI)V
.end method

.method public abstract release()V
.end method

.method public abstract releaseOutputBuffer(IZ)V
.end method

.method public abstract setCallback(Landroid/media/MediaCodec$Callback;)V
.end method

.method public abstract setInputSurface(Lio/github/toyota32k/media/lib/surface/InputSurfaceInterface;)V
.end method

.method public abstract setParameters(Landroid/os/Bundle;)V
.end method

.method public abstract signalEndOfInputStream()V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
