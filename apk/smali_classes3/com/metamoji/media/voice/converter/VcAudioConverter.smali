.class public Lcom/metamoji/media/voice/converter/VcAudioConverter;
.super Ljava/lang/Object;
.source "VcAudioConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;
    }
.end annotation


# static fields
.field public static final BUFFER_SIZE:I = 0x15888

.field public static final CODEC_TIMEOUT_IN_MS:I = 0x64

.field public static final COMPRESSED_AUDIO_FILE_BIT_RATE:I = 0x1f400

.field public static final COMPRESSED_AUDIO_FILE_MIME_TYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final SAMPLING_RATE:I = 0xac44


# instance fields
.field dstFile_:Ljava/io/File;

.field mediaExtractor_:Landroid/media/MediaExtractor;

.field mediaFormat_:Landroid/media/MediaFormat;

.field mediaInfo_:Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;

.field srcFile_:Ljava/io/File;

.field tempRawDataFile_:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->srcFile_:Ljava/io/File;

    .line 43
    iput-object p2, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->dstFile_:Ljava/io/File;

    .line 44
    iput-object p3, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->tempRawDataFile_:Ljava/io/File;

    .line 46
    new-instance p1, Landroid/media/MediaExtractor;

    invoke-direct {p1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaExtractor_:Landroid/media/MediaExtractor;

    .line 49
    :try_start_0
    iget-object p2, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->srcFile_:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaExtractor_:Landroid/media/MediaExtractor;

    invoke-direct {p0, p1}, Lcom/metamoji/media/voice/converter/VcAudioConverter;->parseMediaFormat(Landroid/media/MediaExtractor;)Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaInfo_:Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private parseMediaFormat(Landroid/media/MediaExtractor;)Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;
    .locals 2

    const/4 v0, 0x0

    .line 240
    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaFormat_:Landroid/media/MediaFormat;

    .line 242
    new-instance p1, Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;

    invoke-direct {p1}, Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;-><init>()V

    .line 244
    iget-object v0, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaFormat_:Landroid/media/MediaFormat;

    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaFormat_:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;->mimeType:Ljava/lang/String;

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaFormat_:Landroid/media/MediaFormat;

    const-string/jumbo v1, "sample-rate"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaFormat_:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;->samplingRate:I

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaFormat_:Landroid/media/MediaFormat;

    const-string v1, "channel-count"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaFormat_:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;->channels:I

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaFormat_:Landroid/media/MediaFormat;

    const-string v1, "durationUs"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaFormat_:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;->duration:J

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaFormat_:Landroid/media/MediaFormat;

    const-string v1, "bitrate"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 257
    iget-object v0, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaFormat_:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;->bitRate:I

    :cond_4
    return-object p1
.end method


# virtual methods
.method public convert()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaInfo_:Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;

    iget-object v0, v0, Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;->mimeType:Ljava/lang/String;

    const-string v1, "audio/m4a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaInfo_:Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;

    iget-object v0, v0, Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;->mimeType:Ljava/lang/String;

    const-string v1, "audio/x-m4a"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaInfo_:Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;

    iget-object v0, v0, Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;->mimeType:Ljava/lang/String;

    const-string v1, "audio/mp4"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaInfo_:Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;

    iget-object v0, v0, Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;->mimeType:Ljava/lang/String;

    const-string v1, "audio/mp4a-latm"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaInfo_:Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;

    iget-object v0, v0, Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;->mimeType:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->srcFile_:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->tempRawDataFile_:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->tempRawDataFile_:Ljava/io/File;

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/media/voice/converter/VcAudioConverter;->convertToPCM(Ljava/io/File;Ljava/io/File;)V

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->tempRawDataFile_:Ljava/io/File;

    iget-object v1, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->dstFile_:Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/media/voice/converter/VcAudioConverter;->convertPCMtoM4A(Ljava/io/File;Ljava/io/File;)V

    return-void

    .line 60
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->srcFile_:Ljava/io/File;

    iget-object v1, p0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->dstFile_:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    return-void
.end method

.method convertPCMtoM4A(Ljava/io/File;Ljava/io/File;)V
    .locals 22

    move-object/from16 v0, p0

    .line 152
    const-string v1, "audio/mp4a-latm"

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 154
    new-instance v4, Landroid/media/MediaMuxer;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 156
    iget-object v5, v0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaInfo_:Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;

    iget v5, v5, Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;->channels:I

    const v7, 0xac44

    invoke-static {v1, v7, v5}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v5

    .line 157
    const-string v7, "aac-profile"

    const/4 v8, 0x2

    invoke-virtual {v5, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 158
    const-string v7, "bitrate"

    const v9, 0x1f400

    invoke-virtual {v5, v7, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 160
    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v10

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 161
    invoke-virtual {v10, v5, v7, v7, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 162
    invoke-virtual {v10}, Landroid/media/MediaCodec;->start()V

    .line 167
    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 169
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v11

    long-to-float v3, v11

    const v7, 0x15888

    .line 170
    new-array v7, v7, [B

    const-wide/16 v11, 0x0

    move v9, v6

    move/from16 v17, v9

    :goto_0
    move v13, v6

    :goto_1
    const-wide/16 v14, 0x64

    move/from16 p2, v8

    const/4 v8, -0x1

    if-eq v13, v8, :cond_2

    if-eqz v1, :cond_2

    .line 181
    invoke-virtual {v10, v14, v15}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v13

    if-ltz v13, :cond_1

    .line 184
    invoke-virtual {v10, v13}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 185
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 187
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->limit()I

    move-result v15

    invoke-virtual {v2, v7, v6, v15}, Ljava/io/FileInputStream;->read([BII)I

    move-result v15

    if-ne v15, v8, :cond_0

    double-to-long v14, v11

    const/16 v16, 0x4

    move-wide/from16 v18, v11

    const/4 v12, 0x0

    move v11, v13

    const/4 v13, 0x0

    move/from16 p1, v9

    move-wide/from16 v8, v18

    .line 190
    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    move v1, v6

    move-wide v12, v8

    move/from16 v9, p1

    goto :goto_2

    :cond_0
    move/from16 p1, v9

    move-wide v8, v11

    move v11, v13

    add-int v18, p1, v15

    .line 193
    invoke-virtual {v14, v7, v6, v15}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move v13, v15

    double-to-long v14, v8

    const/16 v16, 0x0

    const/4 v12, 0x0

    .line 194
    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 195
    iget-object v8, v0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaInfo_:Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;

    iget v8, v8, Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;->channels:I

    div-int v8, v18, v8

    int-to-long v8, v8

    const-wide/32 v12, 0xf4240

    mul-long/2addr v8, v12

    const-wide/32 v12, 0xac44

    div-long/2addr v8, v12

    long-to-double v8, v8

    move-wide v12, v8

    move/from16 v9, v18

    :goto_2
    move-wide/from16 v20, v12

    move v13, v11

    move-wide/from16 v11, v20

    goto :goto_3

    :cond_1
    move/from16 p1, v9

    move-wide v8, v11

    move v11, v13

    move-wide v11, v8

    move/from16 v9, p1

    :goto_3
    move/from16 v8, p2

    goto :goto_1

    :cond_2
    move/from16 p1, v9

    move-wide/from16 v20, v11

    move v11, v8

    move-wide/from16 v8, v20

    move v13, v6

    move/from16 v12, v17

    :goto_4
    if-eq v13, v11, :cond_7

    .line 204
    invoke-virtual {v10, v5, v14, v15}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v13

    if-ltz v13, :cond_4

    .line 206
    invoke-virtual {v10, v13}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 207
    iget v15, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 208
    iget v15, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v11, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v15, v11

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 210
    iget v11, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_3

    iget v11, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v11, :cond_3

    .line 211
    invoke-virtual {v10, v13, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_5

    .line 213
    :cond_3
    invoke-virtual {v4, v12, v14, v5}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 214
    invoke-virtual {v10, v13, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_5

    :cond_4
    const/4 v11, -0x2

    if-ne v13, v11, :cond_5

    .line 217
    invoke-virtual {v10}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v11

    .line 218
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Output format changed - "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v4, v11}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v12

    .line 220
    invoke-virtual {v4}, Landroid/media/MediaMuxer;->start()V

    :goto_5
    const/4 v11, -0x1

    goto :goto_6

    :cond_5
    const/4 v11, -0x1

    if-ne v13, v11, :cond_6

    goto :goto_6

    .line 224
    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown return code from dequeueOutputBuffer - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;)V

    :goto_6
    const-wide/16 v14, 0x64

    goto :goto_4

    :cond_7
    move/from16 v11, p1

    int-to-float v13, v11

    div-float/2addr v13, v3

    float-to-double v13, v13

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    mul-double/2addr v13, v15

    .line 227
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v13, v13

    .line 228
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ToM4A:Conversion % - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;)V

    .line 229
    iget v13, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_8

    .line 231
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 232
    invoke-virtual {v4}, Landroid/media/MediaMuxer;->stop()V

    .line 233
    invoke-virtual {v4}, Landroid/media/MediaMuxer;->release()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_8
    move/from16 v17, v12

    move-wide/from16 v20, v8

    move/from16 v8, p2

    move v9, v11

    move-wide/from16 v11, v20

    goto/16 :goto_0

    :catch_0
    return-void
.end method

.method convertToPCM(Ljava/io/File;Ljava/io/File;)V
    .locals 16

    move-object/from16 v0, p0

    .line 73
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 75
    iget-object v2, v0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaExtractor_:Landroid/media/MediaExtractor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 77
    iget-object v2, v0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaInfo_:Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;

    iget-object v2, v2, Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;->mimeType:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    .line 78
    iget-object v2, v0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaFormat_:Landroid/media/MediaFormat;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v5, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 79
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 84
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 86
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-float v11, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    move v8, v3

    :goto_0
    move v12, v5

    move-wide v13, v6

    move v15, v8

    move v5, v3

    :cond_0
    :goto_1
    const-wide/16 v6, 0x64

    const/4 v8, -0x1

    if-eq v5, v8, :cond_2

    if-eqz v12, :cond_2

    .line 95
    invoke-virtual {v4, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_0

    .line 98
    invoke-virtual {v4, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 99
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 101
    iget-object v7, v0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaExtractor_:Landroid/media/MediaExtractor;

    invoke-virtual {v7, v6, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    if-ne v7, v8, :cond_1

    double-to-long v8, v13

    const/4 v10, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 104
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    move v12, v3

    goto :goto_1

    :cond_1
    add-int/2addr v15, v7

    .line 107
    iget-object v6, v0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaExtractor_:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 108
    iget-object v6, v0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaExtractor_:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->advance()Z

    .line 109
    iget-object v6, v0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaInfo_:Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;

    iget v6, v6, Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;->channels:I

    div-int v6, v15, v6

    int-to-long v6, v6

    const-wide/32 v8, 0xf4240

    mul-long/2addr v6, v8

    iget-object v8, v0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaInfo_:Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;

    iget v8, v8, Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;->samplingRate:I

    int-to-long v8, v8

    div-long/2addr v6, v8

    long-to-double v13, v6

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_2
    if-eq v5, v8, :cond_6

    .line 118
    invoke-virtual {v4, v2, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    if-ltz v5, :cond_3

    .line 120
    invoke-virtual {v4, v5}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 121
    iget v10, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v10, v10, [B

    .line 122
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 123
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 125
    invoke-virtual {v1, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 127
    invoke-virtual {v4, v5, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_3

    :cond_3
    const/4 v9, -0x2

    if-ne v5, v9, :cond_4

    .line 129
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v9

    .line 130
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Output format changed - "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    if-ne v5, v8, :cond_5

    goto :goto_3

    .line 134
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown return code from dequeueOutputBuffer - "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;)V

    :goto_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    int-to-float v3, v15

    div-float/2addr v3, v11

    float-to-double v5, v3

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v7

    .line 137
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v3, v5

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ToPCM:Conversion % - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;)V

    .line 139
    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_7

    .line 141
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 142
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 143
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 144
    iget-object v1, v0, Lcom/metamoji/media/voice/converter/VcAudioConverter;->mediaExtractor_:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_7
    move v5, v12

    move-wide v6, v13

    move v8, v15

    const/4 v3, 0x0

    goto/16 :goto_0

    :catch_0
    return-void
.end method
