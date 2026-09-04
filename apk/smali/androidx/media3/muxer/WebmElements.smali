.class final Landroidx/media3/muxer/WebmElements;
.super Ljava/lang/Object;
.source "WebmElements.java"


# static fields
.field private static final MAX_CHROMATICITY:I = 0xc350

.field private static final TIMESTAMP_SCALE:I = 0xf4240


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAudioTrackEntryElement(ILandroidx/media3/common/Format;)Ljava/nio/ByteBuffer;
    .locals 5

    const/4 v0, 0x2

    .line 264
    invoke-static {v0, p0, v0, p1}, Landroidx/media3/muxer/WebmElements;->getCommonTrackEntry(IIILandroidx/media3/common/Format;)Ljava/util/List;

    move-result-object p0

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    iget v1, p1, Landroidx/media3/common/Format;->channelCount:I

    int-to-long v1, v1

    const-wide/16 v3, 0x9f

    invoke-static {v3, v4, v1, v2}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    iget v1, p1, Landroidx/media3/common/Format;->sampleRate:I

    int-to-float v1, v1

    const-wide/16 v2, 0xb5

    invoke-static {v2, v3, v1}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    iget v1, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    int-to-float v1, v1

    const-wide/16 v2, 0x6264

    invoke-static {v2, v3, v1}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "audio/vorbis"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    invoke-static {p1}, Landroidx/media3/common/util/CodecSpecificDataUtil;->getVorbisInitializationData(Landroidx/media3/common/Format;)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    .line 274
    :cond_0
    iget-object p1, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    const-wide/16 v1, 0xe1

    .line 276
    invoke-static {v1, v2, v0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v1, 0x63a2

    .line 277
    invoke-static {v1, v2, p1}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 278
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0xae

    .line 280
    invoke-static {v0, v1, p0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static createColorElement(Landroidx/media3/common/ColorInfo;)Ljava/nio/ByteBuffer;
    .locals 7

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    iget v1, p0, Landroidx/media3/common/ColorInfo;->colorSpace:I

    invoke-static {v1}, Landroidx/media3/common/ColorInfo;->colorSpaceToIsoColorPrimaries(I)I

    move-result v1

    const-wide/16 v2, 0x55bb

    int-to-long v4, v1

    .line 368
    invoke-static {v2, v3, v4, v5}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    iget v1, p0, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    .line 370
    invoke-static {v1}, Landroidx/media3/common/ColorInfo;->colorTransferToIsoTransferCharacteristics(I)I

    move-result v1

    const-wide/16 v2, 0x55ba

    int-to-long v4, v1

    .line 372
    invoke-static {v2, v3, v4, v5}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 371
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    iget v1, p0, Landroidx/media3/common/ColorInfo;->colorSpace:I

    invoke-static {v1}, Landroidx/media3/common/ColorInfo;->colorSpaceToIsoMatrixCoefficients(I)I

    move-result v1

    const-wide/16 v2, 0x55b1

    int-to-long v4, v1

    .line 375
    invoke-static {v2, v3, v4, v5}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 374
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    iget v1, p0, Landroidx/media3/common/ColorInfo;->colorRange:I

    const-wide/16 v2, 0x55b9

    int-to-long v4, v1

    .line 377
    invoke-static {v2, v3, v4, v5}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object p0, p0, Landroidx/media3/common/ColorInfo;->hdrStaticInfo:[B

    if-eqz p0, :cond_0

    .line 380
    array-length v1, p0

    const/16 v2, 0x19

    if-ne v1, v2, :cond_0

    .line 381
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 382
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-nez v1, :cond_0

    .line 385
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 390
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    int-to-float v2, v2

    const v3, 0x47435000    # 50000.0f

    div-float/2addr v2, v3

    const-wide/16 v4, 0x55d1

    .line 388
    invoke-static {v4, v5, v2}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 387
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const-wide/16 v4, 0x55d2

    .line 392
    invoke-static {v4, v5, v2}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 391
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const-wide/16 v4, 0x55d3

    .line 396
    invoke-static {v4, v5, v2}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 395
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const-wide/16 v4, 0x55d4

    .line 400
    invoke-static {v4, v5, v2}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 399
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const-wide/16 v4, 0x55d5

    .line 404
    invoke-static {v4, v5, v2}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 403
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const-wide/16 v4, 0x55d6

    .line 408
    invoke-static {v4, v5, v2}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 407
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const-wide/16 v4, 0x55d7

    .line 412
    invoke-static {v4, v5, v2}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 411
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const-wide/16 v3, 0x55d8

    .line 416
    invoke-static {v3, v4, v2}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 415
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    int-to-float v2, v2

    const-wide/16 v3, 0x55d9

    .line 421
    invoke-static {v3, v4, v2}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 420
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    int-to-float v2, v2

    const v3, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v2, v3

    const-wide/16 v3, 0x55da

    .line 425
    invoke-static {v3, v4, v2}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 424
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 429
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    const-wide/16 v3, 0x55bc

    int-to-long v5, v2

    .line 432
    invoke-static {v3, v4, v5, v6}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 431
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v2, 0x55bd

    int-to-long v4, p0

    .line 434
    invoke-static {v2, v3, v4, v5}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 433
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v2, 0x55d0

    .line 436
    invoke-static {v2, v3, v1}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 435
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-wide/16 v1, 0x55b0

    .line 439
    invoke-static {v1, v2, v0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createCuePointElement(JIJ)Ljava/nio/ByteBuffer;
    .locals 3

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0xb3

    .line 217
    invoke-static {v1, v2, p0, p1}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0xf7

    int-to-long p1, p2

    .line 220
    invoke-static {v1, v2, p1, p2}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 p1, 0xf1

    .line 222
    invoke-static {p1, p2, p3, p4}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 221
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 p1, 0xb7

    .line 225
    invoke-static {p1, p2, p0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 224
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 p0, 0xbb

    .line 227
    invoke-static {p0, p1, v0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createEbmlHeaderElement()Ljava/nio/ByteBuffer;
    .locals 5

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x4286

    const-wide/16 v3, 0x1

    .line 97
    invoke-static {v1, v2, v3, v4}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x42f7

    .line 98
    invoke-static {v1, v2, v3, v4}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x42f2

    const-wide/16 v3, 0x4

    .line 99
    invoke-static {v1, v2, v3, v4}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x42f3

    const-wide/16 v3, 0x8

    .line 100
    invoke-static {v1, v2, v3, v4}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x4282

    .line 101
    const-string/jumbo v3, "webm"

    invoke-static {v1, v2, v3}, Landroidx/media3/muxer/WebmElements;->createStringElement(JLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x4287

    const-wide/16 v3, 0x2

    .line 102
    invoke-static {v1, v2, v3, v4}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x4285

    .line 103
    invoke-static {v1, v2, v3, v4}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/32 v1, 0x1a45dfa3

    .line 104
    invoke-static {v1, v2, v0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static createFloatElement(JF)Ljava/nio/ByteBuffer;
    .locals 0

    .line 58
    invoke-static {p2}, Landroidx/media3/common/util/Util;->toByteArray(F)[B

    move-result-object p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 59
    invoke-static {p0, p1, p2}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createInfoElement(F)Ljava/nio/ByteBuffer;
    .locals 5

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x4489

    .line 195
    invoke-static {v1, v2, p0}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/32 v1, 0x2ad7b1

    const-wide/32 v3, 0xf4240

    .line 196
    invoke-static {v1, v2, v3, v4}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x4d80

    .line 198
    const-string p0, "android"

    invoke-static {v1, v2, p0}, Landroidx/media3/muxer/WebmElements;->createStringElement(JLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x5741

    .line 199
    invoke-static {v1, v2, p0}, Landroidx/media3/muxer/WebmElements;->createStringElement(JLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/32 v1, 0x1549a966

    .line 200
    invoke-static {v1, v2, v0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createSeekHeadElement(JJJ)Ljava/nio/ByteBuffer;
    .locals 8

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/32 v2, 0x1549a966

    const-wide/16 v4, 0x53ab

    .line 124
    invoke-static {v4, v5, v2, v3}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 123
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v2, 0x53ac

    .line 128
    invoke-static {v2, v3, p0, p1}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 p0, 0x4dbb

    .line 129
    invoke-static {p0, p1, v1}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/32 v6, 0x1654ae6b

    .line 134
    invoke-static {v4, v5, v6, v7}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 133
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-static {v2, v3, p2, p3}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-static {p0, p1, v1}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-wide/32 v6, 0x1c53bb6b

    .line 144
    invoke-static {v4, v5, v6, v7}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 143
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-static {v2, v3, p4, p5}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-static {p0, p1, p2}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/32 p0, 0x114d9b74

    .line 151
    invoke-static {p0, p1, v0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createSimpleBlockElement(IJZLjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4

    int-to-long v0, p0

    .line 73
    invoke-static {v0, v1}, Landroidx/media3/muxer/EbmlUtils;->encodeVInt(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/16 v0, 0x8

    shr-long v0, p1, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    and-long/2addr p1, v2

    long-to-int p1, p1

    int-to-byte p1, p1

    if-eqz p3, :cond_0

    const/16 p2, 0x80

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    int-to-byte p2, p2

    .line 78
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p3

    add-int/lit8 p3, p3, 0x3

    .line 81
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr p3, v1

    .line 83
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 84
    invoke-virtual {p3, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 85
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 86
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 87
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 89
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 p0, 0xa3

    .line 91
    invoke-static {p0, p1, p3}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createStringElement(JLjava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 64
    invoke-static {p2}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 65
    invoke-static {p0, p1, p2}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createTrackElements(Ljava/util/List;)Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/muxer/Track;",
            ">;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 232
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 233
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/muxer/Track;

    .line 234
    iget-object v3, v2, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    iget-object v3, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v3}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 241
    iget v3, v2, Landroidx/media3/muxer/Track;->id:I

    iget-object v2, v2, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    invoke-static {v3, v2}, Landroidx/media3/muxer/WebmElements;->createVideoTrackEntryElement(ILandroidx/media3/common/Format;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 242
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 247
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    iget-object v0, v2, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 248
    const-string v1, "Track MimeType %s is not supported in WebM."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 237
    :cond_1
    iget v3, v2, Landroidx/media3/muxer/Track;->id:I

    iget-object v2, v2, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    invoke-static {v3, v2}, Landroidx/media3/muxer/WebmElements;->createAudioTrackEntryElement(ILandroidx/media3/common/Format;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 238
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-wide/32 v1, 0x1654ae6b

    .line 252
    invoke-static {v1, v2, v0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;
    .locals 0

    .line 52
    invoke-static {p2, p3}, Landroidx/media3/muxer/WebmElements;->uintToMinimumLengthByteBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 53
    invoke-static {p0, p1, p2}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static createVideoElement(Landroidx/media3/common/Format;)Ljava/nio/ByteBuffer;
    .locals 5

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 351
    iget v1, p0, Landroidx/media3/common/Format;->width:I

    int-to-long v1, v1

    const-wide/16 v3, 0xb0

    invoke-static {v3, v4, v1, v2}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    iget v1, p0, Landroidx/media3/common/Format;->height:I

    int-to-long v1, v1

    const-wide/16 v3, 0xba

    invoke-static {v3, v4, v1, v2}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v1, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    if-eqz v1, :cond_0

    .line 354
    iget-object p0, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {p0}, Landroidx/media3/muxer/WebmElements;->createColorElement(Landroidx/media3/common/ColorInfo;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-wide/16 v1, 0xe0

    .line 356
    invoke-static {v1, v2, v0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static createVideoTrackEntryElement(ILandroidx/media3/common/Format;)Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v0, 0x1

    .line 331
    invoke-static {v0, p0, v0, p1}, Landroidx/media3/muxer/WebmElements;->getCommonTrackEntry(IIILandroidx/media3/common/Format;)Ljava/util/List;

    move-result-object p0

    .line 332
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v0, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    const/4 v1, 0x0

    .line 337
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v1, 0x63a2

    .line 336
    invoke-static {v1, v2, v0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 335
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_0
    invoke-static {p1}, Landroidx/media3/muxer/WebmElements;->createVideoElement(Landroidx/media3/common/Format;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0xae

    .line 340
    invoke-static {v0, v1, p0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createVoidElement(I)Ljava/nio/ByteBuffer;
    .locals 6

    const-wide/16 v0, 0xec

    .line 164
    invoke-static {v0, v1}, Landroidx/media3/muxer/WebmElements;->uintToMinimumLengthByteBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt p0, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 168
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    const/16 v2, 0x9

    if-ge p0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    sub-int v1, p0, v1

    sub-int/2addr v1, v3

    .line 183
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 184
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    int-to-long v4, v1

    .line 185
    invoke-static {v4, v5, v3}, Landroidx/media3/muxer/EbmlUtils;->encodeVIntWithWidth(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 187
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 188
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p0
.end method

.method private static getCodecId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 308
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "audio/opus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "audio/vorbis"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported mime type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :pswitch_0
    const-string p0, "V_VP9"

    return-object p0

    .line 310
    :pswitch_1
    const-string p0, "V_VP8"

    return-object p0

    .line 314
    :pswitch_2
    const-string p0, "A_OPUS"

    return-object p0

    .line 316
    :pswitch_3
    const-string p0, "A_VORBIS"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3bd43e14 -> :sswitch_3
        0x59b2d2d8 -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getCommonTrackEntry(IIILandroidx/media3/common/Format;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Landroidx/media3/common/Format;",
            ")",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0xd7

    int-to-long v3, p0

    .line 295
    invoke-static {v1, v2, v3, v4}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x73c5

    int-to-long p0, p1

    .line 296
    invoke-static {v1, v2, p0, p1}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 p0, 0x9c

    const-wide/16 v1, 0x0

    .line 297
    invoke-static {p0, p1, v1, v2}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object p0, p3, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-wide/32 v1, 0x22b59c

    invoke-static {v1, v2, p0}, Landroidx/media3/muxer/WebmElements;->createStringElement(JLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object p0, p3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 301
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroidx/media3/muxer/WebmElements;->getCodecId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v1, 0x86

    .line 300
    invoke-static {v1, v2, p0}, Landroidx/media3/muxer/WebmElements;->createStringElement(JLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 299
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 p0, 0x83

    int-to-long p2, p2

    .line 302
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static uintToMinimumLengthByteBuffer(J)Ljava/nio/ByteBuffer;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 454
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x47

    div-int/2addr v0, v2

    .line 456
    :goto_0
    new-array v3, v0, [B

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_1

    const-wide/16 v4, 0xff

    and-long/2addr v4, p0

    long-to-int v1, v4

    int-to-byte v1, v1

    .line 458
    aput-byte v1, v3, v0

    ushr-long/2addr p0, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 461
    :cond_1
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static wrapIntoElement(JLjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 506
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .line 476
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 477
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 480
    :cond_0
    invoke-static {p0, p1}, Landroidx/media3/muxer/WebmElements;->uintToMinimumLengthByteBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    int-to-long v2, v1

    .line 481
    invoke-static {v2, v3}, Landroidx/media3/muxer/EbmlUtils;->encodeVInt(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 482
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 483
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 485
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 486
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 487
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 488
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 490
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method
