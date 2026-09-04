.class public final Landroidx/media3/transformer/InAppMp4Muxer;
.super Ljava/lang/Object;
.source "InAppMp4Muxer.java"

# interfaces
.implements Landroidx/media3/muxer/Muxer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;,
        Landroidx/media3/transformer/InAppMp4Muxer$Factory;
    }
.end annotation


# static fields
.field public static final MUXER_NAME:Ljava/lang/String; = "androidx.media3:media3-muxer:1.9.2"

.field private static final TAG:Ljava/lang/String; = "InAppMp4Muxer"

.field private static final TRACK_ID_UNSET:I = -0x1


# instance fields
.field private final metadataEntries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media3/common/Metadata$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataProvider:Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;

.field private final muxer:Landroidx/media3/muxer/Mp4Muxer;

.field private final videoDurationUs:J

.field private videoTrackId:I


# direct methods
.method private constructor <init>(Landroidx/media3/muxer/Mp4Muxer;Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;J)V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Landroidx/media3/transformer/InAppMp4Muxer;->muxer:Landroidx/media3/muxer/Mp4Muxer;

    .line 149
    iput-object p2, p0, Landroidx/media3/transformer/InAppMp4Muxer;->metadataProvider:Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;

    .line 150
    iput-wide p3, p0, Landroidx/media3/transformer/InAppMp4Muxer;->videoDurationUs:J

    .line 151
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/InAppMp4Muxer;->metadataEntries:Ljava/util/Set;

    const/4 p1, -0x1

    .line 152
    iput p1, p0, Landroidx/media3/transformer/InAppMp4Muxer;->videoTrackId:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/muxer/Mp4Muxer;Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;JLandroidx/media3/transformer/InAppMp4Muxer$1;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/transformer/InAppMp4Muxer;-><init>(Landroidx/media3/muxer/Mp4Muxer;Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;J)V

    return-void
.end method

.method private writeMetadata()V
    .locals 3

    .line 205
    iget-object v0, p0, Landroidx/media3/transformer/InAppMp4Muxer;->metadataProvider:Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Landroidx/media3/transformer/InAppMp4Muxer;->metadataEntries:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 207
    iget-object v1, p0, Landroidx/media3/transformer/InAppMp4Muxer;->metadataProvider:Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;

    invoke-interface {v1, v0}, Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;->updateMetadataEntries(Ljava/util/Set;)V

    .line 208
    iget-object v1, p0, Landroidx/media3/transformer/InAppMp4Muxer;->metadataEntries:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 209
    iget-object v1, p0, Landroidx/media3/transformer/InAppMp4Muxer;->metadataEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 212
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/InAppMp4Muxer;->metadataEntries:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Metadata$Entry;

    .line 213
    iget-object v2, p0, Landroidx/media3/transformer/InAppMp4Muxer;->muxer:Landroidx/media3/muxer/Mp4Muxer;

    invoke-virtual {v2, v1}, Landroidx/media3/muxer/Mp4Muxer;->addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V
    .locals 1

    .line 185
    invoke-static {p1}, Landroidx/media3/muxer/MuxerUtil;->isMetadataSupported(Landroidx/media3/common/Metadata$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Landroidx/media3/transformer/InAppMp4Muxer;->metadataEntries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addTrack(Landroidx/media3/common/Format;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Landroidx/media3/transformer/InAppMp4Muxer;->muxer:Landroidx/media3/muxer/Mp4Muxer;

    invoke-virtual {v0, p1}, Landroidx/media3/muxer/Mp4Muxer;->addTrack(Landroidx/media3/common/Format;)I

    move-result v0

    .line 158
    iget-object v1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Landroidx/media3/transformer/InAppMp4Muxer;->muxer:Landroidx/media3/muxer/Mp4Muxer;

    new-instance v2, Landroidx/media3/container/Mp4OrientationData;

    iget p1, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    invoke-direct {v2, p1}, Landroidx/media3/container/Mp4OrientationData;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/media3/muxer/Mp4Muxer;->addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V

    .line 160
    iput v0, p0, Landroidx/media3/transformer/InAppMp4Muxer;->videoTrackId:I

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

    .line 192
    iget-wide v0, p0, Landroidx/media3/transformer/InAppMp4Muxer;->videoDurationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/transformer/InAppMp4Muxer;->videoTrackId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 193
    new-instance v0, Landroidx/media3/muxer/BufferInfo;

    iget-wide v1, p0, Landroidx/media3/transformer/InAppMp4Muxer;->videoDurationUs:J

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/media3/muxer/BufferInfo;-><init>(JII)V

    .line 198
    iget v1, p0, Landroidx/media3/transformer/InAppMp4Muxer;->videoTrackId:I

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Landroidx/media3/transformer/InAppMp4Muxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V

    .line 200
    :cond_0
    invoke-direct {p0}, Landroidx/media3/transformer/InAppMp4Muxer;->writeMetadata()V

    .line 201
    iget-object v0, p0, Landroidx/media3/transformer/InAppMp4Muxer;->muxer:Landroidx/media3/muxer/Mp4Muxer;

    invoke-virtual {v0}, Landroidx/media3/muxer/Mp4Muxer;->close()V

    return-void
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    .line 168
    iget-wide v0, p0, Landroidx/media3/transformer/InAppMp4Muxer;->videoDurationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/transformer/InAppMp4Muxer;->videoTrackId:I

    if-ne p1, v0, :cond_0

    iget-wide v0, p3, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    iget-wide v2, p0, Landroidx/media3/transformer/InAppMp4Muxer;->videoDurationUs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 171
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide p2, p3, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    .line 176
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-wide v0, p0, Landroidx/media3/transformer/InAppMp4Muxer;->videoDurationUs:J

    .line 177
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 173
    const-string p3, "Skipped sample with presentation time (%d) > video duration (%d)"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 171
    const-string p2, "InAppMp4Muxer"

    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/InAppMp4Muxer;->muxer:Landroidx/media3/muxer/Mp4Muxer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/muxer/Mp4Muxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V

    return-void
.end method
