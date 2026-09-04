.class public final Landroidx/media3/transformer/InAppFragmentedMp4Muxer;
.super Ljava/lang/Object;
.source "InAppFragmentedMp4Muxer.java"

# interfaces
.implements Landroidx/media3/muxer/Muxer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/InAppFragmentedMp4Muxer$Factory;
    }
.end annotation


# static fields
.field public static final MUXER_NAME:Ljava/lang/String; = "androidx.media3:media3-muxer:1.9.2"

.field private static final TAG:Ljava/lang/String; = "InAppFragmentedMp4Muxer"

.field private static final TRACK_ID_UNSET:I = -0x1


# instance fields
.field private final muxer:Landroidx/media3/muxer/FragmentedMp4Muxer;

.field private final videoDurationUs:J

.field private videoTrackId:I


# direct methods
.method private constructor <init>(Landroidx/media3/muxer/FragmentedMp4Muxer;J)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer;->muxer:Landroidx/media3/muxer/FragmentedMp4Muxer;

    .line 127
    iput-wide p2, p0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer;->videoDurationUs:J

    const/4 p1, -0x1

    .line 128
    iput p1, p0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer;->videoTrackId:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/muxer/FragmentedMp4Muxer;JLandroidx/media3/transformer/InAppFragmentedMp4Muxer$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/transformer/InAppFragmentedMp4Muxer;-><init>(Landroidx/media3/muxer/FragmentedMp4Muxer;J)V

    return-void
.end method


# virtual methods
.method public addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V
    .locals 1

    .line 161
    invoke-static {p1}, Landroidx/media3/muxer/MuxerUtil;->isMetadataSupported(Landroidx/media3/common/Metadata$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer;->muxer:Landroidx/media3/muxer/FragmentedMp4Muxer;

    invoke-virtual {v0, p1}, Landroidx/media3/muxer/FragmentedMp4Muxer;->addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V

    :cond_0
    return-void
.end method

.method public addTrack(Landroidx/media3/common/Format;)I
    .locals 3

    .line 133
    iget-object v0, p0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer;->muxer:Landroidx/media3/muxer/FragmentedMp4Muxer;

    invoke-virtual {v0, p1}, Landroidx/media3/muxer/FragmentedMp4Muxer;->addTrack(Landroidx/media3/common/Format;)I

    move-result v0

    .line 134
    iget-object v1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer;->muxer:Landroidx/media3/muxer/FragmentedMp4Muxer;

    new-instance v2, Landroidx/media3/container/Mp4OrientationData;

    iget p1, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    invoke-direct {v2, p1}, Landroidx/media3/container/Mp4OrientationData;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/media3/muxer/FragmentedMp4Muxer;->addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V

    .line 136
    iput v0, p0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer;->videoTrackId:I

    :cond_0
    return v0
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    .line 168
    iget-wide v0, p0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer;->videoDurationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer;->videoTrackId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 169
    new-instance v0, Landroidx/media3/muxer/BufferInfo;

    iget-wide v1, p0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer;->videoDurationUs:J

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/media3/muxer/BufferInfo;-><init>(JII)V

    .line 174
    iget v1, p0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer;->videoTrackId:I

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Landroidx/media3/transformer/InAppFragmentedMp4Muxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V

    .line 176
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer;->muxer:Landroidx/media3/muxer/FragmentedMp4Muxer;

    invoke-virtual {v0}, Landroidx/media3/muxer/FragmentedMp4Muxer;->close()V

    return-void
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    .line 144
    iget-wide v0, p0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer;->videoDurationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer;->videoTrackId:I

    if-ne p1, v0, :cond_0

    iget-wide v0, p3, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    iget-wide v2, p0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer;->videoDurationUs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 147
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide p2, p3, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    .line 152
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-wide v0, p0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer;->videoDurationUs:J

    .line 153
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 149
    const-string p3, "Skipped sample with presentation time (%d) > video duration (%d)"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 147
    const-string p2, "InAppFragmentedMp4Muxer"

    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer;->muxer:Landroidx/media3/muxer/FragmentedMp4Muxer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/muxer/FragmentedMp4Muxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V

    return-void
.end method
