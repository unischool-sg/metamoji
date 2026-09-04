.class public Lcom/metamoji/df/model/PlainValueSerializer;
.super Ljava/lang/Object;
.source "PlainValueSerializer.java"


# static fields
.field public static final MMJMD_MAP_KEY_META:Ljava/lang/String; = "\u001b\u0007"

.field private static final MMJMD_VALUETYPE_ARRAY:B = 0x41t

.field private static final MMJMD_VALUETYPE_BLOB:B = 0x4ct

.field private static final MMJMD_VALUETYPE_BOOLEAN:B = 0x42t

.field private static final MMJMD_VALUETYPE_BYTE:B = 0x59t

.field private static final MMJMD_VALUETYPE_DWORD:B = 0x44t

.field private static final MMJMD_VALUETYPE_FLOAT:B = 0x46t

.field private static final MMJMD_VALUETYPE_MODEL:B = 0x4dt

.field private static final MMJMD_VALUETYPE_NULL:B = 0x4et

.field private static final MMJMD_VALUETYPE_OBJECT:B = 0x4ft

.field private static final MMJMD_VALUETYPE_POINTARRAY:B = 0x70t

.field private static final MMJMD_VALUETYPE_POINTARRAY_OLD:B = 0x50t

.field private static final MMJMD_VALUETYPE_SET:B = 0x54t

.field private static final MMJMD_VALUETYPE_STRING:B = 0x53t

.field private static final MMJMD_VALUETYPE_WORD:B = 0x57t

.field private static final NUMBER_BYTE:I = 0x1

.field private static final NUMBER_DWORD:I = 0x3

.field private static final NUMBER_FLOAT:I = 0x0

.field private static final NUMBER_WORD:I = 0x2


# instance fields
.field private manager:Lcom/metamoji/df/model/IModelManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModelManager;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/metamoji/df/model/PlainValueSerializer;->manager:Lcom/metamoji/df/model/IModelManager;

    return-void
.end method

.method private checkAvailableSize(II)V
    .locals 1

    if-lt p1, p2, :cond_0

    return-void

    .line 321
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "MD0011"

    const-string v0, "InvalidDataException: data not found in buffer."

    invoke-direct {p1, p2, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method private detectNumberType(Ljava/lang/Number;)I
    .locals 5

    .line 77
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 80
    invoke-direct {p0, v0, v1}, Lcom/metamoji/df/model/PlainValueSerializer;->detectNumberType2(D)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-double v3, p1

    cmpl-double p1, v3, v0

    if-nez p1, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private detectNumberType2(D)I
    .locals 2

    const-wide/high16 v0, -0x3fa0000000000000L    # -128.0

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_0

    const-wide v0, 0x405fc00000000000L    # 127.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-wide/high16 v0, -0x3f20000000000000L    # -32768.0

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_1

    const-wide v0, 0x40dfffc000000000L    # 32767.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_2

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public readValue([B)Ljava/lang/Object;
    .locals 2

    .line 109
    new-instance v0, Lcom/metamoji/cm/mutable/MutableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/cm/mutable/MutableInt;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/df/model/PlainValueSerializer;->readValue([BLcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue([BLcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 332
    array-length v3, v1

    .line 333
    invoke-virtual {v2}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v4

    sub-int v5, v3, v4

    const/4 v6, 0x1

    .line 335
    invoke-direct {v0, v5, v6}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 338
    aget-byte v5, v1, v4

    add-int/lit8 v7, v4, 0x1

    .line 340
    invoke-virtual {v2, v7}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    const/16 v8, 0x4e

    const/4 v9, 0x0

    if-ne v8, v5, :cond_0

    return-object v9

    :cond_0
    const/16 v8, 0x42

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-ne v8, v5, :cond_2

    sub-int/2addr v3, v7

    .line 350
    invoke-direct {v0, v3, v6}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 351
    aget-byte v1, v1, v7

    if-nez v1, :cond_1

    move v6, v10

    :cond_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    add-int/2addr v4, v11

    .line 353
    invoke-virtual {v2, v4}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    return-object v1

    :cond_2
    const/16 v8, 0x59

    if-ne v8, v5, :cond_3

    sub-int/2addr v3, v7

    .line 358
    invoke-direct {v0, v3, v6}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 359
    aget-byte v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/2addr v4, v11

    .line 361
    invoke-virtual {v2, v4}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    return-object v1

    :cond_3
    const/16 v8, 0x57

    const/4 v12, 0x3

    if-ne v8, v5, :cond_4

    sub-int/2addr v3, v7

    .line 366
    invoke-direct {v0, v3, v11}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 367
    invoke-static {v1, v7}, Lcom/metamoji/cm/BytesUtils;->readSInt16LE([BI)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/2addr v4, v12

    .line 369
    invoke-virtual {v2, v4}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    return-object v1

    :cond_4
    const/16 v8, 0x44

    const/4 v13, 0x4

    if-ne v8, v5, :cond_5

    sub-int/2addr v3, v7

    .line 374
    invoke-direct {v0, v3, v13}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 375
    invoke-static {v1, v7}, Lcom/metamoji/cm/BytesUtils;->readSInt32LE([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/lit8 v4, v4, 0x5

    .line 377
    invoke-virtual {v2, v4}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    return-object v1

    :cond_5
    const/16 v8, 0x46

    const/16 v14, 0x8

    if-ne v8, v5, :cond_6

    sub-int/2addr v3, v7

    .line 382
    invoke-direct {v0, v3, v14}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 383
    invoke-static {v1, v7}, Lcom/metamoji/cm/BytesUtils;->readFloat64LE([BI)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    add-int/lit8 v4, v4, 0x9

    .line 385
    invoke-virtual {v2, v4}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    return-object v1

    :cond_6
    const/16 v8, 0x53

    if-ne v8, v5, :cond_7

    .line 390
    invoke-static/range {p1 .. p2}, Lcom/metamoji/df/model/ByteData;->readZeroTerminatedUTF8String([BLcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/String;

    move-result-object v1

    .line 391
    invoke-virtual {v2}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    return-object v1

    :cond_7
    const/16 v8, 0x41

    if-ne v8, v5, :cond_9

    sub-int/2addr v3, v7

    .line 396
    invoke-direct {v0, v3, v13}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 397
    invoke-static {v1, v7}, Lcom/metamoji/cm/BytesUtils;->readUInt32LE([BI)J

    move-result-wide v5

    long-to-int v3, v5

    add-int/lit8 v4, v4, 0x5

    .line 399
    invoke-virtual {v2, v4}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    .line 401
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v10, v3, :cond_8

    .line 404
    invoke-virtual/range {p0 .. p2}, Lcom/metamoji/df/model/PlainValueSerializer;->readValue([BLcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/Object;

    move-result-object v5

    .line 405
    invoke-virtual {v2}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    .line 406
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_8
    return-object v4

    :cond_9
    const/16 v8, 0x54

    if-ne v8, v5, :cond_b

    sub-int/2addr v3, v7

    .line 412
    invoke-direct {v0, v3, v13}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 413
    invoke-static {v1, v7}, Lcom/metamoji/cm/BytesUtils;->readUInt32LE([BI)J

    move-result-wide v5

    long-to-int v3, v5

    add-int/lit8 v4, v4, 0x5

    .line 415
    invoke-virtual {v2, v4}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    .line 417
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    :goto_1
    if-ge v10, v3, :cond_a

    .line 420
    invoke-virtual/range {p0 .. p2}, Lcom/metamoji/df/model/PlainValueSerializer;->readValue([BLcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/Object;

    move-result-object v5

    .line 421
    invoke-virtual {v2}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    .line 422
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_a
    return-object v4

    :cond_b
    const/16 v8, 0x4f

    if-ne v8, v5, :cond_e

    .line 428
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sub-int/2addr v3, v7

    .line 430
    invoke-direct {v0, v3, v6}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 431
    :goto_2
    aget-byte v3, v1, v7

    if-eqz v3, :cond_d

    .line 433
    invoke-static/range {p1 .. p2}, Lcom/metamoji/df/model/ByteData;->readZeroTerminatedUTF8String([BLcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/String;

    move-result-object v3

    .line 434
    invoke-virtual {v2}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    .line 435
    const-string v5, "\u001b\u0007"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 437
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 440
    :cond_c
    invoke-virtual/range {p0 .. p2}, Lcom/metamoji/df/model/PlainValueSerializer;->readValue([BLcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/Object;

    move-result-object v5

    .line 441
    invoke-virtual {v2}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v7

    .line 442
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_d
    add-int/2addr v7, v6

    .line 445
    invoke-virtual {v2, v7}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    return-object v4

    :cond_e
    const/16 v8, 0x4c

    if-ne v8, v5, :cond_f

    .line 450
    invoke-static/range {p1 .. p2}, Lcom/metamoji/df/model/ByteData;->readZeroTerminatedUTF8String([BLcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/String;

    move-result-object v4

    .line 451
    invoke-virtual {v2}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v5

    sub-int/2addr v3, v5

    .line 453
    invoke-direct {v0, v3, v13}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 454
    invoke-static {v1, v5}, Lcom/metamoji/cm/BytesUtils;->readUInt32LE([BI)J

    move-result-wide v6

    long-to-int v3, v6

    add-int/2addr v5, v13

    .line 456
    invoke-virtual {v2, v5}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    .line 458
    new-array v6, v3, [B

    .line 459
    invoke-static {v1, v5, v6, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v3

    .line 461
    invoke-virtual {v2, v5}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    .line 463
    new-instance v1, Lcom/metamoji/cm/Blob;

    invoke-direct {v1, v6, v4}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    return-object v1

    :cond_f
    const/16 v8, 0x4d

    if-ne v8, v5, :cond_11

    sub-int/2addr v3, v7

    .line 468
    invoke-direct {v0, v3, v13}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 469
    invoke-static {v1, v7}, Lcom/metamoji/cm/BytesUtils;->readUInt32LE([BI)J

    move-result-wide v5

    long-to-int v1, v5

    add-int/lit8 v4, v4, 0x5

    .line 471
    invoke-virtual {v2, v4}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    .line 473
    iget-object v2, v0, Lcom/metamoji/df/model/PlainValueSerializer;->manager:Lcom/metamoji/df/model/IModelManager;

    if-nez v2, :cond_10

    return-object v9

    .line 476
    :cond_10
    invoke-interface {v2, v1}, Lcom/metamoji/df/model/IModelManager;->getModelByID(I)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    return-object v1

    :cond_11
    const/16 v8, 0x50

    if-ne v8, v5, :cond_1b

    sub-int v5, v3, v7

    .line 482
    invoke-direct {v0, v5, v13}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 483
    invoke-static {v1, v7}, Lcom/metamoji/cm/BytesUtils;->readUInt32LE([BI)J

    move-result-wide v7

    long-to-int v5, v7

    add-int/lit8 v4, v4, 0x5

    .line 485
    invoke-virtual {v2, v4}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    .line 487
    new-instance v7, Lcom/metamoji/cm/PointArray;

    invoke-direct {v7, v5}, Lcom/metamoji/cm/PointArray;-><init>(I)V

    :goto_3
    if-ge v10, v5, :cond_1a

    sub-int v8, v3, v4

    .line 490
    invoke-direct {v0, v8, v6}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 491
    aget-byte v8, v1, v4

    add-int/lit8 v9, v4, 0x1

    .line 493
    invoke-virtual {v2, v9}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    .line 494
    new-instance v15, Landroid/graphics/PointF;

    invoke-direct {v15}, Landroid/graphics/PointF;-><init>()V

    ushr-int/lit8 v16, v8, 0x2

    and-int/lit8 v14, v16, 0x3

    if-ne v6, v14, :cond_12

    sub-int v14, v3, v9

    .line 497
    invoke-direct {v0, v14, v6}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 498
    aget-byte v9, v1, v9

    int-to-float v9, v9

    iput v9, v15, Landroid/graphics/PointF;->x:F

    add-int/lit8 v9, v4, 0x2

    .line 500
    invoke-virtual {v2, v9}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    goto :goto_4

    :cond_12
    if-ne v11, v14, :cond_13

    sub-int v14, v3, v9

    .line 502
    invoke-direct {v0, v14, v11}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 503
    invoke-static {v1, v9}, Lcom/metamoji/cm/BytesUtils;->readSInt16LE([BI)S

    move-result v9

    int-to-float v9, v9

    iput v9, v15, Landroid/graphics/PointF;->x:F

    add-int/lit8 v9, v4, 0x3

    .line 505
    invoke-virtual {v2, v9}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    goto :goto_4

    :cond_13
    if-ne v12, v14, :cond_14

    sub-int v14, v3, v9

    .line 507
    invoke-direct {v0, v14, v13}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 508
    invoke-static {v1, v9}, Lcom/metamoji/cm/BytesUtils;->readSInt32LE([BI)I

    move-result v9

    int-to-float v9, v9

    iput v9, v15, Landroid/graphics/PointF;->x:F

    add-int/lit8 v9, v4, 0x5

    .line 510
    invoke-virtual {v2, v9}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    goto :goto_4

    :cond_14
    if-nez v14, :cond_15

    sub-int v14, v3, v9

    const/16 v13, 0x8

    .line 512
    invoke-direct {v0, v14, v13}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 513
    invoke-static {v1, v9}, Lcom/metamoji/cm/BytesUtils;->readFloat64LE([BI)D

    move-result-wide v13

    double-to-float v9, v13

    iput v9, v15, Landroid/graphics/PointF;->x:F

    add-int/lit8 v9, v4, 0x9

    .line 515
    invoke-virtual {v2, v9}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    :cond_15
    :goto_4
    and-int/lit8 v4, v8, 0x3

    if-ne v6, v4, :cond_17

    sub-int v4, v3, v9

    .line 520
    invoke-direct {v0, v4, v6}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 521
    aget-byte v4, v1, v9

    int-to-float v4, v4

    iput v4, v15, Landroid/graphics/PointF;->y:F

    add-int/lit8 v9, v9, 0x1

    .line 523
    invoke-virtual {v2, v9}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    :cond_16
    :goto_5
    move v4, v9

    goto :goto_6

    :cond_17
    if-ne v11, v4, :cond_18

    sub-int v4, v3, v9

    .line 525
    invoke-direct {v0, v4, v11}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 526
    invoke-static {v1, v9}, Lcom/metamoji/cm/BytesUtils;->readSInt16LE([BI)S

    move-result v4

    int-to-float v4, v4

    iput v4, v15, Landroid/graphics/PointF;->y:F

    add-int/lit8 v9, v9, 0x2

    .line 528
    invoke-virtual {v2, v9}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    goto :goto_5

    :cond_18
    if-ne v12, v4, :cond_19

    sub-int v4, v3, v9

    const/4 v8, 0x4

    .line 530
    invoke-direct {v0, v4, v8}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 531
    invoke-static {v1, v9}, Lcom/metamoji/cm/BytesUtils;->readSInt32LE([BI)I

    move-result v4

    int-to-float v4, v4

    iput v4, v15, Landroid/graphics/PointF;->y:F

    add-int/lit8 v9, v9, 0x4

    .line 533
    invoke-virtual {v2, v9}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    goto :goto_5

    :cond_19
    if-nez v4, :cond_16

    sub-int v4, v3, v9

    const/16 v13, 0x8

    .line 535
    invoke-direct {v0, v4, v13}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 536
    invoke-static {v1, v9}, Lcom/metamoji/cm/BytesUtils;->readFloat64LE([BI)D

    move-result-wide v13

    double-to-float v4, v13

    iput v4, v15, Landroid/graphics/PointF;->y:F

    add-int/lit8 v9, v9, 0x8

    .line 538
    invoke-virtual {v2, v9}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    goto :goto_5

    .line 541
    :goto_6
    invoke-virtual {v7, v15}, Lcom/metamoji/cm/PointArray;->add(Landroid/graphics/PointF;)Z

    add-int/lit8 v10, v10, 0x1

    const/4 v13, 0x4

    const/16 v14, 0x8

    goto/16 :goto_3

    :cond_1a
    return-object v7

    :cond_1b
    const/16 v6, 0x70

    if-ne v6, v5, :cond_1e

    sub-int v5, v3, v7

    const/4 v8, 0x4

    .line 547
    invoke-direct {v0, v5, v8}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 548
    invoke-static {v1, v7}, Lcom/metamoji/cm/BytesUtils;->readUInt32LE([BI)J

    move-result-wide v5

    long-to-int v5, v5

    add-int/lit8 v4, v4, 0x5

    .line 550
    invoke-virtual {v2, v4}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    .line 552
    rem-int/lit8 v6, v5, 0x8

    if-nez v6, :cond_1d

    const/16 v17, 0x8

    .line 555
    div-int/lit8 v5, v5, 0x8

    .line 556
    new-instance v6, Lcom/metamoji/cm/PointArray;

    invoke-direct {v6, v5}, Lcom/metamoji/cm/PointArray;-><init>(I)V

    :goto_7
    if-ge v10, v5, :cond_1c

    sub-int v7, v3, v4

    const/4 v8, 0x4

    .line 559
    invoke-direct {v0, v7, v8}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 560
    invoke-static {v1, v4}, Lcom/metamoji/cm/BytesUtils;->readFloat32LE([BI)F

    move-result v7

    add-int/lit8 v9, v4, 0x4

    sub-int v11, v3, v9

    .line 563
    invoke-direct {v0, v11, v8}, Lcom/metamoji/df/model/PlainValueSerializer;->checkAvailableSize(II)V

    .line 564
    invoke-static {v1, v9}, Lcom/metamoji/cm/BytesUtils;->readFloat32LE([BI)F

    move-result v9

    const/16 v17, 0x8

    add-int/lit8 v4, v4, 0x8

    .line 566
    invoke-virtual {v2, v4}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    .line 568
    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v7, v9}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v6, v11}, Lcom/metamoji/cm/PointArray;->add(Landroid/graphics/PointF;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_1c
    return-object v6

    .line 553
    :cond_1d
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "MD0016"

    const-string v3, "must be divisible"

    invoke-direct {v1, v2, v3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 574
    :cond_1e
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "MD0015"

    const-string v3, "InvalidDataException: unknown type."

    invoke-direct {v1, v2, v3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public writeValue(Ljava/lang/Object;)Lcom/metamoji/df/model/ByteData;
    .locals 1

    .line 98
    new-instance v0, Lcom/metamoji/df/model/ByteData;

    invoke-direct {v0}, Lcom/metamoji/df/model/ByteData;-><init>()V

    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;Lcom/metamoji/df/model/ByteData;)V

    return-object v0
.end method

.method public writeValue(Ljava/lang/Object;Lcom/metamoji/df/model/ByteData;)V
    .locals 7

    const/16 v0, 0x4e

    if-nez p1, :cond_0

    .line 122
    invoke-virtual {p2, v0}, Lcom/metamoji/df/model/ByteData;->appendByte(B)V

    return-void

    .line 124
    :cond_0
    instance-of v1, p1, Ljava/lang/Boolean;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 127
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    int-to-byte p1, p1

    .line 128
    new-array v0, v2, [B

    const/16 v1, 0x42

    aput-byte v1, v0, v4

    aput-byte p1, v0, v3

    invoke-virtual {p2, v0}, Lcom/metamoji/df/model/ByteData;->appendBytes([B)V

    return-void

    .line 130
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    const/4 v5, 0x5

    if-eqz v1, :cond_6

    .line 132
    check-cast p1, Ljava/lang/Number;

    invoke-direct {p0, p1}, Lcom/metamoji/df/model/PlainValueSerializer;->detectNumberType(Ljava/lang/Number;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 136
    new-array v0, v2, [B

    const/16 v1, 0x59

    .line 137
    aput-byte v1, v0, v4

    .line 138
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    aput-byte p1, v0, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v2, :cond_3

    .line 140
    new-array v0, v1, [B

    const/16 v1, 0x57

    .line 141
    aput-byte v1, v0, v4

    .line 142
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-static {v0, v3, p1}, Lcom/metamoji/cm/BytesUtils;->writeSInt16LE([BIS)V

    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_4

    .line 144
    new-array v0, v5, [B

    const/16 v1, 0x44

    .line 145
    aput-byte v1, v0, v4

    .line 146
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {v0, v3, p1}, Lcom/metamoji/cm/BytesUtils;->writeSInt32LE([BII)V

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    const/16 v0, 0x9

    .line 148
    new-array v0, v0, [B

    const/16 v1, 0x46

    .line 149
    aput-byte v1, v0, v4

    .line 150
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v0, v3, v1, v2}, Lcom/metamoji/cm/BytesUtils;->writeFloat64LE([BID)V

    .line 155
    :goto_0
    invoke-virtual {p2, v0}, Lcom/metamoji/df/model/ByteData;->appendBytes([B)V

    return-void

    .line 152
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    .line 157
    :cond_6
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 160
    check-cast p1, Ljava/lang/String;

    const/16 v0, 0x53

    .line 161
    invoke-virtual {p2, v0}, Lcom/metamoji/df/model/ByteData;->appendByte(B)V

    .line 162
    invoke-virtual {p2, p1}, Lcom/metamoji/df/model/ByteData;->appendZeroTerminatedUTF8String(Ljava/lang/String;)V

    return-void

    .line 164
    :cond_7
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_8

    .line 168
    check-cast p1, Ljava/util/List;

    .line 169
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 170
    new-array v1, v5, [B

    const/16 v2, 0x41

    .line 171
    aput-byte v2, v1, v4

    int-to-long v5, v0

    .line 172
    invoke-static {v1, v3, v5, v6}, Lcom/metamoji/cm/BytesUtils;->writeUInt32LE([BIJ)V

    .line 173
    invoke-virtual {p2, v1}, Lcom/metamoji/df/model/ByteData;->appendBytes([B)V

    :goto_1
    if-ge v4, v0, :cond_9

    .line 175
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;Lcom/metamoji/df/model/ByteData;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 178
    :cond_8
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_a

    .line 182
    check-cast p1, Ljava/util/Set;

    .line 183
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    .line 184
    new-array v1, v5, [B

    const/16 v2, 0x54

    .line 185
    aput-byte v2, v1, v4

    int-to-long v4, v0

    .line 186
    invoke-static {v1, v3, v4, v5}, Lcom/metamoji/cm/BytesUtils;->writeUInt32LE([BIJ)V

    .line 187
    invoke-virtual {p2, v1}, Lcom/metamoji/df/model/ByteData;->appendBytes([B)V

    .line 188
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 189
    invoke-virtual {p0, v0, p2}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;Lcom/metamoji/df/model/ByteData;)V

    goto :goto_2

    :cond_9
    return-void

    .line 192
    :cond_a
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_e

    .line 196
    check-cast p1, Ljava/util/Map;

    const/16 v0, 0x4f

    .line 197
    invoke-virtual {p2, v0}, Lcom/metamoji/df/model/ByteData;->appendByte(B)V

    .line 198
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 199
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 200
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const-string v5, "\u001b\u0007"

    if-eqz v3, :cond_b

    move-object v2, v5

    goto :goto_4

    .line 203
    :cond_b
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    :cond_c
    :goto_4
    invoke-virtual {p2, v2}, Lcom/metamoji/df/model/ByteData;->appendZeroTerminatedUTF8String(Ljava/lang/String;)V

    .line 208
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;Lcom/metamoji/df/model/ByteData;)V

    goto :goto_3

    .line 210
    :cond_d
    invoke-virtual {p2, v4}, Lcom/metamoji/df/model/ByteData;->appendByte(B)V

    return-void

    .line 212
    :cond_e
    instance-of v1, p1, Lcom/metamoji/cm/Blob;

    if-eqz v1, :cond_10

    .line 215
    check-cast p1, Lcom/metamoji/cm/Blob;

    const/16 v0, 0x4c

    .line 216
    invoke-virtual {p2, v0}, Lcom/metamoji/df/model/ByteData;->appendByte(B)V

    .line 219
    invoke-virtual {p1}, Lcom/metamoji/cm/Blob;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    .line 221
    const-string v0, ""

    .line 223
    :cond_f
    invoke-virtual {p2, v0}, Lcom/metamoji/df/model/ByteData;->appendZeroTerminatedUTF8String(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p1

    .line 226
    array-length v0, p1

    const/4 v1, 0x4

    .line 227
    new-array v1, v1, [B

    int-to-long v2, v0

    .line 228
    invoke-static {v1, v4, v2, v3}, Lcom/metamoji/cm/BytesUtils;->writeUInt32LE([BIJ)V

    .line 229
    invoke-virtual {p2, v1}, Lcom/metamoji/df/model/ByteData;->appendBytes([B)V

    .line 230
    invoke-virtual {p2, p1}, Lcom/metamoji/df/model/ByteData;->appendBytes([B)V

    return-void

    .line 232
    :cond_10
    instance-of v1, p1, Lcom/metamoji/df/model/IModel;

    if-eqz v1, :cond_11

    .line 235
    check-cast p1, Lcom/metamoji/df/model/IModel;

    .line 236
    new-array v0, v5, [B

    const/16 v1, 0x4d

    .line 237
    aput-byte v1, v0, v4

    .line 238
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v0, v3, v1, v2}, Lcom/metamoji/cm/BytesUtils;->writeUInt32LE([BIJ)V

    .line 239
    invoke-virtual {p2, v0}, Lcom/metamoji/df/model/ByteData;->appendBytes([B)V

    return-void

    .line 241
    :cond_11
    instance-of v1, p1, Lcom/metamoji/cm/PointArray;

    if-eqz v1, :cond_13

    .line 244
    check-cast p1, Lcom/metamoji/cm/PointArray;

    const/16 v0, 0x70

    .line 245
    invoke-virtual {p2, v0}, Lcom/metamoji/df/model/ByteData;->appendByte(B)V

    .line 247
    invoke-virtual {p1}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v2, v1, 0x4

    .line 249
    new-array v2, v2, [B

    int-to-long v5, v1

    .line 250
    invoke-static {v2, v4, v5, v6}, Lcom/metamoji/cm/BytesUtils;->writeUInt32LE([BIJ)V

    :goto_5
    if-ge v4, v0, :cond_12

    .line 252
    invoke-virtual {p1, v4}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object v1

    mul-int/lit8 v3, v4, 0x8

    add-int/lit8 v5, v3, 0x4

    .line 253
    iget v6, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v5, v6}, Lcom/metamoji/cm/BytesUtils;->writeFloat32LE([BIF)V

    add-int/lit8 v3, v3, 0x8

    .line 254
    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v3, v1}, Lcom/metamoji/cm/BytesUtils;->writeFloat32LE([BIF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 256
    :cond_12
    invoke-virtual {p2, v2}, Lcom/metamoji/df/model/ByteData;->appendBytes([B)V

    return-void

    .line 313
    :cond_13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 301
    const-string v1, "\n================= WARNING ================\n//////////////////////////////////////////\n//////////////////////////////////////////\n\nvalue %s cannot be written.\n\n   PLEASE MAIL TO HAYABUSA GROUP NOW !!\n\n//////////////////////////////////////////\n//////////////////////////////////////////\n=========================================="

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    invoke-virtual {p2, v0}, Lcom/metamoji/df/model/ByteData;->appendByte(B)V

    return-void
.end method
