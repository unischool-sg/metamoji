.class public interface abstract Landroidx/media3/muxer/SeekableMuxerOutput;
.super Ljava/lang/Object;
.source "SeekableMuxerOutput.java"

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;


# direct methods
.method public static of(Ljava/io/FileOutputStream;)Landroidx/media3/muxer/SeekableMuxerOutput;
    .locals 1

    .line 30
    new-instance v0, Landroidx/media3/muxer/FileOutputStreamSeekableMuxerOutput;

    invoke-direct {v0, p0}, Landroidx/media3/muxer/FileOutputStreamSeekableMuxerOutput;-><init>(Ljava/io/FileOutputStream;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Landroidx/media3/muxer/SeekableMuxerOutput;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 35
    new-instance v0, Landroidx/media3/muxer/FileOutputStreamSeekableMuxerOutput;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/media3/muxer/FileOutputStreamSeekableMuxerOutput;-><init>(Ljava/io/FileOutputStream;)V

    return-object v0
.end method


# virtual methods
.method public abstract getPosition()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSize()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setPosition(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract truncate(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
