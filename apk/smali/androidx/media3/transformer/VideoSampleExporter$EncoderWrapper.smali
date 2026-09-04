.class final Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;
.super Ljava/lang/Object;
.source "VideoSampleExporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/VideoSampleExporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EncoderWrapper"
.end annotation


# static fields
.field private static final DEFAULT_OUTPUT_MIME_TYPE:Ljava/lang/String; = "video/hevc"


# instance fields
.field private final allowedEncodingRotationDegrees:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile encoder:Landroidx/media3/transformer/Codec;

.field private final encoderFactory:Landroidx/media3/transformer/Codec$EncoderFactory;

.field private encoderSurfaceInfo:Landroidx/media3/common/SurfaceInfo;

.field private final fallbackListener:Landroidx/media3/transformer/FallbackListener;

.field private final hdrModeAfterFallback:I

.field private final inputFormat:Landroidx/media3/common/Format;

.field private final logSessionId:Landroid/media/metrics/LogSessionId;

.field private final muxerSupportedMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile outputRotationDegrees:I

.field private volatile releaseEncoder:Z

.field private final requestedOutputMimeType:Ljava/lang/String;

.field private final transformationRequest:Landroidx/media3/transformer/TransformationRequest;


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/Codec$EncoderFactory;Landroidx/media3/common/Format;Lcom/google/common/collect/ImmutableList;Ljava/util/List;Landroidx/media3/transformer/TransformationRequest;Landroidx/media3/transformer/FallbackListener;Landroid/media/metrics/LogSessionId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/transformer/Codec$EncoderFactory;",
            "Landroidx/media3/common/Format;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/media3/transformer/TransformationRequest;",
            "Landroidx/media3/transformer/FallbackListener;",
            "Landroid/media/metrics/LogSessionId;",
            ")V"
        }
    .end annotation

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iget-object v0, p2, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 280
    iput-object p1, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->encoderFactory:Landroidx/media3/transformer/Codec$EncoderFactory;

    .line 281
    iput-object p2, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->inputFormat:Landroidx/media3/common/Format;

    .line 282
    iput-object p3, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->allowedEncodingRotationDegrees:Lcom/google/common/collect/ImmutableList;

    .line 283
    iput-object p4, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->muxerSupportedMimeTypes:Ljava/util/List;

    .line 284
    iput-object p5, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->transformationRequest:Landroidx/media3/transformer/TransformationRequest;

    .line 285
    iput-object p6, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->fallbackListener:Landroidx/media3/transformer/FallbackListener;

    .line 286
    iput-object p7, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->logSessionId:Landroid/media/metrics/LogSessionId;

    .line 288
    invoke-static {p2, p5}, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->getRequestedOutputMimeTypeAndHdrModeAfterFallback(Landroidx/media3/common/Format;Landroidx/media3/transformer/TransformationRequest;)Landroid/util/Pair;

    move-result-object p1

    .line 289
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->requestedOutputMimeType:Ljava/lang/String;

    .line 290
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->hdrModeAfterFallback:I

    return-void
.end method

.method private static createSupportedTransformationRequest(Landroidx/media3/transformer/TransformationRequest;ZLandroidx/media3/common/Format;Landroidx/media3/common/Format;I)Landroidx/media3/transformer/TransformationRequest;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 440
    invoke-virtual {p0}, Landroidx/media3/transformer/TransformationRequest;->buildUpon()Landroidx/media3/transformer/TransformationRequest$Builder;

    move-result-object v0

    .line 441
    iget p0, p0, Landroidx/media3/transformer/TransformationRequest;->hdrMode:I

    if-eq p0, p4, :cond_0

    .line 442
    invoke-virtual {v0, p4}, Landroidx/media3/transformer/TransformationRequest$Builder;->setHdrMode(I)Landroidx/media3/transformer/TransformationRequest$Builder;

    .line 445
    :cond_0
    iget-object p0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object p4, p3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p0, p4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 446
    iget-object p0, p3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroidx/media3/transformer/TransformationRequest$Builder;->setVideoMimeType(Ljava/lang/String;)Landroidx/media3/transformer/TransformationRequest$Builder;

    :cond_1
    if-eqz p1, :cond_2

    .line 450
    iget p0, p2, Landroidx/media3/common/Format;->width:I

    iget p1, p3, Landroidx/media3/common/Format;->width:I

    if-eq p0, p1, :cond_3

    .line 451
    iget p0, p3, Landroidx/media3/common/Format;->width:I

    invoke-virtual {v0, p0}, Landroidx/media3/transformer/TransformationRequest$Builder;->setResolution(I)Landroidx/media3/transformer/TransformationRequest$Builder;

    goto :goto_0

    .line 453
    :cond_2
    iget p0, p2, Landroidx/media3/common/Format;->height:I

    iget p1, p3, Landroidx/media3/common/Format;->height:I

    if-eq p0, p1, :cond_3

    .line 454
    iget p0, p3, Landroidx/media3/common/Format;->height:I

    invoke-virtual {v0, p0}, Landroidx/media3/transformer/TransformationRequest$Builder;->setResolution(I)Landroidx/media3/transformer/TransformationRequest$Builder;

    .line 457
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/transformer/TransformationRequest$Builder;->build()Landroidx/media3/transformer/TransformationRequest;

    move-result-object p0

    return-object p0
.end method

.method private static getRequestedOutputMimeTypeAndHdrModeAfterFallback(Landroidx/media3/common/Format;Landroidx/media3/transformer/TransformationRequest;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Format;",
            "Landroidx/media3/transformer/TransformationRequest;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 297
    iget-object v1, p1, Landroidx/media3/transformer/TransformationRequest;->videoMimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 298
    iget-object v0, p1, Landroidx/media3/transformer/TransformationRequest;->videoMimeType:Ljava/lang/String;

    goto :goto_0

    .line 299
    :cond_0
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    const-string/jumbo v0, "video/hevc"

    .line 305
    :cond_1
    :goto_0
    iget p1, p1, Landroidx/media3/transformer/TransformationRequest;->hdrMode:I

    iget-object p0, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {p1, v0, p0}, Landroidx/media3/transformer/TransformerUtil;->getOutputMimeTypeAndHdrModeAfterFallback(ILjava/lang/String;Landroidx/media3/common/ColorInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private getSupportedInputColor()Landroidx/media3/common/ColorInfo;
    .locals 2

    .line 406
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->inputFormat:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 407
    invoke-static {v0}, Landroidx/media3/common/ColorInfo;->isTransferHdr(Landroidx/media3/common/ColorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->hdrModeAfterFallback:I

    if-eqz v0, :cond_0

    .line 411
    sget-object v0, Landroidx/media3/common/ColorInfo;->SDR_BT709_LIMITED:Landroidx/media3/common/ColorInfo;

    return-object v0

    .line 413
    :cond_0
    sget-object v0, Landroidx/media3/common/ColorInfo;->SRGB_BT709_FULL:Landroidx/media3/common/ColorInfo;

    iget-object v1, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->inputFormat:Landroidx/media3/common/Format;

    iget-object v1, v1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-virtual {v0, v1}, Landroidx/media3/common/ColorInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    sget-object v0, Landroidx/media3/common/ColorInfo;->SDR_BT709_LIMITED:Landroidx/media3/common/ColorInfo;

    return-object v0

    .line 416
    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->inputFormat:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/ColorInfo;

    return-object v0
.end method


# virtual methods
.method public getHdrModeAfterFallback()I
    .locals 1

    .line 310
    iget v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->hdrModeAfterFallback:I

    return v0
.end method

.method public getOutputBuffer()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 480
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->encoder:Landroidx/media3/transformer/Codec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->encoder:Landroidx/media3/transformer/Codec;

    invoke-interface {v0}, Landroidx/media3/transformer/Codec;->getOutputBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 485
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->encoder:Landroidx/media3/transformer/Codec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->encoder:Landroidx/media3/transformer/Codec;

    invoke-interface {v0}, Landroidx/media3/transformer/Codec;->getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputFormat()Landroidx/media3/common/Format;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 468
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->encoder:Landroidx/media3/transformer/Codec;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 471
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->encoder:Landroidx/media3/transformer/Codec;

    invoke-interface {v0}, Landroidx/media3/transformer/Codec;->getOutputFormat()Landroidx/media3/common/Format;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 472
    iget v1, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->outputRotationDegrees:I

    if-eqz v1, :cond_1

    .line 473
    invoke-virtual {v0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->outputRotationDegrees:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setRotationDegrees(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSurfaceInfo(II)Landroidx/media3/common/SurfaceInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 316
    iget-boolean v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->releaseEncoder:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 319
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->encoderSurfaceInfo:Landroidx/media3/common/SurfaceInfo;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    if-ge p1, p2, :cond_2

    const/16 v0, 0x5a

    .line 331
    iput v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->outputRotationDegrees:I

    move v7, p2

    move p2, p1

    move p1, v7

    .line 337
    :cond_2
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->inputFormat:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->rotationDegrees:I

    rem-int/lit16 v0, v0, 0xb4

    iget v1, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->outputRotationDegrees:I

    rem-int/lit16 v1, v1, 0xb4

    if-ne v0, v1, :cond_3

    .line 338
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->inputFormat:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->rotationDegrees:I

    iput v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->outputRotationDegrees:I

    .line 341
    :cond_3
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->allowedEncodingRotationDegrees:Lcom/google/common/collect/ImmutableList;

    iget v1, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->outputRotationDegrees:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 342
    iget v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->outputRotationDegrees:I

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    .line 344
    iget-object v2, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->allowedEncodingRotationDegrees:Lcom/google/common/collect/ImmutableList;

    .line 345
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 344
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 346
    iput v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->outputRotationDegrees:I

    goto :goto_0

    .line 353
    :cond_4
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->allowedEncodingRotationDegrees:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->outputRotationDegrees:I

    move v7, p2

    move p2, p1

    move p1, v7

    .line 358
    :cond_5
    :goto_0
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 360
    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 361
    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 362
    invoke-virtual {p1, v1}, Landroidx/media3/common/Format$Builder;->setRotationDegrees(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->inputFormat:Landroidx/media3/common/Format;

    iget p2, p2, Landroidx/media3/common/Format;->frameRate:F

    .line 363
    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->requestedOutputMimeType:Ljava/lang/String;

    .line 364
    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 365
    invoke-direct {p0}, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->getSupportedInputColor()Landroidx/media3/common/ColorInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->inputFormat:Landroidx/media3/common/Format;

    iget-object p2, p2, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 366
    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 367
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    .line 370
    iget-object p2, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->encoderFactory:Landroidx/media3/transformer/Codec$EncoderFactory;

    .line 373
    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->muxerSupportedMimeTypes:Ljava/util/List;

    .line 375
    invoke-static {p1, v2}, Landroidx/media3/transformer/SampleExporter;->findSupportedMimeTypeForEncoderAndMuxer(Landroidx/media3/common/Format;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->logSessionId:Landroid/media/metrics/LogSessionId;

    .line 371
    invoke-interface {p2, v0, v2}, Landroidx/media3/transformer/Codec$EncoderFactory;->createForVideoEncoding(Landroidx/media3/common/Format;Landroid/media/metrics/LogSessionId;)Landroidx/media3/transformer/Codec;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->encoder:Landroidx/media3/transformer/Codec;

    .line 380
    iget-object p2, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->encoder:Landroidx/media3/transformer/Codec;

    invoke-interface {p2}, Landroidx/media3/transformer/Codec;->getConfigurationFormat()Landroidx/media3/common/Format;

    move-result-object p2

    .line 382
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->fallbackListener:Landroidx/media3/transformer/FallbackListener;

    iget-object v2, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->transformationRequest:Landroidx/media3/transformer/TransformationRequest;

    iget v3, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->outputRotationDegrees:I

    if-eqz v3, :cond_6

    const/4 v1, 0x1

    :cond_6
    iget v3, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->hdrModeAfterFallback:I

    .line 383
    invoke-static {v2, v1, p1, p2, v3}, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->createSupportedTransformationRequest(Landroidx/media3/transformer/TransformationRequest;ZLandroidx/media3/common/Format;Landroidx/media3/common/Format;I)Landroidx/media3/transformer/TransformationRequest;

    move-result-object p1

    .line 382
    invoke-virtual {v0, p1}, Landroidx/media3/transformer/FallbackListener;->onTransformationRequestFinalized(Landroidx/media3/transformer/TransformationRequest;)V

    .line 390
    new-instance v1, Landroidx/media3/common/SurfaceInfo;

    iget-object p1, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->encoder:Landroidx/media3/transformer/Codec;

    .line 392
    invoke-interface {p1}, Landroidx/media3/transformer/Codec;->getInputSurface()Landroid/view/Surface;

    move-result-object v2

    iget v3, p2, Landroidx/media3/common/Format;->width:I

    iget v4, p2, Landroidx/media3/common/Format;->height:I

    iget v5, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->outputRotationDegrees:I

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Landroidx/media3/common/SurfaceInfo;-><init>(Landroid/view/Surface;IIIZ)V

    iput-object v1, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->encoderSurfaceInfo:Landroidx/media3/common/SurfaceInfo;

    .line 398
    iget-boolean p1, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->releaseEncoder:Z

    if-eqz p1, :cond_7

    .line 399
    iget-object p1, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->encoder:Landroidx/media3/transformer/Codec;

    invoke-interface {p1}, Landroidx/media3/transformer/Codec;->release()V

    .line 401
    :cond_7
    iget-object p1, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->encoderSurfaceInfo:Landroidx/media3/common/SurfaceInfo;

    return-object p1
.end method

.method public isEnded()Z
    .locals 1

    .line 495
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->encoder:Landroidx/media3/transformer/Codec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->encoder:Landroidx/media3/transformer/Codec;

    invoke-interface {v0}, Landroidx/media3/transformer/Codec;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 1

    .line 499
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->encoder:Landroidx/media3/transformer/Codec;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->encoder:Landroidx/media3/transformer/Codec;

    invoke-interface {v0}, Landroidx/media3/transformer/Codec;->release()V

    :cond_0
    const/4 v0, 0x1

    .line 502
    iput-boolean v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->releaseEncoder:Z

    return-void
.end method

.method public releaseOutputBuffer(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->encoder:Landroidx/media3/transformer/Codec;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->encoder:Landroidx/media3/transformer/Codec;

    invoke-interface {v0, p1}, Landroidx/media3/transformer/Codec;->releaseOutputBuffer(Z)V

    :cond_0
    return-void
.end method

.method public signalEndOfInputStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 461
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->encoder:Landroidx/media3/transformer/Codec;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$EncoderWrapper;->encoder:Landroidx/media3/transformer/Codec;

    invoke-interface {v0}, Landroidx/media3/transformer/Codec;->signalEndOfInputStream()V

    :cond_0
    return-void
.end method
