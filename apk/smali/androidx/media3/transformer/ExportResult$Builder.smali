.class public final Landroidx/media3/transformer/ExportResult$Builder;
.super Ljava/lang/Object;
.source "ExportResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/ExportResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private approximateDurationMs:J

.field private audioEncoderName:Ljava/lang/String;

.field private audioMimeType:Ljava/lang/String;

.field private averageAudioBitrate:I

.field private averageVideoBitrate:I

.field private channelCount:I

.field private colorInfo:Landroidx/media3/common/ColorInfo;

.field private exportException:Landroidx/media3/transformer/ExportException;

.field private fileSizeBytes:J

.field private height:I

.field private optimizationResult:I

.field private processedInputsBuilder:Lcom/google/common/collect/ImmutableList$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList$Builder<",
            "Landroidx/media3/transformer/ExportResult$ProcessedInput;",
            ">;"
        }
    .end annotation
.end field

.field private sampleRate:I

.field private videoEncoderName:Ljava/lang/String;

.field private videoFrameCount:I

.field private videoMimeType:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0}, Landroidx/media3/transformer/ExportResult$Builder;->reset()V

    return-void
.end method


# virtual methods
.method public addProcessedInputs(Ljava/util/List;)Landroidx/media3/transformer/ExportResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/transformer/ExportResult$ProcessedInput;",
            ">;)",
            "Landroidx/media3/transformer/ExportResult$Builder;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Landroidx/media3/transformer/ExportResult$Builder;->processedInputsBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    return-object p0
.end method

.method public build()Landroidx/media3/transformer/ExportResult;
    .locals 23

    move-object/from16 v0, p0

    .line 255
    new-instance v1, Landroidx/media3/transformer/ExportResult;

    iget-object v2, v0, Landroidx/media3/transformer/ExportResult$Builder;->processedInputsBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    .line 256
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iget-wide v3, v0, Landroidx/media3/transformer/ExportResult$Builder;->approximateDurationMs:J

    iget-wide v5, v0, Landroidx/media3/transformer/ExportResult$Builder;->fileSizeBytes:J

    iget v7, v0, Landroidx/media3/transformer/ExportResult$Builder;->averageAudioBitrate:I

    iget v8, v0, Landroidx/media3/transformer/ExportResult$Builder;->channelCount:I

    iget v9, v0, Landroidx/media3/transformer/ExportResult$Builder;->sampleRate:I

    iget-object v10, v0, Landroidx/media3/transformer/ExportResult$Builder;->audioEncoderName:Ljava/lang/String;

    iget-object v11, v0, Landroidx/media3/transformer/ExportResult$Builder;->audioMimeType:Ljava/lang/String;

    iget v12, v0, Landroidx/media3/transformer/ExportResult$Builder;->averageVideoBitrate:I

    iget-object v13, v0, Landroidx/media3/transformer/ExportResult$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    iget v14, v0, Landroidx/media3/transformer/ExportResult$Builder;->height:I

    iget v15, v0, Landroidx/media3/transformer/ExportResult$Builder;->width:I

    move-object/from16 v16, v1

    iget v1, v0, Landroidx/media3/transformer/ExportResult$Builder;->videoFrameCount:I

    move/from16 v17, v1

    iget-object v1, v0, Landroidx/media3/transformer/ExportResult$Builder;->videoEncoderName:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v0, Landroidx/media3/transformer/ExportResult$Builder;->videoMimeType:Ljava/lang/String;

    move-object/from16 v19, v1

    iget v1, v0, Landroidx/media3/transformer/ExportResult$Builder;->optimizationResult:I

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media3/transformer/ExportResult$Builder;->exportException:Landroidx/media3/transformer/ExportException;

    const/16 v21, 0x0

    move/from16 v22, v20

    move-object/from16 v20, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move/from16 v19, v22

    invoke-direct/range {v1 .. v21}, Landroidx/media3/transformer/ExportResult;-><init>(Lcom/google/common/collect/ImmutableList;JJIIILjava/lang/String;Ljava/lang/String;ILandroidx/media3/common/ColorInfo;IIILjava/lang/String;Ljava/lang/String;ILandroidx/media3/transformer/ExportException;Landroidx/media3/transformer/ExportResult$1;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public reset()V
    .locals 3

    .line 277
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media3/transformer/ExportResult$Builder;->processedInputsBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 278
    iput-wide v0, p0, Landroidx/media3/transformer/ExportResult$Builder;->approximateDurationMs:J

    const-wide/16 v0, -0x1

    .line 279
    iput-wide v0, p0, Landroidx/media3/transformer/ExportResult$Builder;->fileSizeBytes:J

    const v0, -0x7fffffff

    .line 280
    iput v0, p0, Landroidx/media3/transformer/ExportResult$Builder;->averageAudioBitrate:I

    const/4 v1, -0x1

    .line 281
    iput v1, p0, Landroidx/media3/transformer/ExportResult$Builder;->channelCount:I

    .line 282
    iput v0, p0, Landroidx/media3/transformer/ExportResult$Builder;->sampleRate:I

    const/4 v2, 0x0

    .line 283
    iput-object v2, p0, Landroidx/media3/transformer/ExportResult$Builder;->audioEncoderName:Ljava/lang/String;

    .line 284
    iput v0, p0, Landroidx/media3/transformer/ExportResult$Builder;->averageVideoBitrate:I

    .line 285
    iput-object v2, p0, Landroidx/media3/transformer/ExportResult$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 286
    iput v1, p0, Landroidx/media3/transformer/ExportResult$Builder;->height:I

    .line 287
    iput v1, p0, Landroidx/media3/transformer/ExportResult$Builder;->width:I

    const/4 v0, 0x0

    .line 288
    iput v0, p0, Landroidx/media3/transformer/ExportResult$Builder;->videoFrameCount:I

    .line 289
    iput-object v2, p0, Landroidx/media3/transformer/ExportResult$Builder;->videoEncoderName:Ljava/lang/String;

    .line 290
    iput v0, p0, Landroidx/media3/transformer/ExportResult$Builder;->optimizationResult:I

    .line 291
    iput-object v2, p0, Landroidx/media3/transformer/ExportResult$Builder;->exportException:Landroidx/media3/transformer/ExportException;

    return-void
.end method

.method public setApproximateDurationMs(J)Landroidx/media3/transformer/ExportResult$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 92
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 93
    iput-wide p1, p0, Landroidx/media3/transformer/ExportResult$Builder;->approximateDurationMs:J

    return-object p0
.end method

.method public setAudioEncoderName(Ljava/lang/String;)Landroidx/media3/transformer/ExportResult$Builder;
    .locals 0

    .line 151
    iput-object p1, p0, Landroidx/media3/transformer/ExportResult$Builder;->audioEncoderName:Ljava/lang/String;

    return-object p0
.end method

.method public setAudioMimeType(Ljava/lang/String;)Landroidx/media3/transformer/ExportResult$Builder;
    .locals 0

    .line 158
    iput-object p1, p0, Landroidx/media3/transformer/ExportResult$Builder;->audioMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setAverageAudioBitrate(I)Landroidx/media3/transformer/ExportResult$Builder;
    .locals 1

    if-gtz p1, :cond_1

    const v0, -0x7fffffff

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 119
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 120
    iput p1, p0, Landroidx/media3/transformer/ExportResult$Builder;->averageAudioBitrate:I

    return-object p0
.end method

.method public setAverageVideoBitrate(I)Landroidx/media3/transformer/ExportResult$Builder;
    .locals 1

    if-gtz p1, :cond_1

    const v0, -0x7fffffff

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 169
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 170
    iput p1, p0, Landroidx/media3/transformer/ExportResult$Builder;->averageVideoBitrate:I

    return-object p0
.end method

.method public setChannelCount(I)Landroidx/media3/transformer/ExportResult$Builder;
    .locals 1

    if-gtz p1, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 131
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 132
    iput p1, p0, Landroidx/media3/transformer/ExportResult$Builder;->channelCount:I

    return-object p0
.end method

.method public setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/transformer/ExportResult$Builder;
    .locals 0

    .line 177
    iput-object p1, p0, Landroidx/media3/transformer/ExportResult$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    return-object p0
.end method

.method public setDurationMs(J)Landroidx/media3/transformer/ExportResult$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    invoke-virtual {p0, p1, p2}, Landroidx/media3/transformer/ExportResult$Builder;->setApproximateDurationMs(J)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setExportException(Landroidx/media3/transformer/ExportException;)Landroidx/media3/transformer/ExportResult$Builder;
    .locals 0

    .line 249
    iput-object p1, p0, Landroidx/media3/transformer/ExportResult$Builder;->exportException:Landroidx/media3/transformer/ExportException;

    return-object p0
.end method

.method public setFileSizeBytes(J)Landroidx/media3/transformer/ExportResult$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 104
    :goto_1
    const-string v1, "Invalid file size = %s"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 108
    iput-wide p1, p0, Landroidx/media3/transformer/ExportResult$Builder;->fileSizeBytes:J

    return-object p0
.end method

.method public setHeight(I)Landroidx/media3/transformer/ExportResult$Builder;
    .locals 1

    if-gtz p1, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 188
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 189
    iput p1, p0, Landroidx/media3/transformer/ExportResult$Builder;->height:I

    return-object p0
.end method

.method public setOptimizationResult(I)Landroidx/media3/transformer/ExportResult$Builder;
    .locals 0

    .line 242
    iput p1, p0, Landroidx/media3/transformer/ExportResult$Builder;->optimizationResult:I

    return-object p0
.end method

.method public setSampleRate(I)Landroidx/media3/transformer/ExportResult$Builder;
    .locals 1

    if-gtz p1, :cond_1

    const v0, -0x7fffffff

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 143
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 144
    iput p1, p0, Landroidx/media3/transformer/ExportResult$Builder;->sampleRate:I

    return-object p0
.end method

.method public setVideoEncoderName(Ljava/lang/String;)Landroidx/media3/transformer/ExportResult$Builder;
    .locals 0

    .line 220
    iput-object p1, p0, Landroidx/media3/transformer/ExportResult$Builder;->videoEncoderName:Ljava/lang/String;

    return-object p0
.end method

.method public setVideoFrameCount(I)Landroidx/media3/transformer/ExportResult$Builder;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 212
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 213
    iput p1, p0, Landroidx/media3/transformer/ExportResult$Builder;->videoFrameCount:I

    return-object p0
.end method

.method public setVideoMimeType(Ljava/lang/String;)Landroidx/media3/transformer/ExportResult$Builder;
    .locals 0

    .line 227
    iput-object p1, p0, Landroidx/media3/transformer/ExportResult$Builder;->videoMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setWidth(I)Landroidx/media3/transformer/ExportResult$Builder;
    .locals 1

    if-gtz p1, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 200
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 201
    iput p1, p0, Landroidx/media3/transformer/ExportResult$Builder;->width:I

    return-object p0
.end method
