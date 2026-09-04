.class final Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;
.super Landroidx/media3/effect/PassthroughShaderProgram;
.source "FrameExtractorInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/inspector/FrameExtractorInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FrameReadingGlShaderProgram"
.end annotation


# instance fields
.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private final bytesPerPixel:I

.field private glProgram:Landroidx/media3/common/util/GlProgram;

.field private final hdrUses16BitFloat:Z

.field private hlgTextureInfo:Landroidx/media3/common/GlTextureInfo;

.field private final internal:Landroidx/media3/inspector/FrameExtractorInternal;

.field private final useHdr:Z

.field private final visiblePolygon:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;ZLandroidx/media3/inspector/FrameExtractorInternal;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    .line 464
    invoke-direct {p0}, Landroidx/media3/effect/PassthroughShaderProgram;-><init>()V

    const/4 v0, 0x4

    .line 449
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    new-array v3, v0, [F

    fill-array-data v3, :array_2

    new-array v4, v0, [F

    fill-array-data v4, :array_3

    .line 450
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->visiblePolygon:Lcom/google/common/collect/ImmutableList;

    .line 465
    iput-boolean p2, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->useHdr:Z

    .line 466
    iput-object p3, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->internal:Landroidx/media3/inspector/FrameExtractorInternal;

    const/4 p3, 0x0

    .line 467
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 470
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-lt v3, v4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, p3

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 471
    const-string v3, "shaders/vertex_shader_transformation_es3.glsl"

    .line 472
    const-string v4, "shaders/fragment_shader_oetf_es3.glsl"

    .line 474
    :try_start_0
    new-instance v5, Landroidx/media3/common/util/GlProgram;

    invoke-direct {v5, p1, v3, v4}, Landroidx/media3/common/util/GlProgram;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->glProgram:Landroidx/media3/common/util/GlProgram;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    const-string/jumbo p1, "uTexTransformationMatrix"

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object v3

    invoke-virtual {v5, p1, v3}, Landroidx/media3/common/util/GlProgram;->setFloatsUniform(Ljava/lang/String;[F)V

    .line 479
    iget-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->glProgram:Landroidx/media3/common/util/GlProgram;

    const-string/jumbo v3, "uTransformationMatrix"

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroidx/media3/common/util/GlProgram;->setFloatsUniform(Ljava/lang/String;[F)V

    .line 480
    iget-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->glProgram:Landroidx/media3/common/util/GlProgram;

    const-string/jumbo v3, "uRgbMatrix"

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->create4x4IdentityMatrix()[F

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroidx/media3/common/util/GlProgram;->setFloatsUniform(Ljava/lang/String;[F)V

    .line 481
    iget-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->glProgram:Landroidx/media3/common/util/GlProgram;

    const-string/jumbo v3, "uOutputColorTransfer"

    const/4 v4, 0x7

    invoke-virtual {p1, v3, v4}, Landroidx/media3/common/util/GlProgram;->setIntUniform(Ljava/lang/String;I)V

    .line 482
    iget-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->glProgram:Landroidx/media3/common/util/GlProgram;

    const-string v3, "aFramePosition"

    .line 484
    invoke-static {v1}, Landroidx/media3/common/util/GlUtil;->createVertexBuffer(Ljava/util/List;)[F

    move-result-object v1

    .line 482
    invoke-virtual {p1, v3, v1, v0}, Landroidx/media3/common/util/GlProgram;->setBufferAttribute(Ljava/lang/String;[FI)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 476
    :goto_1
    new-instance p2, Landroidx/media3/common/VideoFrameProcessingException;

    invoke-direct {p2, p1}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 488
    :cond_1
    :goto_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-gt p1, v1, :cond_2

    move p3, v2

    :cond_2
    iput-boolean p3, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->hdrUses16BitFloat:Z

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    const/16 v0, 0x8

    .line 489
    :cond_3
    iput v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->bytesPerPixel:I

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/content/Context;ZLandroidx/media3/inspector/FrameExtractorInternal;Landroidx/media3/inspector/FrameExtractorInternal$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    .line 442
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;-><init>(Landroid/content/Context;ZLandroidx/media3/inspector/FrameExtractorInternal;)V

    return-void
.end method

.method private ensureConfigured(Landroidx/media3/common/GlObjectsProvider;II)V
    .locals 2

    mul-int v0, p2, p3

    .line 579
    iget v1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->bytesPerPixel:I

    mul-int/2addr v0, v1

    .line 580
    iget-object v1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 581
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 583
    :cond_0
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 585
    iget-boolean v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->useHdr:Z

    if-eqz v0, :cond_4

    .line 586
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->hlgTextureInfo:Landroidx/media3/common/GlTextureInfo;

    if-eqz v0, :cond_1

    iget v0, v0, Landroidx/media3/common/GlTextureInfo;->width:I

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->hlgTextureInfo:Landroidx/media3/common/GlTextureInfo;

    iget v0, v0, Landroidx/media3/common/GlTextureInfo;->height:I

    if-eq v0, p3, :cond_4

    .line 590
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->hlgTextureInfo:Landroidx/media3/common/GlTextureInfo;

    if-eqz v0, :cond_2

    .line 591
    invoke-virtual {v0}, Landroidx/media3/common/GlTextureInfo;->release()V

    .line 594
    :cond_2
    iget-boolean v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->hdrUses16BitFloat:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 595
    invoke-static {p2, p3, v0}, Landroidx/media3/common/util/GlUtil;->createTexture(IIZ)I

    move-result v0

    goto :goto_0

    .line 596
    :cond_3
    invoke-static {p2, p3}, Landroidx/media3/common/util/GlUtil;->createRgb10A2Texture(II)I

    move-result v0

    .line 597
    :goto_0
    invoke-interface {p1, v0, p2, p3}, Landroidx/media3/common/GlObjectsProvider;->createBuffersForTexture(III)Landroidx/media3/common/GlTextureInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->hlgTextureInfo:Landroidx/media3/common/GlTextureInfo;
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 599
    new-instance p2, Landroidx/media3/common/VideoFrameProcessingException;

    invoke-direct {p2, p1}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->onError(Ljava/lang/Exception;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public queueInputFrame(Landroidx/media3/common/GlObjectsProvider;Landroidx/media3/common/GlTextureInfo;J)V
    .locals 9

    .line 495
    iget v0, p2, Landroidx/media3/common/GlTextureInfo;->width:I

    iget v1, p2, Landroidx/media3/common/GlTextureInfo;->height:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->ensureConfigured(Landroidx/media3/common/GlObjectsProvider;II)V

    .line 497
    iget-boolean p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->useHdr:Z

    if-eqz p1, :cond_4

    .line 498
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->hlgTextureInfo:Landroidx/media3/common/GlTextureInfo;

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 506
    :cond_0
    :try_start_0
    iget p1, p1, Landroidx/media3/common/GlTextureInfo;->fboId:I

    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->hlgTextureInfo:Landroidx/media3/common/GlTextureInfo;

    iget v0, v0, Landroidx/media3/common/GlTextureInfo;->width:I

    iget-object v1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->hlgTextureInfo:Landroidx/media3/common/GlTextureInfo;

    iget v1, v1, Landroidx/media3/common/GlTextureInfo;->height:I

    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/GlUtil;->focusFramebufferUsingCurrentContext(III)V

    .line 508
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 509
    iget-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->glProgram:Landroidx/media3/common/util/GlProgram;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/util/GlProgram;

    invoke-virtual {p1}, Landroidx/media3/common/util/GlProgram;->use()V

    .line 510
    iget-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->glProgram:Landroidx/media3/common/util/GlProgram;

    const-string/jumbo v0, "uTexSampler"

    iget v1, p2, Landroidx/media3/common/GlTextureInfo;->texId:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media3/common/util/GlProgram;->setSamplerTexIdUniform(Ljava/lang/String;II)V

    .line 512
    iget-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->glProgram:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {p1}, Landroidx/media3/common/util/GlProgram;->bindAttributesAndUniforms()V

    .line 513
    iget-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->visiblePolygon:Lcom/google/common/collect/ImmutableList;

    .line 514
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p1

    const/4 v0, 0x6

    .line 513
    invoke-static {v0, v2, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 515
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 519
    iget-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->hlgTextureInfo:Landroidx/media3/common/GlTextureInfo;

    iget v2, p1, Landroidx/media3/common/GlTextureInfo;->width:I

    iget-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->hlgTextureInfo:Landroidx/media3/common/GlTextureInfo;

    iget v3, p1, Landroidx/media3/common/GlTextureInfo;->height:I

    .line 525
    iget-boolean p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->hdrUses16BitFloat:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x140b

    goto :goto_0

    :cond_1
    const p1, 0x8368

    :goto_0
    move v5, p1

    .line 527
    iget-object v6, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v4, 0x1908

    .line 519
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 529
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    iget-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->hlgTextureInfo:Landroidx/media3/common/GlTextureInfo;

    iget v1, p1, Landroidx/media3/common/GlTextureInfo;->width:I

    iget-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->hlgTextureInfo:Landroidx/media3/common/GlTextureInfo;

    iget v2, p1, Landroidx/media3/common/GlTextureInfo;->height:I

    .line 539
    iget-boolean p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->hdrUses16BitFloat:Z

    if-eqz p1, :cond_2

    sget-object p1, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_2
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGBA_1010102:Landroid/graphics/Bitmap$Config;

    :goto_1
    move-object v3, p1

    sget-object p1, Landroid/graphics/ColorSpace$Named;->BT2020_HLG:Landroid/graphics/ColorSpace$Named;

    .line 541
    invoke-static {p1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v5

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 535
    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 531
    new-instance p2, Landroidx/media3/common/VideoFrameProcessingException;

    invoke-direct {p2, p1}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->onError(Ljava/lang/Exception;)V

    return-void

    .line 499
    :cond_3
    :goto_2
    new-instance p1, Landroidx/media3/common/VideoFrameProcessingException;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/4 p3, -0x2

    .line 501
    invoke-static {p2, p3}, Landroidx/media3/exoplayer/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    .line 499
    invoke-virtual {p0, p1}, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->onError(Ljava/lang/Exception;)V

    return-void

    .line 544
    :cond_4
    :try_start_1
    iget p1, p2, Landroidx/media3/common/GlTextureInfo;->fboId:I

    iget v0, p2, Landroidx/media3/common/GlTextureInfo;->width:I

    iget v1, p2, Landroidx/media3/common/GlTextureInfo;->height:I

    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/GlUtil;->focusFramebufferUsingCurrentContext(III)V

    .line 546
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 547
    iget v4, p2, Landroidx/media3/common/GlTextureInfo;->width:I

    iget v5, p2, Landroidx/media3/common/GlTextureInfo;->height:I

    iget-object v8, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 555
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_1
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_1 .. :try_end_1} :catch_1

    .line 563
    iget p1, p2, Landroidx/media3/common/GlTextureInfo;->width:I

    iget v0, p2, Landroidx/media3/common/GlTextureInfo;->height:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 565
    :goto_3
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 567
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->internal:Landroidx/media3/inspector/FrameExtractorInternal;

    .line 568
    invoke-static {v0}, Landroidx/media3/inspector/FrameExtractorInternal;->access$100(Landroidx/media3/inspector/FrameExtractorInternal;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 569
    new-instance v1, Landroidx/media3/inspector/FrameExtractor$Frame;

    invoke-static {p3, p4}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide p3

    invoke-direct {v1, p3, p4, p1}, Landroidx/media3/inspector/FrameExtractor$Frame;-><init>(JLandroid/graphics/Bitmap;)V

    .line 570
    iget-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->internal:Landroidx/media3/inspector/FrameExtractorInternal;

    invoke-static {p1, v1}, Landroidx/media3/inspector/FrameExtractorInternal;->access$302(Landroidx/media3/inspector/FrameExtractorInternal;Landroidx/media3/inspector/FrameExtractor$Frame;)Landroidx/media3/inspector/FrameExtractor$Frame;

    .line 571
    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 575
    invoke-virtual {p0}, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->getInputListener()Landroidx/media3/effect/GlShaderProgram$InputListener;

    move-result-object p1

    invoke-interface {p1, p2}, Landroidx/media3/effect/GlShaderProgram$InputListener;->onInputFrameProcessed(Landroidx/media3/common/GlTextureInfo;)V

    return-void

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 557
    new-instance p2, Landroidx/media3/common/VideoFrameProcessingException;

    invoke-direct {p2, p1}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;->onError(Ljava/lang/Exception;)V

    return-void
.end method
