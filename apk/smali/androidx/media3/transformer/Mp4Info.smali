.class final Landroidx/media3/transformer/Mp4Info;
.super Ljava/lang/Object;
.source "Mp4Info.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;
    }
.end annotation


# instance fields
.field public final audioFormat:Landroidx/media3/common/Format;

.field public final durationUs:J

.field public final firstSyncSampleTimestampUsAfterTimeUs:J

.field public final firstVideoSampleTimestampUs:J

.field public final isFirstVideoSampleAfterTimeUsSyncSample:Z

.field public final lastSyncSampleTimestampUs:J

.field public final videoFormat:Landroidx/media3/common/Format;


# direct methods
.method private constructor <init>(JJJJZLandroidx/media3/common/Format;Landroidx/media3/common/Format;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-wide p1, p0, Landroidx/media3/transformer/Mp4Info;->durationUs:J

    .line 91
    iput-wide p3, p0, Landroidx/media3/transformer/Mp4Info;->lastSyncSampleTimestampUs:J

    .line 92
    iput-wide p5, p0, Landroidx/media3/transformer/Mp4Info;->firstVideoSampleTimestampUs:J

    .line 93
    iput-wide p7, p0, Landroidx/media3/transformer/Mp4Info;->firstSyncSampleTimestampUsAfterTimeUs:J

    .line 94
    iput-boolean p9, p0, Landroidx/media3/transformer/Mp4Info;->isFirstVideoSampleAfterTimeUsSyncSample:Z

    .line 95
    iput-object p10, p0, Landroidx/media3/transformer/Mp4Info;->videoFormat:Landroidx/media3/common/Format;

    .line 96
    iput-object p11, p0, Landroidx/media3/transformer/Mp4Info;->audioFormat:Landroidx/media3/common/Format;

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Landroidx/media3/transformer/Mp4Info;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 107
    invoke-static {p0, p1, v0, v1}, Landroidx/media3/transformer/Mp4Info;->create(Landroid/content/Context;Ljava/lang/String;J)Landroidx/media3/transformer/Mp4Info;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;J)Landroidx/media3/transformer/Mp4Info;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    .line 120
    const-string v3, "The MP4 file is invalid"

    new-instance v4, Landroidx/media3/extractor/mp4/Mp4Extractor;

    sget-object v5, Landroidx/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    .line 123
    new-instance v5, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;

    invoke-direct {v5}, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;-><init>()V

    .line 124
    new-instance v7, Landroidx/media3/datasource/DefaultDataSource;

    const/4 v12, 0x0

    move-object/from16 v6, p0

    invoke-direct {v7, v6, v12}, Landroidx/media3/datasource/DefaultDataSource;-><init>(Landroid/content/Context;Z)V

    .line 126
    new-instance v6, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v6}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    invoke-virtual {v6, v0}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Ljava/lang/String;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v6

    .line 128
    :try_start_0
    invoke-virtual {v7, v6}, Landroidx/media3/datasource/DefaultDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v10

    const-wide/16 v8, 0x0

    cmp-long v6, v10, v8

    const/4 v13, 0x1

    if-eqz v6, :cond_0

    move v6, v13

    goto :goto_0

    :cond_0
    move v6, v12

    .line 129
    :goto_0
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 130
    new-instance v6, Landroidx/media3/extractor/DefaultExtractorInput;

    const-wide/16 v8, 0x0

    invoke-direct/range {v6 .. v11}, Landroidx/media3/extractor/DefaultExtractorInput;-><init>(Landroidx/media3/common/DataReader;JJ)V

    .line 132
    invoke-virtual {v4, v6}, Landroidx/media3/extractor/mp4/Mp4Extractor;->sniff(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v8

    invoke-static {v8, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 134
    invoke-virtual {v4, v5}, Landroidx/media3/extractor/mp4/Mp4Extractor;->init(Landroidx/media3/extractor/ExtractorOutput;)V

    .line 135
    new-instance v14, Landroidx/media3/extractor/PositionHolder;

    invoke-direct {v14}, Landroidx/media3/extractor/PositionHolder;-><init>()V

    .line 136
    :cond_1
    :goto_1
    iget-boolean v8, v5, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->seekMapInitialized:Z

    const/4 v9, -0x1

    if-nez v8, :cond_5

    .line 137
    invoke-virtual {v4, v6, v14}, Landroidx/media3/extractor/mp4/Mp4Extractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v8

    if-ne v8, v13, :cond_3

    .line 139
    invoke-virtual {v7}, Landroidx/media3/datasource/DefaultDataSource;->close()V

    .line 140
    new-instance v6, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v6}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    .line 143
    invoke-virtual {v6, v0}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Ljava/lang/String;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v6

    iget-wide v8, v14, Landroidx/media3/extractor/PositionHolder;->position:J

    .line 144
    invoke-virtual {v6, v8, v9}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v6

    .line 145
    invoke-virtual {v6}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v6

    .line 141
    invoke-virtual {v7, v6}, Landroidx/media3/datasource/DefaultDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-eqz v6, :cond_2

    .line 147
    iget-wide v10, v14, Landroidx/media3/extractor/PositionHolder;->position:J

    add-long/2addr v8, v10

    :cond_2
    move-wide v10, v8

    .line 149
    new-instance v6, Landroidx/media3/extractor/DefaultExtractorInput;

    iget-wide v8, v14, Landroidx/media3/extractor/PositionHolder;->position:J

    invoke-direct/range {v6 .. v11}, Landroidx/media3/extractor/DefaultExtractorInput;-><init>(Landroidx/media3/common/DataReader;JJ)V

    goto :goto_1

    :cond_3
    if-ne v8, v9, :cond_1

    .line 150
    iget-boolean v8, v5, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->seekMapInitialized:Z

    if-eqz v8, :cond_4

    goto :goto_1

    .line 151
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_5
    iget-object v0, v5, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->seekMap:Landroidx/media3/extractor/TrackAwareSeekMap;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/TrackAwareSeekMap;

    .line 156
    invoke-interface {v0}, Landroidx/media3/extractor/TrackAwareSeekMap;->getDurationUs()J

    move-result-wide v10

    .line 162
    iget v3, v5, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->videoTrackId:I

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v3, v9, :cond_c

    .line 163
    iget-object v3, v5, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->trackTypeToTrackOutput:Ljava/util/Map;

    const/4 v8, 0x2

    .line 164
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;

    .line 165
    iget-object v3, v3, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;->format:Landroidx/media3/common/Format;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Format;

    cmp-long v8, v10, v14

    if-eqz v8, :cond_6

    move v8, v13

    goto :goto_2

    :cond_6
    move v8, v12

    .line 167
    :goto_2
    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 168
    iget v8, v5, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->videoTrackId:I

    .line 169
    invoke-interface {v0, v10, v11, v8}, Landroidx/media3/extractor/TrackAwareSeekMap;->getSeekPoints(JI)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v8

    .line 170
    iget-object v8, v8, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 p0, v7

    :try_start_1
    iget-wide v6, v8, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    cmp-long v8, v1, v14

    if-eqz v8, :cond_b

    .line 173
    iget v8, v5, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->videoTrackId:I

    .line 174
    invoke-interface {v0, v1, v2, v8}, Landroidx/media3/extractor/TrackAwareSeekMap;->getSeekPoints(JI)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v0

    .line 175
    iget-object v8, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    iget-wide v14, v8, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    cmp-long v8, v1, v14

    if-nez v8, :cond_7

    .line 176
    iget-object v0, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    iget-wide v14, v0, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    goto :goto_3

    .line 177
    :cond_7
    iget-object v8, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    iget-wide v14, v8, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    cmp-long v8, v1, v14

    if-gtz v8, :cond_8

    .line 178
    iget-object v0, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    iget-wide v14, v0, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    goto :goto_3

    :cond_8
    const-wide/high16 v14, -0x8000000000000000L

    .line 183
    :goto_3
    iget v0, v5, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->videoTrackId:I

    .line 184
    invoke-virtual {v4, v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->getSampleTimestampsUs(I)[J

    move-result-object v0

    .line 185
    array-length v8, v0

    if-lez v8, :cond_9

    .line 186
    aget-wide v16, v0, v12

    goto :goto_4

    :cond_9
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 190
    :goto_4
    invoke-static {v0, v1, v2, v13, v12}, Landroidx/media3/common/util/Util;->binarySearchCeil([JJZZ)I

    move-result v1

    .line 192
    array-length v2, v0

    if-ge v1, v2, :cond_a

    .line 194
    aget-wide v0, v0, v1

    cmp-long v0, v0, v14

    if-nez v0, :cond_a

    move-object/from16 v24, v3

    move/from16 v23, v13

    goto :goto_5

    :cond_a
    move-object/from16 v24, v3

    move/from16 v23, v12

    :goto_5
    move-wide/from16 v21, v14

    move-wide/from16 v19, v16

    move-wide/from16 v17, v6

    goto :goto_6

    :cond_b
    move-object/from16 v24, v3

    move-wide/from16 v17, v6

    move/from16 v23, v12

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_6

    :cond_c
    move-object/from16 p0, v7

    move/from16 v23, v12

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v24, 0x0

    .line 204
    :goto_6
    iget v0, v5, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->audioTrackId:I

    if-eq v0, v9, :cond_d

    .line 205
    iget-object v0, v5, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->trackTypeToTrackOutput:Ljava/util/Map;

    .line 206
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;

    .line 207
    iget-object v0, v0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;->format:Landroidx/media3/common/Format;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/media3/common/Format;

    move-object/from16 v25, v6

    goto :goto_7

    :cond_d
    const/16 v25, 0x0

    .line 210
    :goto_7
    new-instance v14, Landroidx/media3/transformer/Mp4Info;

    move-wide v15, v10

    invoke-direct/range {v14 .. v25}, Landroidx/media3/transformer/Mp4Info;-><init>(JJJJZLandroidx/media3/common/Format;Landroidx/media3/common/Format;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    invoke-static/range {p0 .. p0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 220
    invoke-virtual {v4}, Landroidx/media3/extractor/mp4/Mp4Extractor;->release()V

    return-object v14

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 p0, v7

    .line 219
    :goto_8
    invoke-static/range {p0 .. p0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 220
    invoke-virtual {v4}, Landroidx/media3/extractor/mp4/Mp4Extractor;->release()V

    .line 221
    throw v0
.end method
