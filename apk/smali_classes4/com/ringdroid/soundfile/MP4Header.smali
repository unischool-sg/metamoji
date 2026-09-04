.class public Lcom/ringdroid/soundfile/MP4Header;
.super Ljava/lang/Object;
.source "MP4Header.java"


# instance fields
.field private mBitrate:I

.field private mChannels:I

.field private mDurationMS:[B

.field private mFrameSize:[I

.field private mHeader:[B

.field private mMaxFrameSize:I

.field private mNumSamples:[B

.field private mSampleRate:I

.field private mTime:[B

.field private mTotSize:I


# direct methods
.method public constructor <init>(II[II)V
    .locals 8

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_4

    .line 211
    array-length v0, p3

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    const/4 v0, 0x0

    aget v2, p3, v0

    if-eq v2, v1, :cond_0

    goto/16 :goto_1

    .line 215
    :cond_0
    iput p1, p0, Lcom/ringdroid/soundfile/MP4Header;->mSampleRate:I

    .line 216
    iput p2, p0, Lcom/ringdroid/soundfile/MP4Header;->mChannels:I

    .line 217
    iput-object p3, p0, Lcom/ringdroid/soundfile/MP4Header;->mFrameSize:[I

    .line 218
    iput p4, p0, Lcom/ringdroid/soundfile/MP4Header;->mBitrate:I

    .line 219
    iput v2, p0, Lcom/ringdroid/soundfile/MP4Header;->mMaxFrameSize:I

    .line 220
    iput v2, p0, Lcom/ringdroid/soundfile/MP4Header;->mTotSize:I

    const/4 p1, 0x1

    move p2, p1

    .line 221
    :goto_0
    iget-object p4, p0, Lcom/ringdroid/soundfile/MP4Header;->mFrameSize:[I

    array-length v2, p4

    if-ge p2, v2, :cond_2

    .line 222
    iget v2, p0, Lcom/ringdroid/soundfile/MP4Header;->mMaxFrameSize:I

    aget p4, p4, p2

    if-ge v2, p4, :cond_1

    .line 223
    iput p4, p0, Lcom/ringdroid/soundfile/MP4Header;->mMaxFrameSize:I

    .line 225
    :cond_1
    iget v2, p0, Lcom/ringdroid/soundfile/MP4Header;->mTotSize:I

    add-int/2addr v2, p4

    iput v2, p0, Lcom/ringdroid/soundfile/MP4Header;->mTotSize:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 227
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/32 v4, 0x7c245f00

    add-long/2addr v2, v4

    const/4 p2, 0x4

    .line 229
    new-array p4, p2, [B

    iput-object p4, p0, Lcom/ringdroid/soundfile/MP4Header;->mTime:[B

    const/16 v4, 0x18

    shr-long v4, v2, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 230
    aput-byte v4, p4, v0

    const/16 v4, 0x10

    shr-long v4, v2, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 231
    aput-byte v4, p4, p1

    const/16 v4, 0x8

    shr-long v4, v2, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 232
    aput-byte v4, p4, v1

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x3

    .line 233
    aput-byte v2, p4, v3

    .line 234
    array-length p3, p3

    sub-int/2addr p3, p1

    mul-int/lit16 p4, p3, 0x400

    const v2, 0xfa000

    mul-int/2addr p3, v2

    .line 235
    iget v2, p0, Lcom/ringdroid/soundfile/MP4Header;->mSampleRate:I

    div-int v4, p3, v2

    .line 236
    rem-int/2addr p3, v2

    if-lez p3, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    shr-int/lit8 p3, p4, 0x1a

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    shr-int/lit8 v2, p4, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    shr-int/lit8 v5, p4, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    .line 239
    new-array v6, p2, [B

    aput-byte p3, v6, v0

    aput-byte v2, v6, p1

    aput-byte v5, v6, v1

    aput-byte p4, v6, v3

    iput-object v6, p0, Lcom/ringdroid/soundfile/MP4Header;->mNumSamples:[B

    shr-int/lit8 p3, v4, 0x1a

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    shr-int/lit8 p4, v4, 0x10

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    shr-int/lit8 v2, v4, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 245
    new-array p2, p2, [B

    aput-byte p3, p2, v0

    aput-byte p4, p2, p1

    aput-byte v2, p2, v1

    aput-byte v4, p2, v3

    iput-object p2, p0, Lcom/ringdroid/soundfile/MP4Header;->mDurationMS:[B

    .line 251
    invoke-direct {p0}, Lcom/ringdroid/soundfile/MP4Header;->setHeader()V

    :cond_4
    :goto_1
    return-void
.end method

.method private getDINFAtom()Lcom/ringdroid/soundfile/Atom;
    .locals 2

    .line 457
    new-instance v0, Lcom/ringdroid/soundfile/Atom;

    const-string v1, "dinf"

    invoke-direct {v0, v1}, Lcom/ringdroid/soundfile/Atom;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-direct {p0}, Lcom/ringdroid/soundfile/MP4Header;->getDREFAtom()Lcom/ringdroid/soundfile/Atom;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ringdroid/soundfile/Atom;->addChild(Lcom/ringdroid/soundfile/Atom;)Z

    return-object v0
.end method

.method private getDREFAtom()Lcom/ringdroid/soundfile/Atom;
    .locals 7

    .line 463
    new-instance v0, Lcom/ringdroid/soundfile/Atom;

    const-string v1, "dref"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ringdroid/soundfile/Atom;-><init>(Ljava/lang/String;BI)V

    .line 464
    invoke-direct {p0}, Lcom/ringdroid/soundfile/MP4Header;->getURLAtom()Lcom/ringdroid/soundfile/Atom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ringdroid/soundfile/Atom;->getBytes()[B

    move-result-object v1

    .line 465
    array-length v3, v1

    const/4 v4, 0x4

    add-int/2addr v3, v4

    new-array v3, v3, [B

    const/4 v5, 0x3

    const/4 v6, 0x1

    .line 466
    aput-byte v6, v3, v5

    .line 467
    array-length v5, v1

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 468
    invoke-virtual {v0, v3}, Lcom/ringdroid/soundfile/Atom;->setData([B)Z

    return-object v0
.end method

.method private getESDSAtom()Lcom/ringdroid/soundfile/Atom;
    .locals 3

    .line 520
    new-instance v0, Lcom/ringdroid/soundfile/Atom;

    const-string v1, "esds"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ringdroid/soundfile/Atom;-><init>(Ljava/lang/String;BI)V

    .line 521
    invoke-direct {p0}, Lcom/ringdroid/soundfile/MP4Header;->getESDescriptor()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ringdroid/soundfile/Atom;->setData([B)Z

    return-object v0
.end method

.method private getESDescriptor()[B
    .locals 19

    move-object/from16 v0, p0

    const/16 v1, 0xd

    .line 529
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x5

    .line 532
    new-array v4, v3, [B

    fill-array-data v4, :array_1

    const/4 v5, 0x4

    .line 534
    new-array v6, v5, [B

    fill-array-data v6, :array_2

    .line 537
    new-array v7, v5, [B

    const/4 v8, 0x0

    aput-byte v3, v7, v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    aput-byte v10, v7, v9

    const/16 v11, 0x10

    aput-byte v11, v7, v10

    const/4 v11, 0x3

    aput-byte v8, v7, v11

    .line 538
    new-array v12, v11, [B

    fill-array-data v12, :array_3

    const/16 v13, 0x300

    .line 541
    :goto_0
    iget v14, v0, Lcom/ringdroid/soundfile/MP4Header;->mMaxFrameSize:I

    mul-int/2addr v14, v10

    if-ge v13, v14, :cond_0

    add-int/lit16 v13, v13, 0x100

    goto :goto_0

    .line 548
    :cond_0
    aget-byte v14, v6, v9

    add-int/lit8 v15, v14, 0x2

    move/from16 v16, v9

    new-array v9, v15, [B

    .line 549
    invoke-static {v6, v8, v9, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shr-int/lit8 v6, v13, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 551
    aput-byte v6, v9, v5

    shr-int/lit8 v6, v13, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 552
    aput-byte v6, v9, v3

    and-int/lit16 v6, v13, 0xff

    int-to-byte v6, v6

    const/4 v13, 0x6

    .line 553
    aput-byte v6, v9, v13

    .line 554
    iget v6, v0, Lcom/ringdroid/soundfile/MP4Header;->mBitrate:I

    shr-int/lit8 v13, v6, 0x18

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    const/16 v17, 0x7

    aput-byte v13, v9, v17

    shr-int/lit8 v13, v6, 0x10

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    const/16 v18, 0x8

    .line 555
    aput-byte v13, v9, v18

    shr-int/lit8 v13, v6, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    const/16 v18, 0x9

    .line 556
    aput-byte v13, v9, v18

    and-int/lit16 v13, v6, 0xff

    int-to-byte v13, v13

    const/16 v18, 0xa

    .line 557
    aput-byte v13, v9, v18

    shr-int/lit8 v13, v6, 0x18

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    const/16 v18, 0xb

    .line 558
    aput-byte v13, v9, v18

    shr-int/lit8 v13, v6, 0x10

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    const/16 v18, 0xc

    .line 559
    aput-byte v13, v9, v18

    shr-int/lit8 v13, v6, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    .line 560
    aput-byte v13, v9, v1

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    const/16 v13, 0xe

    .line 561
    aput-byte v6, v9, v13

    move v6, v8

    :goto_1
    if-ge v6, v1, :cond_2

    .line 564
    aget v13, v2, v6

    move/from16 v18, v10

    iget v10, v0, Lcom/ringdroid/soundfile/MP4Header;->mSampleRate:I

    if-ne v13, v10, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    move/from16 v10, v18

    goto :goto_1

    :cond_2
    move/from16 v18, v10

    :goto_2
    if-ne v6, v1, :cond_3

    move v6, v5

    .line 573
    :cond_3
    aget-byte v1, v7, v18

    shr-int/lit8 v2, v6, 0x1

    and-int/lit8 v2, v2, 0x7

    int-to-byte v2, v2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v7, v18

    .line 574
    aget-byte v1, v7, v11

    and-int/lit8 v2, v6, 0x1

    shl-int/lit8 v2, v2, 0x7

    iget v6, v0, Lcom/ringdroid/soundfile/MP4Header;->mChannels:I

    const/16 v10, 0xf

    and-int/2addr v6, v10

    shl-int/2addr v6, v11

    or-int/2addr v2, v6

    int-to-byte v2, v2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v7, v11

    .line 575
    invoke-static {v7, v8, v9, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 579
    aget-byte v1, v4, v16

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 580
    invoke-static {v4, v8, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 582
    invoke-static {v9, v8, v1, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v14, 0x7

    .line 584
    invoke-static {v12, v8, v1, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    :array_1
    .array-data 1
        0x3t
        0x19t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x4t
        0x11t
        0x40t
        0x15t
    .end array-data

    :array_3
    .array-data 1
        0x6t
        0x1t
        0x2t
    .end array-data
.end method

.method private getFTYPAtom()Lcom/ringdroid/soundfile/Atom;
    .locals 2

    .line 328
    new-instance v0, Lcom/ringdroid/soundfile/Atom;

    const-string v1, "ftyp"

    invoke-direct {v0, v1}, Lcom/ringdroid/soundfile/Atom;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x14

    .line 329
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/ringdroid/soundfile/Atom;->setData([B)Z

    return-object v0

    :array_0
    .array-data 1
        0x4dt
        0x34t
        0x41t
        0x20t
        0x0t
        0x0t
        0x0t
        0x0t
        0x4dt
        0x34t
        0x41t
        0x20t
        0x6dt
        0x70t
        0x34t
        0x32t
        0x69t
        0x73t
        0x6ft
        0x6dt
    .end array-data
.end method

.method private getHDLRAtom()Lcom/ringdroid/soundfile/Atom;
    .locals 3

    .line 425
    new-instance v0, Lcom/ringdroid/soundfile/Atom;

    const-string v1, "hdlr"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ringdroid/soundfile/Atom;-><init>(Ljava/lang/String;BI)V

    const/16 v1, 0x20

    .line 426
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/ringdroid/soundfile/Atom;->setData([B)Z

    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x73t
        0x6ft
        0x75t
        0x6et
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x53t
        0x6ft
        0x75t
        0x6et
        0x64t
        0x48t
        0x61t
        0x6et
        0x64t
        0x6ct
        0x65t
        0x0t
    .end array-data
.end method

.method private getMDHDAtom()Lcom/ringdroid/soundfile/Atom;
    .locals 19

    move-object/from16 v0, p0

    .line 411
    new-instance v1, Lcom/ringdroid/soundfile/Atom;

    const-string v2, "mdhd"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/ringdroid/soundfile/Atom;-><init>(Ljava/lang/String;BI)V

    .line 412
    iget-object v2, v0, Lcom/ringdroid/soundfile/MP4Header;->mTime:[B

    aget-byte v4, v2, v3

    const/4 v5, 0x1

    aget-byte v6, v2, v5

    const/4 v7, 0x2

    aget-byte v8, v2, v7

    const/4 v9, 0x3

    aget-byte v2, v2, v9

    iget v10, v0, Lcom/ringdroid/soundfile/MP4Header;->mSampleRate:I

    shr-int/lit8 v11, v10, 0x18

    int-to-byte v11, v11

    shr-int/lit8 v12, v10, 0x10

    int-to-byte v12, v12

    shr-int/lit8 v13, v10, 0x8

    int-to-byte v13, v13

    int-to-byte v10, v10

    iget-object v14, v0, Lcom/ringdroid/soundfile/MP4Header;->mNumSamples:[B

    aget-byte v15, v14, v3

    aget-byte v16, v14, v5

    aget-byte v17, v14, v7

    aget-byte v14, v14, v9

    move/from16 v18, v3

    const/16 v3, 0x14

    new-array v3, v3, [B

    aput-byte v4, v3, v18

    aput-byte v6, v3, v5

    aput-byte v8, v3, v7

    aput-byte v2, v3, v9

    const/4 v5, 0x4

    aput-byte v4, v3, v5

    const/4 v4, 0x5

    aput-byte v6, v3, v4

    const/4 v4, 0x6

    aput-byte v8, v3, v4

    const/4 v4, 0x7

    aput-byte v2, v3, v4

    const/16 v2, 0x8

    aput-byte v11, v3, v2

    const/16 v2, 0x9

    aput-byte v12, v3, v2

    const/16 v2, 0xa

    aput-byte v13, v3, v2

    const/16 v2, 0xb

    aput-byte v10, v3, v2

    const/16 v2, 0xc

    aput-byte v15, v3, v2

    const/16 v2, 0xd

    aput-byte v16, v3, v2

    const/16 v2, 0xe

    aput-byte v17, v3, v2

    const/16 v2, 0xf

    aput-byte v14, v3, v2

    const/16 v2, 0x10

    aput-byte v18, v3, v2

    const/16 v2, 0x11

    aput-byte v18, v3, v2

    const/16 v2, 0x12

    aput-byte v18, v3, v2

    const/16 v2, 0x13

    aput-byte v18, v3, v2

    invoke-virtual {v1, v3}, Lcom/ringdroid/soundfile/Atom;->setData([B)Z

    return-object v1
.end method

.method private getMDIAAtom()Lcom/ringdroid/soundfile/Atom;
    .locals 2

    .line 403
    new-instance v0, Lcom/ringdroid/soundfile/Atom;

    const-string v1, "mdia"

    invoke-direct {v0, v1}, Lcom/ringdroid/soundfile/Atom;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-direct {p0}, Lcom/ringdroid/soundfile/MP4Header;->getMDHDAtom()Lcom/ringdroid/soundfile/Atom;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ringdroid/soundfile/Atom;->addChild(Lcom/ringdroid/soundfile/Atom;)Z

    .line 405
    invoke-direct {p0}, Lcom/ringdroid/soundfile/MP4Header;->getHDLRAtom()Lcom/ringdroid/soundfile/Atom;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ringdroid/soundfile/Atom;->addChild(Lcom/ringdroid/soundfile/Atom;)Z

    .line 406
    invoke-direct {p0}, Lcom/ringdroid/soundfile/MP4Header;->getMINFAtom()Lcom/ringdroid/soundfile/Atom;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ringdroid/soundfile/Atom;->addChild(Lcom/ringdroid/soundfile/Atom;)Z

    return-object v0
.end method

.method private getMINFAtom()Lcom/ringdroid/soundfile/Atom;
    .locals 2

    .line 440
    new-instance v0, Lcom/ringdroid/soundfile/Atom;

    const-string v1, "minf"

    invoke-direct {v0, v1}, Lcom/ringdroid/soundfile/Atom;-><init>(Ljava/lang/String;)V

    .line 441
    invoke-direct {p0}, Lcom/ringdroid/soundfile/MP4Header;->getSMHDAtom()Lcom/ringdroid/soundfile/Atom;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ringdroid/soundfile/Atom;->addChild(Lcom/ringdroid/soundfile/Atom;)Z

    .line 442
    invoke-direct {p0}, Lcom/ringdroid/soundfile/MP4Header;->getDINFAtom()Lcom/ringdroid/soundfile/Atom;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ringdroid/soundfile/Atom;->addChild(Lcom/ringdroid/soundfile/Atom;)Z

    .line 443
    invoke-direct {p0}, Lcom/ringdroid/soundfile/MP4Header;->getSTBLAtom()Lcom/ringdroid/soundfile/Atom;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ringdroid/soundfile/Atom;->addChild(Lcom/ringdroid/soundfile/Atom;)Z

    return-object v0
.end method

.method private getMOOVAtom()Lcom/ringdroid/soundfile/Atom;
    .locals 2

    .line 340
    new-instance v0, Lcom/ringdroid/soundfile/Atom;

    const-string v1, "moov"

    invoke-direct {v0, v1}, Lcom/ringdroid/soundfile/Atom;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Lcom/ringdroid/soundfile/MP4Header;->getMVHDAtom()Lcom/ringdroid/soundfile/Atom;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ringdroid/soundfile/Atom;->addChild(Lcom/ringdroid/soundfile/Atom;)Z

    .line 342
    invoke-direct {p0}, Lcom/ringdroid/soundfile/MP4Header;->getTRAKAtom()Lcom/ringdroid/soundfile/Atom;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ringdroid/soundfile/Atom;->addChild(Lcom/ringdroid/soundfile/Atom;)Z

    return-object v0
.end method

.method private getMP4AAtom()Lcom/ringdroid/soundfile/Atom;
    .locals 10

    .line 499
    new-instance v0, Lcom/ringdroid/soundfile/Atom;

    const-string v1, "mp4a"

    invoke-direct {v0, v1}, Lcom/ringdroid/soundfile/Atom;-><init>(Ljava/lang/String;)V

    .line 500
    iget v1, p0, Lcom/ringdroid/soundfile/MP4Header;->mChannels:I

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    int-to-byte v1, v1

    iget v3, p0, Lcom/ringdroid/soundfile/MP4Header;->mSampleRate:I

    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    int-to-byte v3, v3

    const/16 v5, 0x1c

    new-array v6, v5, [B

    const/4 v7, 0x0

    aput-byte v7, v6, v7

    const/4 v8, 0x1

    aput-byte v7, v6, v8

    const/4 v9, 0x2

    aput-byte v7, v6, v9

    const/4 v9, 0x3

    aput-byte v7, v6, v9

    const/4 v9, 0x4

    aput-byte v7, v6, v9

    const/4 v9, 0x5

    aput-byte v7, v6, v9

    const/4 v9, 0x6

    aput-byte v7, v6, v9

    const/4 v9, 0x7

    aput-byte v8, v6, v9

    const/16 v8, 0x8

    aput-byte v7, v6, v8

    const/16 v8, 0x9

    aput-byte v7, v6, v8

    const/16 v8, 0xa

    aput-byte v7, v6, v8

    const/16 v8, 0xb

    aput-byte v7, v6, v8

    const/16 v8, 0xc

    aput-byte v7, v6, v8

    const/16 v8, 0xd

    aput-byte v7, v6, v8

    const/16 v8, 0xe

    aput-byte v7, v6, v8

    const/16 v8, 0xf

    aput-byte v7, v6, v8

    const/16 v8, 0x10

    aput-byte v2, v6, v8

    const/16 v2, 0x11

    aput-byte v1, v6, v2

    const/16 v1, 0x12

    aput-byte v7, v6, v1

    const/16 v1, 0x13

    aput-byte v8, v6, v1

    const/16 v1, 0x14

    aput-byte v7, v6, v1

    const/16 v1, 0x15

    aput-byte v7, v6, v1

    const/16 v1, 0x16

    aput-byte v7, v6, v1

    const/16 v1, 0x17

    aput-byte v7, v6, v1

    const/16 v1, 0x18

    aput-byte v4, v6, v1

    const/16 v1, 0x19

    aput-byte v3, v6, v1

    const/16 v1, 0x1a

    aput-byte v7, v6, v1

    const/16 v1, 0x1b

    aput-byte v7, v6, v1

    .line 511
    invoke-direct {p0}, Lcom/ringdroid/soundfile/MP4Header;->getESDSAtom()Lcom/ringdroid/soundfile/Atom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ringdroid/soundfile/Atom;->getBytes()[B

    move-result-object v1

    .line 512
    array-length v2, v1

    add-int/2addr v2, v5

    new-array v2, v2, [B

    .line 513
    invoke-static {v6, v7, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    array-length v3, v1

    invoke-static {v1, v7, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 515
    invoke-virtual {v0, v2}, Lcom/ringdroid/soundfile/Atom;->setData([B)Z

    return-object v0
.end method

.method public static getMP4Header(II[II)[B
    .locals 1

    .line 260
    new-instance v0, Lcom/ringdroid/soundfile/MP4Header;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ringdroid/soundfile/MP4Header;-><init>(II[II)V

    iget-object p0, v0, Lcom/ringdroid/soundfile/MP4Header;->mHeader:[B

    return-object p0
.end method

.method private getMVHDAtom()Lcom/ringdroid/soundfile/Atom;
    .locals 15

    .line 347
    new-instance v0, Lcom/ringdroid/soundfile/Atom;

    const-string v1, "mvhd"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ringdroid/soundfile/Atom;-><init>(Ljava/lang/String;BI)V

    .line 348
    iget-object v1, p0, Lcom/ringdroid/soundfile/MP4Header;->mTime:[B

    aget-byte v3, v1, v2

    const/4 v4, 0x1

    aget-byte v5, v1, v4

    const/4 v6, 0x2

    aget-byte v7, v1, v6

    const/4 v8, 0x3

    aget-byte v1, v1, v8

    iget-object v9, p0, Lcom/ringdroid/soundfile/MP4Header;->mDurationMS:[B

    aget-byte v10, v9, v2

    aget-byte v11, v9, v4

    aget-byte v12, v9, v6

    aget-byte v9, v9, v8

    const/16 v13, 0x60

    new-array v13, v13, [B

    aput-byte v3, v13, v2

    aput-byte v5, v13, v4

    aput-byte v7, v13, v6

    aput-byte v1, v13, v8

    const/4 v14, 0x4

    aput-byte v3, v13, v14

    const/4 v3, 0x5

    aput-byte v5, v13, v3

    const/4 v3, 0x6

    aput-byte v7, v13, v3

    const/4 v3, 0x7

    aput-byte v1, v13, v3

    const/16 v1, 0x8

    aput-byte v2, v13, v1

    const/16 v1, 0x9

    aput-byte v2, v13, v1

    const/16 v1, 0xa

    aput-byte v8, v13, v1

    const/16 v1, -0x18

    const/16 v3, 0xb

    aput-byte v1, v13, v3

    const/16 v1, 0xc

    aput-byte v10, v13, v1

    const/16 v1, 0xd

    aput-byte v11, v13, v1

    const/16 v1, 0xe

    aput-byte v12, v13, v1

    const/16 v1, 0xf

    aput-byte v9, v13, v1

    const/16 v1, 0x10

    aput-byte v2, v13, v1

    const/16 v1, 0x11

    aput-byte v4, v13, v1

    const/16 v1, 0x12

    aput-byte v2, v13, v1

    const/16 v1, 0x13

    aput-byte v2, v13, v1

    const/16 v1, 0x14

    aput-byte v4, v13, v1

    const/16 v1, 0x15

    aput-byte v2, v13, v1

    const/16 v1, 0x16

    aput-byte v2, v13, v1

    const/16 v1, 0x17

    aput-byte v2, v13, v1

    const/16 v1, 0x18

    aput-byte v2, v13, v1

    const/16 v1, 0x19

    aput-byte v2, v13, v1

    const/16 v1, 0x1a

    aput-byte v2, v13, v1

    const/16 v1, 0x1b

    aput-byte v2, v13, v1

    const/16 v1, 0x1c

    aput-byte v2, v13, v1

    const/16 v1, 0x1d

    aput-byte v2, v13, v1

    const/16 v1, 0x1e

    aput-byte v2, v13, v1

    const/16 v1, 0x1f

    aput-byte v2, v13, v1

    const/16 v1, 0x20

    aput-byte v2, v13, v1

    const/16 v1, 0x21

    aput-byte v4, v13, v1

    const/16 v1, 0x22

    aput-byte v2, v13, v1

    const/16 v1, 0x23

    aput-byte v2, v13, v1

    const/16 v1, 0x24

    aput-byte v2, v13, v1

    const/16 v1, 0x25

    aput-byte v2, v13, v1

    const/16 v1, 0x26

    aput-byte v2, v13, v1

    const/16 v1, 0x27

    aput-byte v2, v13, v1

    const/16 v1, 0x28

    aput-byte v2, v13, v1

    const/16 v1, 0x29

    aput-byte v2, v13, v1

    const/16 v1, 0x2a

    aput-byte v2, v13, v1

    const/16 v1, 0x2b

    aput-byte v2, v13, v1

    const/16 v1, 0x2c

    aput-byte v2, v13, v1

    const/16 v1, 0x2d

    aput-byte v2, v13, v1

    const/16 v1, 0x2e

    aput-byte v2, v13, v1

    const/16 v1, 0x2f

    aput-byte v2, v13, v1

    const/16 v1, 0x30

    aput-byte v2, v13, v1

    const/16 v1, 0x31

    aput-byte v4, v13, v1

    const/16 v1, 0x32

    aput-byte v2, v13, v1

    const/16 v1, 0x33

    aput-byte v2, v13, v1

    const/16 v1, 0x34

    aput-byte v2, v13, v1

    const/16 v1, 0x35

    aput-byte v2, v13, v1

    const/16 v1, 0x36

    aput-byte v2, v13, v1

    const/16 v1, 0x37

    aput-byte v2, v13, v1

    const/16 v1, 0x38

    aput-byte v2, v13, v1

    const/16 v1, 0x39

    aput-byte v2, v13, v1

    const/16 v1, 0x3a

    aput-byte v2, v13, v1

    const/16 v1, 0x3b

    aput-byte v2, v13, v1

    const/16 v1, 0x3c

    aput-byte v2, v13, v1

    const/16 v1, 0x3d

    aput-byte v2, v13, v1

    const/16 v1, 0x3e

    aput-byte v2, v13, v1

    const/16 v1, 0x3f

    aput-byte v2, v13, v1

    const/16 v1, 0x40

    aput-byte v1, v13, v1

    const/16 v1, 0x41

    aput-byte v2, v13, v1

    const/16 v1, 0x42

    aput-byte v2, v13, v1

    const/16 v1, 0x43

    aput-byte v2, v13, v1

    const/16 v1, 0x44

    aput-byte v2, v13, v1

    const/16 v1, 0x45

    aput-byte v2, v13, v1

    const/16 v1, 0x46

    aput-byte v2, v13, v1

    const/16 v1, 0x47

    aput-byte v2, v13, v1

    const/16 v1, 0x48

    aput-byte v2, v13, v1

    const/16 v1, 0x49

    aput-byte v2, v13, v1

    const/16 v1, 0x4a

    aput-byte v2, v13, v1

    const/16 v1, 0x4b

    aput-byte v2, v13, v1

    const/16 v1, 0x4c

    aput-byte v2, v13, v1

    const/16 v1, 0x4d

    aput-byte v2, v13, v1

    const/16 v1, 0x4e

    aput-byte v2, v13, v1

    const/16 v1, 0x4f

    aput-byte v2, v13, v1

    const/16 v1, 0x50

    aput-byte v2, v13, v1

    const/16 v1, 0x51

    aput-byte v2, v13, v1

    const/16 v1, 0x52

    aput-byte v2, v13, v1

    const/16 v1, 0x53

    aput-byte v2, v13, v1

    const/16 v1, 0x54

    aput-byte v2, v13, v1

    const/16 v1, 0x55

    aput-byte v2, v13, v1

    const/16 v1, 0x56

    aput-byte v2, v13, v1

    const/16 v1, 0x57

    aput-byte v2, v13, v1

    const/16 v1, 0x58

    aput-byte v2, v13, v1

    const/16 v1, 0x59

    aput-byte v2, v13, v1

    const/16 v1, 0x5a

    aput-byte v2, v13, v1

    const/16 v1, 0x5b

    aput-byte v2, v13, v1

    const/16 v1, 0x5c

    aput-byte v2, v13, v1

    const/16 v1, 0x5d

    aput-byte v2, v13, v1

    const/16 v1, 0x5e

    aput-byte v2, v13, v1

    const/16 v1, 0x5f

    aput-byte v6, v13, v1

    invoke-virtual {v0, v13}, Lcom/ringdroid/soundfile/Atom;->setData([B)Z

    return-object v0
.end method

.method private getSMHDAtom()Lcom/ringdroid/soundfile/Atom;
    .locals 3

    .line 448
    new-instance v0, Lcom/ringdroid/soundfile/Atom;

    const-string v1, "smhd"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ringdroid/soundfile/Atom;-><init>(Ljava/lang/String;BI)V

    const/4 v1, 0x4

    .line 449
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/ringdroid/soundfile/Atom;->setData([B)Z

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private getSTBLAtom()Lcom/ringdroid/soundfile/Atom;
    .locals 2

    .line 478
    new-instance v0, Lcom/ringdroid/soundfile/Atom;

    const-string v1, "stbl"

    invoke-direct {v0, v1}, Lcom/ringdroid/soundfile/Atom;-><init>(Ljava/lang/String;)V

    .line 479
    invoke-direct {p0}, Lcom/ringdroid/soundfile/MP4Header;->getSTSDAtom()Lcom/ringdroid/soundfile/Atom;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ringdroid/soundfile/Atom;->addChild(Lcom/ringdroid/soundfile/Atom;)Z

    .line 480
    invoke-direct {p0}, Lcom/ringdroid/soundfile/MP4Header;->getSTTSAtom()Lcom/ringdroid/soundfile/Atom;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ringdroid/soundfile/Atom;->addChild(Lcom/ringdroid/soundfile/Atom;)Z

    .line 481
    invoke-direct {p0}, Lcom/ringdroid/soundfile/MP4Header;->getSTSCAtom()Lcom/ringdroid/soundfile/Atom;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ringdroid/soundfile/Atom;->addChild(Lcom/ringdroid/soundfile/Atom;)Z

    .line 482
    invoke-direct {p0}, Lcom/ringdroid/soundfile/MP4Header;->getSTSZAtom()Lcom/ringdroid/soundfile/Atom;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ringdroid/soundfile/Atom;->addChild(Lcom/ringdroid/soundfile/Atom;)Z

    .line 483
    invoke-direct {p0}, Lcom/ringdroid/soundfile/MP4Header;->getSTCOAtom()Lcom/ringdroid/soundfile/Atom;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ringdroid/soundfile/Atom;->addChild(Lcom/ringdroid/soundfile/Atom;)Z

    return-object v0
.end method

.method private getSTCOAtom()Lcom/ringdroid/soundfile/Atom;
    .locals 3

    .line 639
    new-instance v0, Lcom/ringdroid/soundfile/Atom;

    const-string v1, "stco"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ringdroid/soundfile/Atom;-><init>(Ljava/lang/String;BI)V

    const/16 v1, 0x8

    .line 640
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/ringdroid/soundfile/Atom;->setData([B)Z

    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private getSTSCAtom()Lcom/ringdroid/soundfile/Atom;
    .locals 9

    .line 603
    new-instance v0, Lcom/ringdroid/soundfile/Atom;

    const-string v1, "stsc"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ringdroid/soundfile/Atom;-><init>(Ljava/lang/String;BI)V

    .line 604
    iget-object v1, p0, Lcom/ringdroid/soundfile/MP4Header;->mFrameSize:[I

    array-length v1, v1

    shr-int/lit8 v3, v1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v6, 0x10

    .line 605
    new-array v6, v6, [B

    aput-byte v2, v6, v2

    const/4 v7, 0x1

    aput-byte v2, v6, v7

    const/4 v8, 0x2

    aput-byte v2, v6, v8

    const/4 v8, 0x3

    aput-byte v7, v6, v8

    const/4 v8, 0x4

    aput-byte v2, v6, v8

    const/4 v8, 0x5

    aput-byte v2, v6, v8

    const/4 v8, 0x6

    aput-byte v2, v6, v8

    const/4 v8, 0x7

    aput-byte v7, v6, v8

    const/16 v8, 0x8

    aput-byte v3, v6, v8

    const/16 v3, 0x9

    aput-byte v4, v6, v3

    const/16 v3, 0xa

    aput-byte v5, v6, v3

    const/16 v3, 0xb

    aput-byte v1, v6, v3

    const/16 v1, 0xc

    aput-byte v2, v6, v1

    const/16 v1, 0xd

    aput-byte v2, v6, v1

    const/16 v1, 0xe

    aput-byte v2, v6, v1

    const/16 v1, 0xf

    aput-byte v7, v6, v1

    invoke-virtual {v0, v6}, Lcom/ringdroid/soundfile/Atom;->setData([B)Z

    return-object v0
.end method

.method private getSTSDAtom()Lcom/ringdroid/soundfile/Atom;
    .locals 7

    .line 488
    new-instance v0, Lcom/ringdroid/soundfile/Atom;

    const-string v1, "stsd"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ringdroid/soundfile/Atom;-><init>(Ljava/lang/String;BI)V

    .line 489
    invoke-direct {p0}, Lcom/ringdroid/soundfile/MP4Header;->getMP4AAtom()Lcom/ringdroid/soundfile/Atom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ringdroid/soundfile/Atom;->getBytes()[B

    move-result-object v1

    .line 490
    array-length v3, v1

    const/4 v4, 0x4

    add-int/2addr v3, v4

    new-array v3, v3, [B

    const/4 v5, 0x3

    const/4 v6, 0x1

    .line 491
    aput-byte v6, v3, v5

    .line 492
    array-length v5, v1

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 493
    invoke-virtual {v0, v3}, Lcom/ringdroid/soundfile/Atom;->setData([B)Z

    return-object v0
.end method

.method private getSTSZAtom()Lcom/ringdroid/soundfile/Atom;
    .locals 11

    .line 616
    new-instance v0, Lcom/ringdroid/soundfile/Atom;

    const-string v1, "stsz"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ringdroid/soundfile/Atom;-><init>(Ljava/lang/String;BI)V

    .line 617
    iget-object v1, p0, Lcom/ringdroid/soundfile/MP4Header;->mFrameSize:[I

    array-length v3, v1

    mul-int/lit8 v4, v3, 0x4

    const/16 v5, 0x8

    add-int/2addr v4, v5

    .line 618
    new-array v4, v4, [B

    .line 620
    aput-byte v2, v4, v2

    const/4 v6, 0x1

    .line 621
    aput-byte v2, v4, v6

    const/4 v6, 0x2

    .line 622
    aput-byte v2, v4, v6

    const/4 v6, 0x3

    .line 623
    aput-byte v2, v4, v6

    shr-int/lit8 v6, v3, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    const/4 v7, 0x4

    .line 624
    aput-byte v6, v4, v7

    shr-int/lit8 v6, v3, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    const/4 v8, 0x5

    .line 625
    aput-byte v6, v4, v8

    shr-int/lit8 v6, v3, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    const/4 v8, 0x6

    .line 626
    aput-byte v6, v4, v8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v6, 0x7

    .line 627
    aput-byte v3, v4, v6

    .line 628
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget v6, v1, v2

    add-int/lit8 v8, v5, 0x1

    shr-int/lit8 v9, v6, 0x18

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    .line 629
    aput-byte v9, v4, v5

    add-int/lit8 v9, v5, 0x2

    shr-int/lit8 v10, v6, 0x10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    .line 630
    aput-byte v10, v4, v8

    add-int/lit8 v8, v5, 0x3

    shr-int/lit8 v10, v6, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    .line 631
    aput-byte v10, v4, v9

    add-int/2addr v5, v7

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 632
    aput-byte v6, v4, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 634
    :cond_0
    invoke-virtual {v0, v4}, Lcom/ringdroid/soundfile/Atom;->setData([B)Z

    return-object v0
.end method

.method private getSTTSAtom()Lcom/ringdroid/soundfile/Atom;
    .locals 10

    .line 589
    new-instance v0, Lcom/ringdroid/soundfile/Atom;

    const-string v1, "stts"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ringdroid/soundfile/Atom;-><init>(Ljava/lang/String;BI)V

    .line 590
    iget-object v1, p0, Lcom/ringdroid/soundfile/MP4Header;->mFrameSize:[I

    array-length v1, v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    shr-int/lit8 v4, v1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    shr-int/lit8 v5, v1, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    shr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v7, 0x14

    .line 591
    new-array v7, v7, [B

    aput-byte v2, v7, v2

    aput-byte v2, v7, v3

    const/4 v8, 0x2

    aput-byte v2, v7, v8

    const/4 v9, 0x3

    aput-byte v8, v7, v9

    const/4 v8, 0x4

    aput-byte v2, v7, v8

    const/4 v9, 0x5

    aput-byte v2, v7, v9

    const/4 v9, 0x6

    aput-byte v2, v7, v9

    const/4 v9, 0x7

    aput-byte v3, v7, v9

    const/16 v3, 0x8

    aput-byte v2, v7, v3

    const/16 v3, 0x9

    aput-byte v2, v7, v3

    const/16 v3, 0xa

    aput-byte v2, v7, v3

    const/16 v3, 0xb

    aput-byte v2, v7, v3

    const/16 v3, 0xc

    aput-byte v4, v7, v3

    const/16 v3, 0xd

    aput-byte v5, v7, v3

    const/16 v3, 0xe

    aput-byte v6, v7, v3

    const/16 v3, 0xf

    aput-byte v1, v7, v3

    const/16 v1, 0x10

    aput-byte v2, v7, v1

    const/16 v1, 0x11

    aput-byte v2, v7, v1

    const/16 v1, 0x12

    aput-byte v8, v7, v1

    const/16 v1, 0x13

    aput-byte v2, v7, v1

    invoke-virtual {v0, v7}, Lcom/ringdroid/soundfile/Atom;->setData([B)Z

    return-object v0
.end method

.method private getTKHDAtom()Lcom/ringdroid/soundfile/Atom;
    .locals 15

    .line 380
    new-instance v0, Lcom/ringdroid/soundfile/Atom;

    const-string v1, "tkhd"

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/ringdroid/soundfile/Atom;-><init>(Ljava/lang/String;BI)V

    .line 381
    iget-object v1, p0, Lcom/ringdroid/soundfile/MP4Header;->mTime:[B

    aget-byte v4, v1, v2

    const/4 v5, 0x1

    aget-byte v6, v1, v5

    const/4 v7, 0x2

    aget-byte v8, v1, v7

    const/4 v9, 0x3

    aget-byte v1, v1, v9

    iget-object v10, p0, Lcom/ringdroid/soundfile/MP4Header;->mDurationMS:[B

    aget-byte v11, v10, v2

    aget-byte v12, v10, v5

    aget-byte v13, v10, v7

    aget-byte v10, v10, v9

    const/16 v14, 0x50

    new-array v14, v14, [B

    aput-byte v4, v14, v2

    aput-byte v6, v14, v5

    aput-byte v8, v14, v7

    aput-byte v1, v14, v9

    const/4 v7, 0x4

    aput-byte v4, v14, v7

    const/4 v4, 0x5

    aput-byte v6, v14, v4

    const/4 v4, 0x6

    aput-byte v8, v14, v4

    aput-byte v1, v14, v3

    const/16 v1, 0x8

    aput-byte v2, v14, v1

    const/16 v1, 0x9

    aput-byte v2, v14, v1

    const/16 v1, 0xa

    aput-byte v2, v14, v1

    const/16 v1, 0xb

    aput-byte v5, v14, v1

    const/16 v1, 0xc

    aput-byte v2, v14, v1

    const/16 v1, 0xd

    aput-byte v2, v14, v1

    const/16 v1, 0xe

    aput-byte v2, v14, v1

    const/16 v1, 0xf

    aput-byte v2, v14, v1

    const/16 v1, 0x10

    aput-byte v11, v14, v1

    const/16 v1, 0x11

    aput-byte v12, v14, v1

    const/16 v1, 0x12

    aput-byte v13, v14, v1

    const/16 v1, 0x13

    aput-byte v10, v14, v1

    const/16 v1, 0x14

    aput-byte v2, v14, v1

    const/16 v1, 0x15

    aput-byte v2, v14, v1

    const/16 v1, 0x16

    aput-byte v2, v14, v1

    const/16 v1, 0x17

    aput-byte v2, v14, v1

    const/16 v1, 0x18

    aput-byte v2, v14, v1

    const/16 v1, 0x19

    aput-byte v2, v14, v1

    const/16 v1, 0x1a

    aput-byte v2, v14, v1

    const/16 v1, 0x1b

    aput-byte v2, v14, v1

    const/16 v1, 0x1c

    aput-byte v2, v14, v1

    const/16 v1, 0x1d

    aput-byte v2, v14, v1

    const/16 v1, 0x1e

    aput-byte v2, v14, v1

    const/16 v1, 0x1f

    aput-byte v2, v14, v1

    const/16 v1, 0x20

    aput-byte v5, v14, v1

    const/16 v1, 0x21

    aput-byte v2, v14, v1

    const/16 v1, 0x22

    aput-byte v2, v14, v1

    const/16 v1, 0x23

    aput-byte v2, v14, v1

    const/16 v1, 0x24

    aput-byte v2, v14, v1

    const/16 v1, 0x25

    aput-byte v5, v14, v1

    const/16 v1, 0x26

    aput-byte v2, v14, v1

    const/16 v1, 0x27

    aput-byte v2, v14, v1

    const/16 v1, 0x28

    aput-byte v2, v14, v1

    const/16 v1, 0x29

    aput-byte v2, v14, v1

    const/16 v1, 0x2a

    aput-byte v2, v14, v1

    const/16 v1, 0x2b

    aput-byte v2, v14, v1

    const/16 v1, 0x2c

    aput-byte v2, v14, v1

    const/16 v1, 0x2d

    aput-byte v2, v14, v1

    const/16 v1, 0x2e

    aput-byte v2, v14, v1

    const/16 v1, 0x2f

    aput-byte v2, v14, v1

    const/16 v1, 0x30

    aput-byte v2, v14, v1

    const/16 v1, 0x31

    aput-byte v2, v14, v1

    const/16 v1, 0x32

    aput-byte v2, v14, v1

    const/16 v1, 0x33

    aput-byte v2, v14, v1

    const/16 v1, 0x34

    aput-byte v2, v14, v1

    const/16 v1, 0x35

    aput-byte v5, v14, v1

    const/16 v1, 0x36

    aput-byte v2, v14, v1

    const/16 v1, 0x37

    aput-byte v2, v14, v1

    const/16 v1, 0x38

    aput-byte v2, v14, v1

    const/16 v1, 0x39

    aput-byte v2, v14, v1

    const/16 v1, 0x3a

    aput-byte v2, v14, v1

    const/16 v1, 0x3b

    aput-byte v2, v14, v1

    const/16 v1, 0x3c

    aput-byte v2, v14, v1

    const/16 v1, 0x3d

    aput-byte v2, v14, v1

    const/16 v1, 0x3e

    aput-byte v2, v14, v1

    const/16 v1, 0x3f

    aput-byte v2, v14, v1

    const/16 v1, 0x40

    aput-byte v2, v14, v1

    const/16 v3, 0x41

    aput-byte v2, v14, v3

    const/16 v3, 0x42

    aput-byte v2, v14, v3

    const/16 v3, 0x43

    aput-byte v2, v14, v3

    const/16 v3, 0x44

    aput-byte v1, v14, v3

    const/16 v1, 0x45

    aput-byte v2, v14, v1

    const/16 v1, 0x46

    aput-byte v2, v14, v1

    const/16 v1, 0x47

    aput-byte v2, v14, v1

    const/16 v1, 0x48

    aput-byte v2, v14, v1

    const/16 v1, 0x49

    aput-byte v2, v14, v1

    const/16 v1, 0x4a

    aput-byte v2, v14, v1

    const/16 v1, 0x4b

    aput-byte v2, v14, v1

    const/16 v1, 0x4c

    aput-byte v2, v14, v1

    const/16 v1, 0x4d

    aput-byte v2, v14, v1

    const/16 v1, 0x4e

    aput-byte v2, v14, v1

    const/16 v1, 0x4f

    aput-byte v2, v14, v1

    invoke-virtual {v0, v14}, Lcom/ringdroid/soundfile/Atom;->setData([B)Z

    return-object v0
.end method

.method private getTRAKAtom()Lcom/ringdroid/soundfile/Atom;
    .locals 2

    .line 373
    new-instance v0, Lcom/ringdroid/soundfile/Atom;

    const-string v1, "trak"

    invoke-direct {v0, v1}, Lcom/ringdroid/soundfile/Atom;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-direct {p0}, Lcom/ringdroid/soundfile/MP4Header;->getTKHDAtom()Lcom/ringdroid/soundfile/Atom;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ringdroid/soundfile/Atom;->addChild(Lcom/ringdroid/soundfile/Atom;)Z

    .line 375
    invoke-direct {p0}, Lcom/ringdroid/soundfile/MP4Header;->getMDIAAtom()Lcom/ringdroid/soundfile/Atom;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ringdroid/soundfile/Atom;->addChild(Lcom/ringdroid/soundfile/Atom;)Z

    return-object v0
.end method

.method private getURLAtom()Lcom/ringdroid/soundfile/Atom;
    .locals 4

    .line 473
    new-instance v0, Lcom/ringdroid/soundfile/Atom;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "url "

    invoke-direct {v0, v3, v1, v2}, Lcom/ringdroid/soundfile/Atom;-><init>(Ljava/lang/String;BI)V

    return-object v0
.end method

.method private setHeader()V
    .locals 9

    .line 288
    invoke-direct {p0}, Lcom/ringdroid/soundfile/MP4Header;->getFTYPAtom()Lcom/ringdroid/soundfile/Atom;

    move-result-object v0

    .line 289
    invoke-direct {p0}, Lcom/ringdroid/soundfile/MP4Header;->getMOOVAtom()Lcom/ringdroid/soundfile/Atom;

    move-result-object v1

    .line 290
    new-instance v2, Lcom/ringdroid/soundfile/Atom;

    const-string v3, "mdat"

    invoke-direct {v2, v3}, Lcom/ringdroid/soundfile/Atom;-><init>(Ljava/lang/String;)V

    .line 294
    const-string v3, "trak.mdia.minf.stbl.stco"

    invoke-virtual {v1, v3}, Lcom/ringdroid/soundfile/Atom;->getChild(Ljava/lang/String;)Lcom/ringdroid/soundfile/Atom;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    .line 296
    iput-object v0, p0, Lcom/ringdroid/soundfile/MP4Header;->mHeader:[B

    return-void

    .line 299
    :cond_0
    invoke-virtual {v3}, Lcom/ringdroid/soundfile/Atom;->getData()[B

    move-result-object v3

    .line 300
    invoke-virtual {v0}, Lcom/ringdroid/soundfile/Atom;->getSize()I

    move-result v4

    invoke-virtual {v1}, Lcom/ringdroid/soundfile/Atom;->getSize()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Lcom/ringdroid/soundfile/Atom;->getSize()I

    move-result v5

    add-int/2addr v4, v5

    .line 301
    array-length v5, v3

    add-int/lit8 v6, v5, -0x4

    add-int/lit8 v7, v5, -0x3

    shr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 302
    aput-byte v8, v3, v6

    add-int/lit8 v6, v5, -0x2

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 303
    aput-byte v8, v3, v7

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 304
    aput-byte v8, v3, v6

    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    .line 305
    aput-byte v6, v3, v5

    .line 308
    new-array v3, v4, [B

    const/4 v4, 0x3

    .line 310
    new-array v5, v4, [Lcom/ringdroid/soundfile/Atom;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    const/4 v0, 0x2

    aput-object v2, v5, v0

    move v0, v6

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v2, v5, v0

    .line 311
    invoke-virtual {v2}, Lcom/ringdroid/soundfile/Atom;->getBytes()[B

    move-result-object v2

    .line 312
    array-length v7, v2

    invoke-static {v2, v6, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_1
    iget v0, p0, Lcom/ringdroid/soundfile/MP4Header;->mTotSize:I

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, -0x8

    add-int/lit8 v4, v1, -0x7

    shr-int/lit8 v5, v0, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 319
    aput-byte v5, v3, v2

    add-int/lit8 v2, v1, -0x6

    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 320
    aput-byte v5, v3, v4

    add-int/lit8 v1, v1, -0x5

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 321
    aput-byte v4, v3, v2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 322
    aput-byte v0, v3, v1

    .line 324
    iput-object v3, p0, Lcom/ringdroid/soundfile/MP4Header;->mHeader:[B

    return-void
.end method


# virtual methods
.method public getMP4Header()[B
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/ringdroid/soundfile/MP4Header;->mHeader:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 265
    iget-object v0, p0, Lcom/ringdroid/soundfile/MP4Header;->mHeader:[B

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 270
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_5

    aget-byte v6, v0, v4

    const/4 v7, 0x1

    if-lez v5, :cond_1

    .line 271
    rem-int/lit8 v8, v5, 0x20

    if-nez v8, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    move v8, v3

    :goto_1
    if-lez v5, :cond_2

    .line 272
    rem-int/lit8 v9, v5, 0x4

    if-nez v9, :cond_2

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    if-eqz v8, :cond_3

    .line 274
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v8, 0xa

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eqz v7, :cond_4

    .line 277
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v7, 0x20

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%02X"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method
