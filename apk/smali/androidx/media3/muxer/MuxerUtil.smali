.class public final Landroidx/media3/muxer/MuxerUtil;
.super Ljava/lang/Object;
.source "MuxerUtil.java"


# static fields
.field private static final APP0_MARKER:S = -0x20s

.field private static final APP1_MARKER:S = -0x1fs

.field private static final EOI_MARKER:S = -0x27s

.field private static final JPEG_XMP_IDENTIFIER:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/\u0000"

.field private static final SEGMENT_MARKER_LENGTH:I = 0x2

.field private static final SEGMENT_SIZE_LENGTH:I = 0x2

.field private static final SOI_MARKER:S = -0x28s

.field private static final SOS_MARKER:S = -0x26s

.field public static final UNSIGNED_INT_MAX_VALUE:J = 0xffffffffL


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMotionPhotoFromJpegImageAndBmffVideo(Ljava/io/FileInputStream;JLjava/io/FileInputStream;Ljava/lang/String;Ljava/nio/channels/WritableByteChannel;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p4

    .line 108
    const-string/jumbo v0, "video/mp4"

    .line 109
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "video/quicktime"

    .line 110
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Only MP4 and QUICKTIME container mime types supported"

    .line 108
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 113
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    .line 114
    sget-object v8, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v9, 0x0

    .line 116
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v11

    .line 115
    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 117
    invoke-virtual/range {p3 .. p3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    .line 118
    const-string v3, "image/jpeg"

    .line 122
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    move-wide v1, p1

    move-object/from16 v7, p5

    .line 118
    invoke-static/range {v0 .. v7}, Landroidx/media3/muxer/MuxerUtil;->writeImageDataToOutput(Ljava/nio/ByteBuffer;JLjava/lang/String;JLjava/lang/String;Ljava/nio/channels/WritableByteChannel;)V

    const-wide/16 v2, 0x0

    .line 126
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    move-object v1, p0

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    return-void
.end method

.method private static findIndexForNewApp1Segment(Ljava/nio/ByteBuffer;)I
    .locals 4

    .line 271
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 272
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/16 v1, -0x28

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 273
    :goto_0
    const-string v1, "SOI marker not found"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 275
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 276
    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_4

    .line 277
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const/16 v3, -0x26

    if-eq v1, v3, :cond_4

    const/16 v3, -0x27

    if-ne v1, v3, :cond_1

    goto :goto_2

    .line 283
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    sub-int/2addr v3, v2

    const/16 v2, -0x20

    if-eq v1, v2, :cond_2

    const/16 v2, -0x1f

    if-ne v1, v2, :cond_3

    .line 286
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v3

    .line 289
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 291
    :cond_4
    :goto_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    return v0
.end method

.method private static generateMotionPhotoXmp(JLjava/lang/String;Ljava/lang/String;J)[B
    .locals 1

    .line 300
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 333
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 336
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 301
    const-string p1, "<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.1.0-jc003\">\n  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n    <rdf:Description rdf:about=\"\"\n        xmlns:GCamera=\"http://ns.google.com/photos/1.0/camera/\"\n        xmlns:Container=\"http://ns.google.com/photos/1.0/container/\"\n        xmlns:Item=\"http://ns.google.com/photos/1.0/container/item/\"\n      GCamera:MotionPhoto=\"1\"\n      GCamera:MotionPhotoVersion=\"1\"\n      GCamera:MotionPhotoPresentationTimestampUs=\"%d\">\n        <Container:Directory>\n          <rdf:Seq>\n            <rdf:li rdf:parseType=\"Resource\">\n              <Container:Item\n                Item:Mime=\"%s\"\n                Item:Semantic=\"Primary\"\n                Item:Length=\"0\"\n                Item:Padding=\"0\"/>\n            </rdf:li>\n            <rdf:li rdf:parseType=\"Resource\">\n              <Container:Item\n                Item:Mime=\"%s\"\n                Item:Semantic=\"MotionPhoto\"\n                Item:Length=\"%d\"\n                Item:Padding=\"0\"/>\n            </rdf:li>\n          </rdf:Seq>\n        </Container:Directory>\n      </rdf:Description>\n    </rdf:RDF>\n  </x:xmpmeta>\n"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 337
    invoke-static {p0}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static getApp1SegmentWithMotionPhotoXmpDate([B)Ljava/nio/ByteBuffer;
    .locals 4

    .line 342
    const-string v0, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    array-length v2, p0

    add-int/2addr v1, v2

    int-to-short v1, v1

    add-int/lit8 v2, v1, 0x2

    .line 343
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v3, -0x1f

    .line 344
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 345
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 346
    invoke-static {v0}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 347
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 348
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v2
.end method

.method static getAuxiliaryTracksLengthMetadata(J)Landroidx/media3/container/MdtaMetadataEntry;
    .locals 2

    .line 160
    new-instance v0, Landroidx/media3/container/MdtaMetadataEntry;

    .line 162
    invoke-static {p0, p1}, Lcom/google/common/primitives/Longs;->toByteArray(J)[B

    move-result-object p0

    const/16 p1, 0x4e

    const-string v1, "auxiliary.tracks.length"

    invoke-direct {v0, v1, p0, p1}, Landroidx/media3/container/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BI)V

    return-object v0
.end method

.method private static getAuxiliaryTracksMapMetadata(Ljava/util/List;)Landroidx/media3/container/MdtaMetadataEntry;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/muxer/Track;",
            ">;)",
            "Landroidx/media3/container/MdtaMetadataEntry;"
        }
    .end annotation

    .line 199
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    .line 201
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 202
    aput-byte v3, v1, v2

    int-to-byte v4, v0

    .line 203
    aput-byte v4, v1, v3

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_4

    .line 205
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/muxer/Track;

    .line 207
    iget-object v6, v5, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    iget v6, v6, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    if-eq v6, v3, :cond_2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    const/4 v8, 0x3

    if-eq v6, v8, :cond_3

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    move v7, v8

    goto :goto_1

    .line 221
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported auxiliary track type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    iget v1, v1, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move v7, v3

    goto :goto_1

    :cond_2
    move v7, v2

    :cond_3
    :goto_1
    add-int/lit8 v5, v4, 0x2

    int-to-byte v6, v7

    .line 224
    aput-byte v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 226
    :cond_4
    new-instance p0, Landroidx/media3/container/MdtaMetadataEntry;

    const-string v0, "auxiliary.tracks.map"

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/container/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BI)V

    return-object p0
.end method

.method static getAuxiliaryTracksOffsetMetadata(J)Landroidx/media3/container/MdtaMetadataEntry;
    .locals 2

    .line 152
    new-instance v0, Landroidx/media3/container/MdtaMetadataEntry;

    .line 154
    invoke-static {p0, p1}, Lcom/google/common/primitives/Longs;->toByteArray(J)[B

    move-result-object p0

    const/16 p1, 0x4e

    const-string v1, "auxiliary.tracks.offset"

    invoke-direct {v0, v1, p0, p1}, Landroidx/media3/container/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BI)V

    return-object v0
.end method

.method private static getAuxiliaryTracksSamplesLocationMetadata(Z)Landroidx/media3/container/MdtaMetadataEntry;
    .locals 3

    .line 187
    new-instance v0, Landroidx/media3/container/MdtaMetadataEntry;

    const/4 v1, 0x1

    .line 192
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p0, v1, v2

    const/16 p0, 0x4b

    const-string v2, "auxiliary.tracks.interleaved"

    invoke-direct {v0, v2, v1, p0}, Landroidx/media3/container/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BI)V

    return-object v0
.end method

.method public static getMuxerBufferInfoFromMediaCodecBufferInfo(Landroid/media/MediaCodec$BufferInfo;)Landroidx/media3/muxer/BufferInfo;
    .locals 4

    .line 78
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v0, Landroidx/media3/muxer/BufferInfo;

    iget-wide v1, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v3, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget p0, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 82
    invoke-static {p0}, Landroidx/media3/common/util/Util;->getBufferFlagsFromMediaCodecFlags(I)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/media3/muxer/BufferInfo;-><init>(JII)V

    return-object v0
.end method

.method static isAuxiliaryTrack(Landroidx/media3/common/Format;)Z
    .locals 3

    .line 143
    iget v0, p0, Landroidx/media3/common/Format;->roleFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget p0, p0, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isMdtaMetadataEntrySupported(Landroidx/media3/container/MdtaMetadataEntry;)Z
    .locals 2

    .line 233
    iget v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget p0, p0, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    const/16 v0, 0x17

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isMetadataSupported(Landroidx/media3/common/Metadata$Entry;)Z
    .locals 1

    .line 66
    instance-of v0, p0, Landroidx/media3/container/Mp4OrientationData;

    if-nez v0, :cond_3

    instance-of v0, p0, Landroidx/media3/container/Mp4LocationData;

    if-nez v0, :cond_3

    instance-of v0, p0, Landroidx/media3/container/Mp4TimestampData;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/media3/container/Mp4TimestampData;

    .line 69
    invoke-static {v0}, Landroidx/media3/muxer/MuxerUtil;->isMp4TimestampDataSupported(Landroidx/media3/container/Mp4TimestampData;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    instance-of v0, p0, Landroidx/media3/container/MdtaMetadataEntry;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/media3/container/MdtaMetadataEntry;

    .line 71
    invoke-static {v0}, Landroidx/media3/muxer/MuxerUtil;->isMdtaMetadataEntrySupported(Landroidx/media3/container/MdtaMetadataEntry;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    instance-of p0, p0, Landroidx/media3/container/XmpData;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isMp4TimestampDataSupported(Landroidx/media3/container/Mp4TimestampData;)Z
    .locals 4

    .line 238
    iget-wide v0, p0, Landroidx/media3/container/Mp4TimestampData;->creationTimestampSeconds:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/container/Mp4TimestampData;->modificationTimestampSeconds:J

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static populateAuxiliaryTracksMetadata(Landroidx/media3/muxer/MetadataCollector;Landroidx/media3/container/Mp4TimestampData;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/muxer/MetadataCollector;",
            "Landroidx/media3/container/Mp4TimestampData;",
            "Z",
            "Ljava/util/List<",
            "Landroidx/media3/muxer/Track;",
            ">;)V"
        }
    .end annotation

    .line 180
    invoke-virtual {p0, p1}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    .line 181
    invoke-static {p2}, Landroidx/media3/muxer/MuxerUtil;->getAuxiliaryTracksSamplesLocationMetadata(Z)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    .line 182
    invoke-static {p3}, Landroidx/media3/muxer/MuxerUtil;->getAuxiliaryTracksMapMetadata(Ljava/util/List;)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    return-void
.end method

.method private static writeImageDataToOutput(Ljava/nio/ByteBuffer;JLjava/lang/String;JLjava/lang/String;Ljava/nio/channels/WritableByteChannel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-static {p0}, Landroidx/media3/muxer/MuxerUtil;->findIndexForNewApp1Segment(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 252
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 253
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 254
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 255
    invoke-interface {p7, p0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 257
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 258
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-wide v3, p4

    move-object p4, p6

    move-wide p5, v3

    .line 261
    invoke-static/range {p1 .. p6}, Landroidx/media3/muxer/MuxerUtil;->generateMotionPhotoXmp(JLjava/lang/String;Ljava/lang/String;J)[B

    move-result-object p1

    .line 263
    invoke-static {p1}, Landroidx/media3/muxer/MuxerUtil;->getApp1SegmentWithMotionPhotoXmpDate([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 264
    invoke-interface {p7, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 266
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 267
    invoke-interface {p7, p0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method
