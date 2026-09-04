.class public final Landroidx/media3/muxer/AacMuxer;
.super Ljava/lang/Object;
.source "AacMuxer.java"

# interfaces
.implements Landroidx/media3/muxer/Muxer;


# instance fields
.field private isTrackAdded:Z

.field private final outputStream:Ljava/io/FileOutputStream;

.field private final writer:Landroidx/media3/muxer/AacWriter;


# direct methods
.method public constructor <init>(Ljava/io/FileOutputStream;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroidx/media3/muxer/AacMuxer;->outputStream:Ljava/io/FileOutputStream;

    .line 49
    new-instance v0, Landroidx/media3/muxer/AacWriter;

    invoke-direct {v0, p1}, Landroidx/media3/muxer/AacWriter;-><init>(Ljava/io/FileOutputStream;)V

    iput-object v0, p0, Landroidx/media3/muxer/AacMuxer;->writer:Landroidx/media3/muxer/AacWriter;

    return-void
.end method


# virtual methods
.method public addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V
    .locals 1

    .line 92
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Writing metadata is not supported for AacMuxer."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTrack(Landroidx/media3/common/Format;)I
    .locals 3

    .line 60
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/mp4a-latm"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 61
    iget-boolean v0, p0, Landroidx/media3/muxer/AacMuxer;->isTrackAdded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Only one track is supported."

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 62
    iget-object v0, p0, Landroidx/media3/muxer/AacMuxer;->writer:Landroidx/media3/muxer/AacWriter;

    invoke-virtual {v0, p1}, Landroidx/media3/muxer/AacWriter;->setFormat(Landroidx/media3/common/Format;)V

    .line 63
    iput-boolean v1, p0, Landroidx/media3/muxer/AacMuxer;->isTrackAdded:Z

    const/4 p1, 0x0

    return p1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    .line 98
    :try_start_0
    iget-object v0, p0, Landroidx/media3/muxer/AacMuxer;->outputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 100
    new-instance v1, Landroidx/media3/muxer/MuxerException;

    const-string v2, "Failed to close the muxer"

    invoke-direct {v1, v2, v0}, Landroidx/media3/muxer/MuxerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    .line 71
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/muxer/AacMuxer;->isTrackAdded:Z

    const-string v1, "Track must be added before writing samples."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 72
    :goto_0
    const-string v0, "This track has not been added to the muxer."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 73
    iget-object p1, p0, Landroidx/media3/muxer/AacMuxer;->writer:Landroidx/media3/muxer/AacWriter;

    invoke-virtual {p1, p2, p3}, Landroidx/media3/muxer/AacWriter;->writeSampleData(Ljava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 75
    new-instance p2, Landroidx/media3/muxer/MuxerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to write sample for presentationTimeUs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p3, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p3, p3, Landroidx/media3/muxer/BufferInfo;->size:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroidx/media3/muxer/MuxerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
