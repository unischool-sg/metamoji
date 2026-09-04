.class public Lcom/ringdroid/soundfile/SoundFile;
.super Ljava/lang/Object;
.source "SoundFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ringdroid/soundfile/SoundFile$ProgressListener;,
        Lcom/ringdroid/soundfile/SoundFile$InvalidInputException;
    }
.end annotation


# instance fields
.field private mAvgBitRate:I

.field private mChannels:I

.field private mDecodedBytes:Ljava/nio/ByteBuffer;

.field private mDecodedSamples:Ljava/nio/ShortBuffer;

.field private mFileSize:I

.field private mFileType:Ljava/lang/String;

.field private mFrameGains:[I

.field private mFrameLens:[I

.field private mFrameOffsets:[I

.field private mInputFile:Ljava/io/File;

.field private mNumFrames:I

.field private mNumSamples:I

.field private mProgressListener:Lcom/ringdroid/soundfile/SoundFile$ProgressListener;

.field private mSampleRate:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/ringdroid/soundfile/SoundFile;->mProgressListener:Lcom/ringdroid/soundfile/SoundFile$ProgressListener;

    .line 43
    iput-object v0, p0, Lcom/ringdroid/soundfile/SoundFile;->mInputFile:Ljava/io/File;

    return-void
.end method

.method private DumpSamples()V
    .locals 1

    const/4 v0, 0x0

    .line 779
    invoke-direct {p0, v0}, Lcom/ringdroid/soundfile/SoundFile;->DumpSamples(Ljava/lang/String;)V

    return-void
.end method

.method private DumpSamples(Ljava/lang/String;)V
    .locals 7

    .line 730
    const-string v0, "Ringdroid"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 731
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 734
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "media/audio/debug/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 736
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 739
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz p1, :cond_2

    .line 742
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 743
    :cond_2
    const-string p1, "samples.tsv"

    .line 745
    :cond_3
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 750
    iget-object p1, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedSamples:Ljava/nio/ShortBuffer;

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    const/4 p1, 0x0

    .line 753
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x0

    move v2, p1

    .line 754
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/ringdroid/soundfile/SoundFile;->mNumSamples:I

    if-ge v2, v3, :cond_5

    int-to-float v3, v2

    .line 755
    iget v4, p0, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 756
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    move v4, p1

    .line 757
    :goto_2
    iget v5, p0, Lcom/ringdroid/soundfile/SoundFile;->mChannels:I

    if-ge v4, v5, :cond_4

    .line 758
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\t"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedSamples:Ljava/nio/ShortBuffer;

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->get()S

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 760
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 761
    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, p1

    move-object p1, v6

    .line 764
    :goto_3
    const-string v2, "Failed to create the sample TSV file."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-direct {p0, p1}, Lcom/ringdroid/soundfile/SoundFile;->getStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_5
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 771
    const-string v1, "Failed to close sample TSV file."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-direct {p0, p1}, Lcom/ringdroid/soundfile/SoundFile;->getStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :goto_4
    iget-object p1, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedSamples:Ljava/nio/ShortBuffer;

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method private ReadFile(Ljava/io/File;)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/ringdroid/soundfile/SoundFile$InvalidInputException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 200
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    move-object/from16 v2, p1

    .line 204
    iput-object v2, v0, Lcom/ringdroid/soundfile/SoundFile;->mInputFile:Ljava/io/File;

    .line 205
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 206
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    iput-object v2, v0, Lcom/ringdroid/soundfile/SoundFile;->mFileType:Ljava/lang/String;

    .line 207
    iget-object v2, v0, Lcom/ringdroid/soundfile/SoundFile;->mInputFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lcom/ringdroid/soundfile/SoundFile;->mFileSize:I

    .line 208
    iget-object v2, v0, Lcom/ringdroid/soundfile/SoundFile;->mInputFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v7, v3

    move v6, v5

    .line 211
    :goto_0
    const-string v8, "mime"

    if-ge v6, v2, :cond_1

    .line 212
    invoke-virtual {v1, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v7

    .line 213
    invoke-virtual {v7, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "audio/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 214
    invoke-virtual {v1, v6}, Landroid/media/MediaExtractor;->selectTrack(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eq v6, v2, :cond_15

    .line 221
    const-string v2, "channel-count"

    invoke-virtual {v7, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/ringdroid/soundfile/SoundFile;->mChannels:I

    .line 222
    const-string v2, "sample-rate"

    invoke-virtual {v7, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    .line 224
    const-string v2, "durationUs"

    .line 225
    invoke-virtual {v7, v2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-float v2, v9

    const v6, 0x49742400    # 1000000.0f

    div-float/2addr v2, v6

    iget v6, v0, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    int-to-float v6, v6

    mul-float/2addr v2, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v2, v6

    float-to-int v2, v2

    .line 227
    invoke-virtual {v7, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v9

    .line 228
    invoke-virtual {v9, v7, v3, v3, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 229
    invoke-virtual {v9}, Landroid/media/MediaCodec;->start()V

    .line 233
    invoke-virtual {v9}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 234
    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 236
    new-instance v11, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v11}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/high16 v12, 0x100000

    .line 245
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    iput-object v12, v0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    .line 246
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v19, v3

    move/from16 v17, v5

    move/from16 v18, v17

    move-object/from16 v16, v10

    move/from16 v10, v18

    :goto_2
    const-wide/16 v13, 0x64

    move v15, v10

    .line 249
    invoke-virtual {v9, v13, v14}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v10

    const/4 v3, 0x2

    if-nez v17, :cond_5

    if-ltz v10, :cond_5

    move/from16 v20, v4

    .line 251
    aget-object v4, v6, v10

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    .line 252
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 253
    invoke-virtual {v7, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "audio/mp4a-latm"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    if-ne v4, v3, :cond_2

    .line 261
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    add-int v18, v18, v4

    move/from16 v21, v3

    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v3, v11

    move v4, v15

    const-wide/16 v5, 0x64

    goto :goto_3

    :cond_2
    if-gez v4, :cond_3

    const-wide/16 v13, -0x1

    move v4, v15

    const/4 v15, 0x4

    move-object v12, v11

    const/4 v11, 0x0

    move-object/from16 v17, v12

    const/4 v12, 0x0

    move/from16 v21, v3

    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v3, v17

    const-wide/16 v5, 0x64

    .line 265
    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    move/from16 v17, v20

    goto :goto_3

    :cond_3
    move/from16 v21, v3

    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v3, v11

    const-wide/16 v5, 0x64

    .line 269
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v13

    const/4 v11, 0x0

    move v12, v15

    const/4 v15, 0x0

    move/from16 v27, v12

    move v12, v4

    move/from16 v4, v27

    .line 270
    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 271
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    add-int v10, v18, v12

    .line 273
    iget-object v11, v0, Lcom/ringdroid/soundfile/SoundFile;->mProgressListener:Lcom/ringdroid/soundfile/SoundFile$ProgressListener;

    if-eqz v11, :cond_4

    int-to-float v12, v10

    .line 274
    iget v13, v0, Lcom/ringdroid/soundfile/SoundFile;->mFileSize:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-interface {v11, v12, v13}, Lcom/ringdroid/soundfile/SoundFile$ProgressListener;->reportProgress(D)Z

    move-result v11

    if-nez v11, :cond_4

    .line 277
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 279
    invoke-virtual {v9}, Landroid/media/MediaCodec;->stop()V

    .line 280
    invoke-virtual {v9}, Landroid/media/MediaCodec;->release()V

    return-void

    :cond_4
    move/from16 v18, v10

    .line 286
    :goto_3
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object v12, v10

    goto :goto_4

    :cond_5
    move/from16 v21, v3

    move/from16 v20, v4

    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object v3, v11

    move-wide v5, v13

    move v4, v15

    :goto_4
    move/from16 v10, v18

    .line 290
    invoke-virtual {v9, v3, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    if-ltz v5, :cond_b

    .line 291
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v6, :cond_b

    .line 292
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ge v4, v6, :cond_6

    .line 293
    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 294
    new-array v6, v4, [B

    goto :goto_5

    :cond_6
    move-object/from16 v6, v19

    .line 296
    :goto_5
    aget-object v11, v16, v5

    iget v13, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v14, v22

    invoke-virtual {v11, v6, v14, v13}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 297
    aget-object v11, v16, v5

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 299
    iget-object v11, v0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    iget v13, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ge v11, v13, :cond_a

    .line 302
    iget-object v11, v0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    int-to-double v13, v11

    .line 303
    iget v15, v0, Lcom/ringdroid/soundfile/SoundFile;->mFileSize:I

    move-object/from16 v24, v7

    move-object/from16 v18, v8

    int-to-double v7, v15

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    mul-double v7, v7, v25

    move-wide/from16 v25, v7

    int-to-double v7, v10

    div-double v7, v25, v7

    mul-double/2addr v13, v7

    const-wide v7, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v13, v7

    double-to-int v7, v13

    sub-int v8, v7, v11

    .line 304
    iget v13, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/high16 v14, 0x500000

    add-int/2addr v13, v14

    if-ge v8, v13, :cond_7

    .line 305
    iget v7, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v7, v11

    add-int/2addr v7, v14

    :cond_7
    const/16 v8, 0xa

    :goto_6
    if-lez v8, :cond_8

    .line 312
    :try_start_0
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    :goto_7
    if-nez v8, :cond_9

    const/4 v14, 0x0

    goto :goto_a

    .line 326
    :cond_9
    iget-object v8, v0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 327
    iget-object v8, v0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 328
    iput-object v7, v0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    .line 329
    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_8

    :cond_a
    move-object/from16 v24, v7

    move-object/from16 v18, v8

    .line 331
    :goto_8
    iget-object v7, v0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    iget v8, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v14, 0x0

    invoke-virtual {v7, v6, v14, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 332
    invoke-virtual {v9, v5, v14}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-object/from16 v19, v6

    goto :goto_9

    :cond_b
    move-object/from16 v24, v7

    move-object/from16 v18, v8

    move/from16 v14, v22

    const/4 v6, -0x3

    if-ne v5, v6, :cond_c

    .line 334
    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object/from16 v16, v5

    .line 340
    :cond_c
    :goto_9
    iget v5, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_e

    iget-object v5, v0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    .line 341
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    iget v6, v0, Lcom/ringdroid/soundfile/SoundFile;->mChannels:I

    mul-int/lit8 v6, v6, 0x2

    div-int/2addr v5, v6

    if-lt v5, v2, :cond_d

    goto :goto_a

    :cond_d
    move-object v11, v3

    move v5, v14

    move-object/from16 v8, v18

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    const/4 v3, 0x0

    move/from16 v18, v10

    move v10, v4

    move/from16 v4, v20

    goto/16 :goto_2

    .line 354
    :cond_e
    :goto_a
    iget-object v2, v0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget v3, v0, Lcom/ringdroid/soundfile/SoundFile;->mChannels:I

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v2, v3

    iput v2, v0, Lcom/ringdroid/soundfile/SoundFile;->mNumSamples:I

    .line 355
    iget-object v2, v0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 356
    iget-object v2, v0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 357
    iget-object v2, v0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedSamples:Ljava/nio/ShortBuffer;

    .line 358
    iget v2, v0, Lcom/ringdroid/soundfile/SoundFile;->mFileSize:I

    mul-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    iget v3, v0, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    int-to-float v3, v3

    iget v4, v0, Lcom/ringdroid/soundfile/SoundFile;->mNumSamples:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/ringdroid/soundfile/SoundFile;->mAvgBitRate:I

    .line 360
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 362
    invoke-virtual {v9}, Landroid/media/MediaCodec;->stop()V

    .line 363
    invoke-virtual {v9}, Landroid/media/MediaCodec;->release()V

    .line 367
    iget v1, v0, Lcom/ringdroid/soundfile/SoundFile;->mNumSamples:I

    invoke-virtual {v0}, Lcom/ringdroid/soundfile/SoundFile;->getSamplesPerFrame()I

    move-result v2

    div-int/2addr v1, v2

    iput v1, v0, Lcom/ringdroid/soundfile/SoundFile;->mNumFrames:I

    .line 368
    iget v1, v0, Lcom/ringdroid/soundfile/SoundFile;->mNumSamples:I

    invoke-virtual {v0}, Lcom/ringdroid/soundfile/SoundFile;->getSamplesPerFrame()I

    move-result v2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_f

    .line 369
    iget v1, v0, Lcom/ringdroid/soundfile/SoundFile;->mNumFrames:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/ringdroid/soundfile/SoundFile;->mNumFrames:I

    .line 371
    :cond_f
    iget v1, v0, Lcom/ringdroid/soundfile/SoundFile;->mNumFrames:I

    new-array v2, v1, [I

    iput-object v2, v0, Lcom/ringdroid/soundfile/SoundFile;->mFrameGains:[I

    .line 372
    new-array v2, v1, [I

    iput-object v2, v0, Lcom/ringdroid/soundfile/SoundFile;->mFrameLens:[I

    .line 373
    new-array v1, v1, [I

    iput-object v1, v0, Lcom/ringdroid/soundfile/SoundFile;->mFrameOffsets:[I

    .line 376
    iget v1, v0, Lcom/ringdroid/soundfile/SoundFile;->mAvgBitRate:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    .line 377
    invoke-virtual {v0}, Lcom/ringdroid/soundfile/SoundFile;->getSamplesPerFrame()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    move v2, v14

    .line 378
    :goto_b
    iget v3, v0, Lcom/ringdroid/soundfile/SoundFile;->mNumFrames:I

    if-ge v2, v3, :cond_14

    const/4 v3, -0x1

    move v4, v14

    .line 380
    :goto_c
    invoke-virtual {v0}, Lcom/ringdroid/soundfile/SoundFile;->getSamplesPerFrame()I

    move-result v5

    if-ge v4, v5, :cond_13

    move v5, v14

    move v6, v5

    .line 382
    :goto_d
    iget v7, v0, Lcom/ringdroid/soundfile/SoundFile;->mChannels:I

    if-ge v5, v7, :cond_11

    .line 383
    iget-object v7, v0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedSamples:Ljava/nio/ShortBuffer;

    invoke-virtual {v7}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v7

    if-lez v7, :cond_10

    .line 384
    iget-object v7, v0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedSamples:Ljava/nio/ShortBuffer;

    invoke-virtual {v7}, Ljava/nio/ShortBuffer;->get()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 387
    :cond_11
    div-int/2addr v6, v7

    if-ge v3, v6, :cond_12

    move v3, v6

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 392
    :cond_13
    iget-object v4, v0, Lcom/ringdroid/soundfile/SoundFile;->mFrameGains:[I

    int-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v3, v5

    aput v3, v4, v2

    .line 393
    iget-object v3, v0, Lcom/ringdroid/soundfile/SoundFile;->mFrameLens:[I

    aput v1, v3, v2

    .line 394
    iget-object v3, v0, Lcom/ringdroid/soundfile/SoundFile;->mFrameOffsets:[I

    iget v4, v0, Lcom/ringdroid/soundfile/SoundFile;->mAvgBitRate:I

    mul-int/lit16 v4, v4, 0x3e8

    div-int/lit8 v4, v4, 0x8

    mul-int/2addr v4, v2

    int-to-float v4, v4

    .line 395
    invoke-virtual {v0}, Lcom/ringdroid/soundfile/SoundFile;->getSamplesPerFrame()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 397
    :cond_14
    iget-object v1, v0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedSamples:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    return-void

    .line 219
    :cond_15
    new-instance v1, Lcom/ringdroid/soundfile/SoundFile$InvalidInputException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No audio track found in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/ringdroid/soundfile/SoundFile;->mInputFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/ringdroid/soundfile/SoundFile$InvalidInputException;-><init>(Lcom/ringdroid/soundfile/SoundFile;Ljava/lang/String;)V

    throw v1
.end method

.method private RecordAudio()V
    .locals 13

    .line 402
    iget-object v0, p0, Lcom/ringdroid/soundfile/SoundFile;->mProgressListener:Lcom/ringdroid/soundfile/SoundFile$ProgressListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 406
    iput-object v0, p0, Lcom/ringdroid/soundfile/SoundFile;->mInputFile:Ljava/io/File;

    .line 407
    const-string v1, "raw"

    iput-object v1, p0, Lcom/ringdroid/soundfile/SoundFile;->mFileType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 408
    iput v1, p0, Lcom/ringdroid/soundfile/SoundFile;->mFileSize:I

    const v2, 0xac44

    .line 409
    iput v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    const/4 v3, 0x1

    .line 410
    iput v3, p0, Lcom/ringdroid/soundfile/SoundFile;->mChannels:I

    const/16 v4, 0x400

    .line 411
    new-array v5, v4, [S

    const/16 v6, 0x10

    const/4 v7, 0x2

    .line 412
    invoke-static {v2, v6, v7}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v2

    .line 415
    iget v8, p0, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    mul-int/lit8 v9, v8, 0x2

    if-ge v2, v9, :cond_1

    mul-int/lit8 v2, v8, 0x2

    :cond_1
    move v12, v2

    .line 418
    new-instance v7, Landroid/media/AudioRecord;

    iget v9, p0, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    const/16 v10, 0x10

    const/4 v11, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v7 .. v12}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 427
    iget v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    mul-int/lit8 v2, v2, 0x28

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    .line 428
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 429
    iget-object v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedSamples:Ljava/nio/ShortBuffer;

    .line 430
    invoke-virtual {v7}, Landroid/media/AudioRecord;->startRecording()V

    .line 433
    :cond_2
    iget-object v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedSamples:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v2

    if-ge v2, v4, :cond_3

    .line 435
    iget-object v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    iget v8, p0, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    mul-int/lit8 v8, v8, 0x14

    add-int/2addr v2, v8

    .line 438
    :try_start_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    iget-object v8, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedSamples:Ljava/nio/ShortBuffer;

    invoke-virtual {v8}, Ljava/nio/ShortBuffer;->position()I

    move-result v8

    .line 443
    iget-object v9, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 444
    iget-object v9, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 445
    iput-object v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    .line 446
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 447
    iget-object v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 448
    iget-object v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedSamples:Ljava/nio/ShortBuffer;

    .line 449
    invoke-virtual {v2, v8}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 452
    :cond_3
    invoke-virtual {v7, v5, v1, v4}, Landroid/media/AudioRecord;->read([SII)I

    .line 453
    iget-object v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedSamples:Ljava/nio/ShortBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 456
    iget-object v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mProgressListener:Lcom/ringdroid/soundfile/SoundFile$ProgressListener;

    iget-object v8, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedSamples:Ljava/nio/ShortBuffer;

    .line 457
    invoke-virtual {v8}, Ljava/nio/ShortBuffer;->position()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    float-to-double v8, v8

    .line 456
    invoke-interface {v2, v8, v9}, Lcom/ringdroid/soundfile/SoundFile$ProgressListener;->reportProgress(D)Z

    move-result v2

    if-nez v2, :cond_2

    .line 461
    :catch_0
    invoke-virtual {v7}, Landroid/media/AudioRecord;->stop()V

    .line 462
    invoke-virtual {v7}, Landroid/media/AudioRecord;->release()V

    .line 463
    iget-object v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedSamples:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->position()I

    move-result v2

    iput v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mNumSamples:I

    .line 464
    iget-object v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedSamples:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 465
    iget-object v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 466
    iget v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    mul-int/2addr v2, v6

    div-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mAvgBitRate:I

    .line 469
    iget v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mNumSamples:I

    invoke-virtual {p0}, Lcom/ringdroid/soundfile/SoundFile;->getSamplesPerFrame()I

    move-result v4

    div-int/2addr v2, v4

    iput v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mNumFrames:I

    .line 470
    iget v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mNumSamples:I

    invoke-virtual {p0}, Lcom/ringdroid/soundfile/SoundFile;->getSamplesPerFrame()I

    move-result v4

    rem-int/2addr v2, v4

    if-eqz v2, :cond_4

    .line 471
    iget v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mNumFrames:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mNumFrames:I

    .line 473
    :cond_4
    iget v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mNumFrames:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mFrameGains:[I

    .line 474
    iput-object v0, p0, Lcom/ringdroid/soundfile/SoundFile;->mFrameLens:[I

    .line 475
    iput-object v0, p0, Lcom/ringdroid/soundfile/SoundFile;->mFrameOffsets:[I

    move v0, v1

    .line 478
    :goto_0
    iget v2, p0, Lcom/ringdroid/soundfile/SoundFile;->mNumFrames:I

    if-ge v0, v2, :cond_8

    const/4 v2, -0x1

    move v3, v1

    .line 480
    :goto_1
    invoke-virtual {p0}, Lcom/ringdroid/soundfile/SoundFile;->getSamplesPerFrame()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 481
    iget-object v4, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedSamples:Ljava/nio/ShortBuffer;

    invoke-virtual {v4}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_5

    .line 482
    iget-object v4, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedSamples:Ljava/nio/ShortBuffer;

    invoke-virtual {v4}, Ljava/nio/ShortBuffer;->get()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    goto :goto_2

    :cond_5
    move v4, v1

    :goto_2
    if-ge v2, v4, :cond_6

    move v2, v4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 490
    :cond_7
    iget-object v3, p0, Lcom/ringdroid/soundfile/SoundFile;->mFrameGains:[I

    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v2, v4

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 492
    :cond_8
    iget-object v0, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedSamples:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/ringdroid/soundfile/SoundFile$ProgressListener;)Lcom/ringdroid/soundfile/SoundFile;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/ringdroid/soundfile/SoundFile$InvalidInputException;
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 110
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 111
    array-length v1, p0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return-object v3

    .line 114
    :cond_0
    invoke-static {}, Lcom/ringdroid/soundfile/SoundFile;->getSupportedExtensions()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object p0, p0, v2

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v3

    .line 117
    :cond_1
    new-instance p0, Lcom/ringdroid/soundfile/SoundFile;

    invoke-direct {p0}, Lcom/ringdroid/soundfile/SoundFile;-><init>()V

    .line 118
    invoke-direct {p0, p1}, Lcom/ringdroid/soundfile/SoundFile;->setProgressListener(Lcom/ringdroid/soundfile/SoundFile$ProgressListener;)V

    .line 119
    invoke-direct {p0, v0}, Lcom/ringdroid/soundfile/SoundFile;->ReadFile(Ljava/io/File;)V

    return-object p0

    .line 107
    :cond_2
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getStackTrace(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 784
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 785
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 786
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getSupportedExtensions()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0x8

    .line 86
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "wav"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3gpp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3gp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "amr"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "aac"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "m4a"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ogg"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static isFilenameSupported(Ljava/lang/String;)Z
    .locals 5

    .line 90
    invoke-static {}, Lcom/ringdroid/soundfile/SoundFile;->getSupportedExtensions()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 91
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static record(Lcom/ringdroid/soundfile/SoundFile$ProgressListener;)Lcom/ringdroid/soundfile/SoundFile;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 129
    :cond_0
    new-instance v0, Lcom/ringdroid/soundfile/SoundFile;

    invoke-direct {v0}, Lcom/ringdroid/soundfile/SoundFile;-><init>()V

    .line 130
    invoke-direct {v0, p0}, Lcom/ringdroid/soundfile/SoundFile;->setProgressListener(Lcom/ringdroid/soundfile/SoundFile$ProgressListener;)V

    .line 131
    invoke-direct {v0}, Lcom/ringdroid/soundfile/SoundFile;->RecordAudio()V

    return-object v0
.end method

.method private setProgressListener(Lcom/ringdroid/soundfile/SoundFile$ProgressListener;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/ringdroid/soundfile/SoundFile;->mProgressListener:Lcom/ringdroid/soundfile/SoundFile$ProgressListener;

    return-void
.end method

.method private swapLeftRightChannels([B)V
    .locals 10

    .line 653
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 657
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 658
    aget-byte v2, p1, v1

    add-int/lit8 v3, v1, 0x1

    .line 659
    aget-byte v4, p1, v3

    const/4 v5, 0x2

    new-array v6, v5, [B

    aput-byte v2, v6, v0

    const/4 v2, 0x1

    aput-byte v4, v6, v2

    add-int/lit8 v4, v1, 0x2

    .line 660
    aget-byte v7, p1, v4

    add-int/lit8 v8, v1, 0x3

    .line 661
    aget-byte v9, p1, v8

    new-array v5, v5, [B

    aput-byte v7, v5, v0

    aput-byte v9, v5, v2

    .line 662
    aget-byte v7, v5, v0

    aput-byte v7, p1, v1

    .line 663
    aget-byte v5, v5, v2

    aput-byte v5, p1, v3

    .line 664
    aget-byte v3, v6, v0

    aput-byte v3, p1, v4

    .line 665
    aget-byte v2, v6, v2

    aput-byte v2, p1, v8

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public WriteFile(Ljava/io/File;FF)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 506
    iget v0, v1, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    int-to-float v2, v0

    mul-float v2, v2, p2

    float-to-int v2, v2

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    iget v4, v1, Lcom/ringdroid/soundfile/SoundFile;->mChannels:I

    mul-int/2addr v2, v4

    sub-float v5, p3, p2

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    move v4, v3

    :cond_0
    const v7, 0xfa00

    mul-int/2addr v7, v4

    .line 513
    const-string v8, "audio/mp4a-latm"

    invoke-static {v8}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v9

    .line 514
    iget v10, v1, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    invoke-static {v8, v10, v4}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v8

    .line 515
    const-string v10, "bitrate"

    invoke-virtual {v8, v10, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v10, 0x0

    .line 516
    invoke-virtual {v9, v8, v10, v10, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 517
    invoke-virtual {v9}, Landroid/media/MediaCodec;->start()V

    .line 520
    div-int/lit8 v8, v7, 0x8

    int-to-float v8, v8

    mul-float/2addr v5, v8

    float-to-double v11, v5

    const-wide v13, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v11, v13

    double-to-int v5, v11

    .line 521
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 522
    invoke-virtual {v9}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 523
    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 524
    new-instance v12, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v12}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    mul-int/lit16 v13, v4, 0x800

    .line 529
    new-array v14, v13, [B

    .line 530
    iget-object v15, v1, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit16 v0, v0, 0x800

    .line 532
    div-int/lit16 v2, v0, 0x400

    add-int/lit8 v15, v2, 0x1

    move/from16 v17, v3

    .line 533
    rem-int/lit16 v3, v0, 0x400

    if-eqz v3, :cond_1

    add-int/lit8 v15, v2, 0x2

    :cond_1
    move v2, v15

    .line 536
    new-array v3, v2, [I

    const/4 v15, 0x0

    move/from16 p3, v7

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move v10, v15

    move v11, v10

    move/from16 v19, v11

    move/from16 v20, v19

    :goto_0
    const-wide/16 v6, 0x64

    move/from16 v21, v10

    .line 544
    invoke-virtual {v9, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v10

    if-nez v19, :cond_8

    if-ltz v10, :cond_8

    if-gtz v0, :cond_2

    move/from16 v23, v13

    move-object/from16 v22, v14

    const-wide/16 v13, -0x1

    move/from16 v19, v15

    const/4 v15, 0x4

    move/from16 v24, v11

    const/4 v11, 0x0

    move-object/from16 v25, v12

    const/4 v12, 0x0

    move/from16 v26, v21

    move/from16 v6, v23

    move/from16 v27, v24

    move-object/from16 v7, v25

    move-object/from16 v23, v3

    move/from16 v24, v4

    move/from16 v4, v19

    move-object/from16 v3, v22

    .line 548
    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    move v12, v6

    const/4 v6, 0x1

    const-wide/16 v10, 0x64

    const/16 v19, 0x1

    goto/16 :goto_6

    :cond_2
    move-object/from16 v23, v3

    move/from16 v24, v4

    move/from16 v27, v11

    move-object v7, v12

    move v6, v13

    move-object v3, v14

    move v4, v15

    move/from16 v26, v21

    .line 552
    aget-object v11, v16, v10

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 553
    aget-object v11, v16, v10

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-le v6, v11, :cond_3

    move-object v14, v3

    move v15, v4

    move v13, v6

    move-object v12, v7

    move-object/from16 v3, v23

    move/from16 v4, v24

    move/from16 v10, v26

    move/from16 v11, v27

    goto :goto_0

    .line 558
    :cond_3
    iget v11, v1, Lcom/ringdroid/soundfile/SoundFile;->mChannels:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    div-int/lit8 v13, v6, 0x2

    goto :goto_1

    :cond_4
    move v13, v6

    .line 559
    :goto_1
    iget-object v11, v1, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    .line 565
    iget-object v12, v1, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    if-ge v11, v13, :cond_6

    .line 560
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    :goto_2
    if-ge v11, v13, :cond_5

    .line 561
    aput-byte v4, v3, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 563
    :cond_5
    iget-object v11, v1, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    invoke-virtual {v11, v3, v4, v12}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 565
    :cond_6
    invoke-virtual {v12, v3, v4, v13}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 567
    :goto_3
    iget v11, v1, Lcom/ringdroid/soundfile/SoundFile;->mChannels:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    add-int/lit8 v13, v13, -0x1

    :goto_4
    if-lt v13, v12, :cond_7

    mul-int/lit8 v11, v13, 0x2

    add-int/lit8 v14, v11, 0x1

    .line 569
    aget-byte v15, v3, v13

    aput-byte v15, v3, v14

    add-int/lit8 v15, v13, -0x1

    .line 570
    aget-byte v15, v3, v15

    aput-byte v15, v3, v11

    add-int/lit8 v15, v11, -0x1

    .line 571
    aget-byte v14, v3, v14

    aput-byte v14, v3, v15

    add-int/lit8 v14, v11, -0x2

    .line 572
    aget-byte v11, v3, v11

    aput-byte v11, v3, v14

    add-int/lit8 v13, v13, -0x2

    goto :goto_4

    :cond_7
    add-int/lit16 v0, v0, -0x400

    .line 576
    aget-object v11, v16, v10

    invoke-virtual {v11, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move/from16 v15, v20

    add-int/lit8 v20, v15, 0x1

    mul-int/lit16 v11, v15, 0x400

    int-to-double v13, v11

    const-wide v28, 0x412e848000000000L    # 1000000.0

    mul-double v13, v13, v28

    .line 577
    iget v11, v1, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    move-wide/from16 v28, v13

    int-to-double v12, v11

    div-double v13, v28, v12

    double-to-long v13, v13

    const/4 v11, 0x0

    const/4 v15, 0x0

    move v12, v6

    const/4 v6, 0x1

    .line 578
    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_5

    :cond_8
    move-object/from16 v23, v3

    move/from16 v24, v4

    move/from16 v27, v11

    move-object v7, v12

    move v12, v13

    move-object v3, v14

    move v4, v15

    move/from16 v15, v20

    move/from16 v26, v21

    const/4 v6, 0x1

    move/from16 v20, v15

    :goto_5
    const-wide/16 v10, 0x64

    .line 584
    :goto_6
    invoke-virtual {v9, v7, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v10

    if-ltz v10, :cond_c

    .line 585
    iget v11, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v11, :cond_c

    iget-wide v13, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v21, 0x0

    cmp-long v11, v13, v21

    if-ltz v11, :cond_c

    move/from16 v15, v26

    if-ge v15, v2, :cond_9

    add-int/lit8 v11, v15, 0x1

    .line 587
    iget v13, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    aput v13, v23, v15

    move v15, v11

    .line 589
    :cond_9
    iget v11, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v13, v27

    if-ge v13, v11, :cond_a

    .line 590
    iget v11, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 591
    new-array v13, v11, [B

    goto :goto_7

    :cond_a
    move v11, v13

    move-object/from16 v13, v17

    .line 593
    :goto_7
    aget-object v14, v18, v10

    iget v6, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v14, v13, v4, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 594
    aget-object v6, v18, v10

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 595
    invoke-virtual {v9, v10, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 596
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    iget v10, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ge v6, v10, :cond_b

    int-to-double v5, v5

    const-wide v21, 0x3ff3333333333333L    # 1.2

    mul-double v5, v5, v21

    double-to-int v5, v5

    .line 598
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 599
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    .line 600
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 601
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 603
    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v8, v6

    .line 605
    :cond_b
    iget v6, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v8, v13, v4, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-object/from16 v17, v13

    goto :goto_8

    :cond_c
    move/from16 v15, v26

    move/from16 v13, v27

    const/4 v6, -0x3

    if-ne v10, v6, :cond_d

    .line 607
    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object/from16 v18, v6

    :cond_d
    move v11, v13

    :goto_8
    move v10, v15

    .line 613
    iget v6, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_10

    .line 618
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 619
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 620
    invoke-virtual {v9}, Landroid/media/MediaCodec;->stop()V

    .line 621
    invoke-virtual {v9}, Landroid/media/MediaCodec;->release()V

    const/16 v2, 0x1000

    .line 625
    new-array v3, v2, [B

    .line 627
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    move-object/from16 v6, p1

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 628
    iget v6, v1, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    move/from16 v14, p3

    move-object/from16 v15, v23

    move/from16 v13, v24

    .line 629
    invoke-static {v6, v13, v15, v14}, Lcom/ringdroid/soundfile/MP4Header;->getMP4Header(II[II)[B

    move-result-object v6

    .line 628
    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 630
    :goto_9
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int v6, v0, v6

    if-le v6, v2, :cond_e

    .line 631
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 632
    invoke-virtual {v5, v3}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_9

    .line 634
    :cond_e
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v0, v2

    if-lez v0, :cond_f

    .line 636
    invoke-virtual {v8, v3, v4, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 637
    invoke-virtual {v5, v3, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 639
    :cond_f
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 641
    const-string v2, "Failed to create the .m4a file."

    const-string v3, "Ringdroid"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-direct {v1, v0}, Lcom/ringdroid/soundfile/SoundFile;->getStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    move-object/from16 v6, p1

    move-object v14, v3

    move v15, v4

    move v13, v12

    move-object/from16 v3, v23

    move/from16 v4, v24

    move-object v12, v7

    goto/16 :goto_0
.end method

.method public WriteFile(Ljava/io/File;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-float v0, p2

    .line 499
    invoke-virtual {p0}, Lcom/ringdroid/soundfile/SoundFile;->getSamplesPerFrame()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-int/2addr p2, p3

    int-to-float p2, p2

    .line 500
    invoke-virtual {p0}, Lcom/ringdroid/soundfile/SoundFile;->getSamplesPerFrame()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iget p3, p0, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 501
    invoke-virtual {p0, p1, v0, p2}, Lcom/ringdroid/soundfile/SoundFile;->WriteFile(Ljava/io/File;FF)V

    return-void
.end method

.method public WriteWAVFile(Ljava/io/File;FF)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 679
    iget v0, p0, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/ringdroid/soundfile/SoundFile;->mChannels:I

    mul-int/2addr v1, v3

    sub-float/2addr p3, p2

    int-to-float p2, v0

    mul-float/2addr p3, p2

    float-to-int p2, p3

    .line 683
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 684
    iget p1, p0, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    iget v0, p0, Lcom/ringdroid/soundfile/SoundFile;->mChannels:I

    invoke-static {p1, v0, p2}, Lcom/ringdroid/soundfile/WAVHeader;->getWAVHeader(III)[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 687
    iget p1, p0, Lcom/ringdroid/soundfile/SoundFile;->mChannels:I

    mul-int/lit16 p1, p1, 0x800

    new-array v0, p1, [B

    .line 688
    iget-object v3, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 689
    iget v1, p0, Lcom/ringdroid/soundfile/SoundFile;->mChannels:I

    mul-int/2addr p2, v1

    mul-int/2addr p2, v2

    :goto_0
    const/4 v1, 0x0

    if-lt p2, p1, :cond_3

    .line 691
    iget-object v3, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 698
    iget-object v4, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    if-ge v3, p1, :cond_1

    .line 693
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    :goto_1
    if-ge v3, p1, :cond_0

    .line 694
    aput-byte v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 696
    :cond_0
    iget-object v3, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v0, v1, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 698
    :cond_1
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 700
    :goto_2
    iget v1, p0, Lcom/ringdroid/soundfile/SoundFile;->mChannels:I

    if-ne v1, v2, :cond_2

    .line 701
    invoke-direct {p0, v0}, Lcom/ringdroid/soundfile/SoundFile;->swapLeftRightChannels([B)V

    .line 703
    :cond_2
    invoke-virtual {p3, v0}, Ljava/io/FileOutputStream;->write([B)V

    sub-int/2addr p2, p1

    goto :goto_0

    :cond_3
    if-lez p2, :cond_7

    .line 707
    iget-object p1, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    .line 714
    iget-object v3, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    if-ge p1, p2, :cond_5

    .line 709
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    :goto_3
    if-ge p1, p2, :cond_4

    .line 710
    aput-byte v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 712
    :cond_4
    iget-object p1, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p1, v0, v1, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 714
    :cond_5
    invoke-virtual {v3, v0, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 716
    :goto_4
    iget p1, p0, Lcom/ringdroid/soundfile/SoundFile;->mChannels:I

    if-ne p1, v2, :cond_6

    .line 717
    invoke-direct {p0, v0}, Lcom/ringdroid/soundfile/SoundFile;->swapLeftRightChannels([B)V

    .line 719
    :cond_6
    invoke-virtual {p3, v0, v1, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 721
    :cond_7
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public WriteWAVFile(Ljava/io/File;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-float v0, p2

    .line 672
    invoke-virtual {p0}, Lcom/ringdroid/soundfile/SoundFile;->getSamplesPerFrame()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-int/2addr p2, p3

    int-to-float p2, p2

    .line 673
    invoke-virtual {p0}, Lcom/ringdroid/soundfile/SoundFile;->getSamplesPerFrame()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iget p3, p0, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 674
    invoke-virtual {p0, p1, v0, p2}, Lcom/ringdroid/soundfile/SoundFile;->WriteWAVFile(Ljava/io/File;FF)V

    return-void
.end method

.method public getAvgBitrateKbps()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/ringdroid/soundfile/SoundFile;->mAvgBitRate:I

    return v0
.end method

.method public getChannels()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/ringdroid/soundfile/SoundFile;->mChannels:I

    return v0
.end method

.method public getFileSizeBytes()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/ringdroid/soundfile/SoundFile;->mFileSize:I

    return v0
.end method

.method public getFiletype()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/ringdroid/soundfile/SoundFile;->mFileType:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameGains()[I
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/ringdroid/soundfile/SoundFile;->mFrameGains:[I

    return-object v0
.end method

.method public getNumFrames()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/ringdroid/soundfile/SoundFile;->mNumFrames:I

    return v0
.end method

.method public getNumSamples()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/ringdroid/soundfile/SoundFile;->mNumSamples:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/ringdroid/soundfile/SoundFile;->mSampleRate:I

    return v0
.end method

.method public getSamples()Ljava/nio/ShortBuffer;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedSamples:Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/ringdroid/soundfile/SoundFile;->mDecodedSamples:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->asReadOnlyBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSamplesPerFrame()I
    .locals 1

    const/16 v0, 0x400

    return v0
.end method
