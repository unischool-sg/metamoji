.class final Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;
.super Ljava/lang/Object;
.source "ExperimentalAnalyzerModeFactory.java"

# interfaces
.implements Landroidx/media3/transformer/Codec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DroppingEncoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder$Factory;
    }
.end annotation


# static fields
.field private static final INTERNAL_BUFFER_SIZE:I = 0x2004

.field private static final TAG:Ljava/lang/String; = "DroppingEncoder"


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final configurationFormat:Landroidx/media3/common/Format;

.field private inputStreamEnded:Z

.field private final placeholderSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/common/Format;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p2, p0, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;->configurationFormat:Landroidx/media3/common/Format;

    const/16 p2, 0x2004

    .line 118
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;->buffer:Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    .line 119
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->newInstance(Landroid/content/Context;Z)Landroidx/media3/exoplayer/video/PlaceholderSurface;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;->placeholderSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public getConfigurationFormat()Landroidx/media3/common/Format;
    .locals 1

    .line 129
    iget-object v0, p0, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;->configurationFormat:Landroidx/media3/common/Format;

    return-object v0
.end method

.method public getInputFormat()Landroidx/media3/common/Format;
    .locals 1

    .line 165
    iget-object v0, p0, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;->configurationFormat:Landroidx/media3/common/Format;

    return-object v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .line 134
    iget-object v0, p0, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;->placeholderSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 124
    const-string v0, "DroppingEncoder"

    return-object v0
.end method

.method public getOutputBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputFormat()Landroidx/media3/common/Format;
    .locals 1

    .line 171
    iget-object v0, p0, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;->configurationFormat:Landroidx/media3/common/Format;

    return-object v0
.end method

.method public isEnded()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;->inputStreamEnded:Z

    return v0
.end method

.method public maybeDequeueInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)Z
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#1.data"
        }
        result = true
    .end annotation

    .line 140
    iget-boolean v0, p0, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;->inputStreamEnded:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 143
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;->buffer:Ljava/nio/ByteBuffer;

    iput-object v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method

.method public queueInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 3

    .line 149
    iget-boolean v0, p0, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;->inputStreamEnded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Input buffer can not be queued after the input stream has ended."

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 151
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iput-boolean v1, p0, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;->inputStreamEnded:Z

    .line 154
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public release()V
    .locals 1

    .line 199
    iget-object v0, p0, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;->placeholderSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    return-void
.end method

.method public releaseOutputBuffer(J)V
    .locals 0

    return-void
.end method

.method public releaseOutputBuffer(Z)V
    .locals 0

    return-void
.end method

.method public signalEndOfInputStream()V
    .locals 1

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;->inputStreamEnded:Z

    return-void
.end method
