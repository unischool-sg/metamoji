.class public Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;
.super Ljava/lang/Object;
.source "NdkMediaCodec.java"

# interfaces
.implements Lio/github/toyota32k/media/lib/surface/MediaCodecWrapper;


# static fields
.field private static final CSD_0:Ljava/lang/String; = "csd-0"

.field private static final CSD_1:Ljava/lang/String; = "csd-1"

.field private static final CSD_2:Ljava/lang/String; = "csd-2"


# instance fields
.field private final mName:Ljava/lang/String;

.field private mNdkMediaCodec:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    const-string v0, "before loadlibrary"

    const-string v1, "@@@"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v0, "ctsmediacodec_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 39
    const-string v0, "after loadlibrary"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->mName:Ljava/lang/String;

    .line 83
    invoke-static {p1}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->AMediaCodecCreateCodecByName(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->mNdkMediaCodec:J

    return-void
.end method

.method private static native AMediaCodecConfigure(JLjava/lang/String;IIIIIILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IILandroid/view/Surface;III)Z
.end method

.method private static native AMediaCodecCreateCodecByName(Ljava/lang/String;)J
.end method

.method private static native AMediaCodecCreateInputSurface(J)J
.end method

.method private static native AMediaCodecCreatePersistentInputSurface()J
.end method

.method private static native AMediaCodecDelete(J)Z
.end method

.method private static native AMediaCodecDequeueInputBuffer(JJ)I
.end method

.method private static native AMediaCodecDequeueOutputBuffer(JJ)[J
.end method

.method private static native AMediaCodecGetInputBuffer(JI)Ljava/nio/ByteBuffer;
.end method

.method private static native AMediaCodecGetOutputBuffer(JI)Ljava/nio/ByteBuffer;
.end method

.method private static native AMediaCodecGetOutputFormatString(J)Ljava/lang/String;
.end method

.method private static native AMediaCodecQueueInputBuffer(JIIIJI)Z
.end method

.method private static native AMediaCodecReleaseOutputBuffer(JIZ)Z
.end method

.method private static native AMediaCodecSetInputSurface(JLandroid/view/Surface;)Z
.end method

.method private static native AMediaCodecSetNativeInputSurface(JJ)Z
.end method

.method private static native AMediaCodecSetParameter(JLjava/lang/String;I)Z
.end method

.method private static native AMediaCodecSignalEndOfInputStream(J)Z
.end method

.method private static native AMediaCodecStart(J)Z
.end method

.method private static native AMediaCodecStop(J)Z
.end method

.method public static createPersistentInputSurface()Lio/github/toyota32k/media/lib/surface/InputSurfaceInterface;
    .locals 3

    .line 183
    new-instance v0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;

    invoke-static {}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->AMediaCodecCreatePersistentInputSurface()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;-><init>(J)V

    return-object v0
.end method

.method private getIntegerFromFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .locals 2

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 110
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 113
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    return p3
.end method


# virtual methods
.method public configure(Landroid/media/MediaFormat;I)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, p1, p2, v0}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->configure(Landroid/media/MediaFormat;ILandroid/view/Surface;)V

    return-void
.end method

.method public configure(Landroid/media/MediaFormat;ILandroid/view/Surface;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 122
    const-string v2, "width"

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->getIntegerFromFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v7

    .line 123
    const-string v2, "height"

    invoke-direct {v0, v1, v2, v3}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->getIntegerFromFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v8

    .line 124
    const-string v2, "color-format"

    invoke-direct {v0, v1, v2, v3}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->getIntegerFromFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v9

    .line 125
    const-string v2, "bitrate"

    invoke-direct {v0, v1, v2, v3}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->getIntegerFromFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v10

    .line 126
    const-string v2, "frame-rate"

    invoke-direct {v0, v1, v2, v3}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->getIntegerFromFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v11

    .line 127
    const-string v2, "i-frame-interval"

    invoke-direct {v0, v1, v2, v3}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->getIntegerFromFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v12

    .line 128
    const-string v2, "low-latency"

    invoke-direct {v0, v1, v2, v3}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->getIntegerFromFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v16

    .line 129
    const-string v2, "color-range"

    invoke-direct {v0, v1, v2, v3}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->getIntegerFromFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v18

    .line 130
    const-string v2, "color-standard"

    invoke-direct {v0, v1, v2, v3}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->getIntegerFromFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v19

    .line 131
    const-string v2, "color-transfer"

    invoke-direct {v0, v1, v2, v3}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->getIntegerFromFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v20

    .line 133
    const-string v2, "csd-0"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 134
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 136
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 137
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v13, v3

    goto :goto_0

    :cond_0
    move-object v13, v5

    .line 140
    :goto_0
    const-string v2, "csd-1"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 142
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 143
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 144
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_1
    move-object v14, v5

    .line 147
    const-string v2, "csd-2"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 150
    iget-wide v4, v0, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->mNdkMediaCodec:J

    const-string v2, "mime"

    .line 152
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move/from16 v15, p2

    move-object/from16 v17, p3

    .line 150
    invoke-static/range {v4 .. v20}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->AMediaCodecConfigure(JLjava/lang/String;IIIIIILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IILandroid/view/Surface;III)Z

    return-void

    .line 148
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "test error: does not handle csd-2"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createInputSurface()Lio/github/toyota32k/media/lib/surface/InputSurfaceInterface;
    .locals 3

    .line 180
    new-instance v0, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;

    iget-wide v1, p0, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->mNdkMediaCodec:J

    invoke-static {v1, v2}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->AMediaCodecCreateInputSurface(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lio/github/toyota32k/media/lib/surface/NdkInputSurface;-><init>(J)V

    return-object v0
.end method

.method public dequeueInputBuffer(J)I
    .locals 2

    .line 235
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->mNdkMediaCodec:J

    invoke-static {v0, v1, p1, p2}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->AMediaCodecDequeueInputBuffer(JJ)I

    move-result p1

    return p1
.end method

.method public dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    .locals 4

    .line 187
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->mNdkMediaCodec:J

    invoke-static {v0, v1, p2, p3}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->AMediaCodecDequeueOutputBuffer(JJ)[J

    move-result-object p2

    const/4 p3, 0x0

    .line 188
    aget-wide v0, p2, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 189
    aget-wide v0, p2, v0

    long-to-int v0, v0

    iput v0, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    const/4 v0, 0x2

    .line 190
    aget-wide v0, p2, v0

    long-to-int v0, v0

    iput v0, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v0, 0x3

    .line 191
    aget-wide v0, p2, v0

    iput-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v0, 0x4

    .line 192
    aget-wide v0, p2, v0

    long-to-int v0, v0

    iput v0, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 194
    :cond_0
    aget-wide p1, p2, p3

    long-to-int p1, p1

    return p1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 87
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->mNdkMediaCodec:J

    invoke-static {v0, v1}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->AMediaCodecDelete(J)Z

    return-void
.end method

.method public getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 218
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->mNdkMediaCodec:J

    invoke-static {v0, v1, p1}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->AMediaCodecGetInputBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getInputBuffers()[Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 198
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->mNdkMediaCodec:J

    invoke-static {v0, v1, p1}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->AMediaCodecGetOutputBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getOutputBuffers()[Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputFormatString()Ljava/lang/String;
    .locals 2

    .line 210
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->mNdkMediaCodec:J

    invoke-static {v0, v1}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->AMediaCodecGetOutputFormatString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queueInputBuffer(IIIJI)V
    .locals 8

    .line 231
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->mNdkMediaCodec:J

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-static/range {v0 .. v7}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->AMediaCodecQueueInputBuffer(JIIIJI)Z

    return-void
.end method

.method public release()V
    .locals 2

    .line 91
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->mNdkMediaCodec:J

    invoke-static {v0, v1}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->AMediaCodecDelete(J)Z

    const-wide/16 v0, 0x0

    .line 92
    iput-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->mNdkMediaCodec:J

    return-void
.end method

.method public releaseOutputBuffer(IZ)V
    .locals 2

    .line 202
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->mNdkMediaCodec:J

    invoke-static {v0, v1, p1, p2}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->AMediaCodecReleaseOutputBuffer(JIZ)Z

    return-void
.end method

.method public setCallback(Landroid/media/MediaCodec$Callback;)V
    .locals 1

    .line 251
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInputSurface(J)V
    .locals 2

    .line 176
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->mNdkMediaCodec:J

    invoke-static {v0, v1, p1, p2}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->AMediaCodecSetNativeInputSurface(JJ)Z

    return-void
.end method

.method public setInputSurface(Landroid/view/Surface;)V
    .locals 2

    .line 173
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->mNdkMediaCodec:J

    invoke-static {v0, v1, p1}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->AMediaCodecSetInputSurface(JLandroid/view/Surface;)Z

    return-void
.end method

.method public setInputSurface(Lio/github/toyota32k/media/lib/surface/InputSurfaceInterface;)V
    .locals 0

    .line 170
    invoke-interface {p1, p0}, Lio/github/toyota32k/media/lib/surface/InputSurfaceInterface;->configure(Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;)V

    return-void
.end method

.method public setParameters(Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x2

    .line 239
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "request-sync"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "video-bitrate"

    aput-object v4, v1, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 242
    aget-object v2, v1, v3

    .line 243
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 244
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 245
    iget-wide v5, p0, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->mNdkMediaCodec:J

    invoke-static {v5, v6, v2, v4}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->AMediaCodecSetParameter(JLjava/lang/String;I)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public signalEndOfInputStream()V
    .locals 2

    .line 206
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->mNdkMediaCodec:J

    invoke-static {v0, v1}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->AMediaCodecSignalEndOfInputStream(J)Z

    return-void
.end method

.method public start()V
    .locals 2

    .line 96
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->mNdkMediaCodec:J

    invoke-static {v0, v1}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->AMediaCodecStart(J)Z

    return-void
.end method

.method public stop()V
    .locals 2

    .line 100
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->mNdkMediaCodec:J

    invoke-static {v0, v1}, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->AMediaCodecStop(J)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 255
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->mName:Ljava/lang/String;

    iget-wide v2, p0, Lio/github/toyota32k/media/lib/surface/NdkMediaCodec;->mNdkMediaCodec:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s(%s, %x)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
