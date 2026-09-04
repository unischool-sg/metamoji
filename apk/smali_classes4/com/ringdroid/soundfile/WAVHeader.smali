.class public Lcom/ringdroid/soundfile/WAVHeader;
.super Ljava/lang/Object;
.source "WAVHeader.java"


# instance fields
.field private mChannels:I

.field private mHeader:[B

.field private mNumBytesPerSample:I

.field private mNumSamples:I

.field private mSampleRate:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/ringdroid/soundfile/WAVHeader;->mSampleRate:I

    .line 28
    iput p2, p0, Lcom/ringdroid/soundfile/WAVHeader;->mChannels:I

    .line 29
    iput p3, p0, Lcom/ringdroid/soundfile/WAVHeader;->mNumSamples:I

    mul-int/lit8 p2, p2, 0x2

    .line 30
    iput p2, p0, Lcom/ringdroid/soundfile/WAVHeader;->mNumBytesPerSample:I

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/ringdroid/soundfile/WAVHeader;->mHeader:[B

    .line 32
    invoke-direct {p0}, Lcom/ringdroid/soundfile/WAVHeader;->setHeader()V

    return-void
.end method

.method public static getWAVHeader(III)[B
    .locals 1

    .line 40
    new-instance v0, Lcom/ringdroid/soundfile/WAVHeader;

    invoke-direct {v0, p0, p1, p2}, Lcom/ringdroid/soundfile/WAVHeader;-><init>(III)V

    iget-object p0, v0, Lcom/ringdroid/soundfile/WAVHeader;->mHeader:[B

    return-object p0
.end method

.method private setHeader()V
    .locals 11

    const/16 v0, 0x2e

    .line 67
    new-array v0, v0, [B

    const/4 v1, 0x4

    .line 72
    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget v2, p0, Lcom/ringdroid/soundfile/WAVHeader;->mNumSamples:I

    iget v4, p0, Lcom/ringdroid/soundfile/WAVHeader;->mNumBytesPerSample:I

    mul-int/2addr v2, v4

    const/16 v4, 0x24

    add-int/2addr v2, v4

    and-int/lit16 v5, v2, 0xff

    int-to-byte v5, v5

    .line 75
    aput-byte v5, v0, v1

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x5

    .line 76
    aput-byte v5, v0, v6

    shr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x6

    .line 77
    aput-byte v5, v0, v6

    const/16 v5, 0x18

    shr-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v6, 0x7

    .line 78
    aput-byte v2, v0, v6

    .line 79
    new-array v2, v1, [B

    fill-array-data v2, :array_1

    const/16 v6, 0x8

    invoke-static {v2, v3, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    new-array v2, v1, [B

    fill-array-data v2, :array_2

    const/16 v7, 0xc

    invoke-static {v2, v3, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    new-array v2, v1, [B

    fill-array-data v2, :array_3

    const/16 v7, 0x10

    invoke-static {v2, v3, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x2

    .line 87
    new-array v7, v2, [B

    fill-array-data v7, :array_4

    const/16 v8, 0x14

    invoke-static {v7, v3, v0, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget v7, p0, Lcom/ringdroid/soundfile/WAVHeader;->mChannels:I

    and-int/lit16 v8, v7, 0xff

    int-to-byte v8, v8

    const/16 v9, 0x16

    aput-byte v8, v0, v9

    shr-int/2addr v7, v6

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    const/16 v8, 0x17

    .line 90
    aput-byte v7, v0, v8

    .line 91
    iget v7, p0, Lcom/ringdroid/soundfile/WAVHeader;->mSampleRate:I

    and-int/lit16 v8, v7, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v5

    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    const/16 v9, 0x19

    .line 92
    aput-byte v8, v0, v9

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    const/16 v9, 0x1a

    .line 93
    aput-byte v8, v0, v9

    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    const/16 v9, 0x1b

    .line 94
    aput-byte v8, v0, v9

    .line 95
    iget v8, p0, Lcom/ringdroid/soundfile/WAVHeader;->mNumBytesPerSample:I

    mul-int/2addr v7, v8

    and-int/lit16 v9, v7, 0xff

    int-to-byte v9, v9

    const/16 v10, 0x1c

    .line 96
    aput-byte v9, v0, v10

    shr-int/lit8 v9, v7, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    const/16 v10, 0x1d

    .line 97
    aput-byte v9, v0, v10

    shr-int/lit8 v9, v7, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    const/16 v10, 0x1e

    .line 98
    aput-byte v9, v0, v10

    shr-int/2addr v7, v5

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    const/16 v9, 0x1f

    .line 99
    aput-byte v7, v0, v9

    and-int/lit16 v7, v8, 0xff

    int-to-byte v7, v7

    const/16 v9, 0x20

    .line 100
    aput-byte v7, v0, v9

    shr-int/lit8 v6, v8, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    const/16 v7, 0x21

    .line 101
    aput-byte v6, v0, v7

    .line 102
    new-array v6, v2, [B

    fill-array-data v6, :array_5

    const/16 v7, 0x22

    invoke-static {v6, v3, v0, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    new-array v2, v1, [B

    fill-array-data v2, :array_6

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iget v1, p0, Lcom/ringdroid/soundfile/WAVHeader;->mNumSamples:I

    iget v2, p0, Lcom/ringdroid/soundfile/WAVHeader;->mNumBytesPerSample:I

    mul-int/2addr v1, v2

    and-int/lit16 v2, v1, 0xff

    int-to-byte v2, v2

    const/16 v3, 0x28

    .line 109
    aput-byte v2, v0, v3

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/16 v3, 0x29

    .line 110
    aput-byte v2, v0, v3

    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/16 v3, 0x2a

    .line 111
    aput-byte v2, v0, v3

    shr-int/2addr v1, v5

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v2, 0x2b

    .line 112
    aput-byte v1, v0, v2

    .line 114
    iput-object v0, p0, Lcom/ringdroid/soundfile/WAVHeader;->mHeader:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_1
    .array-data 1
        0x57t
        0x41t
        0x56t
        0x45t
    .end array-data

    :array_2
    .array-data 1
        0x66t
        0x6dt
        0x74t
        0x20t
    .end array-data

    :array_3
    .array-data 1
        0x10t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x10t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x64t
        0x61t
        0x74t
        0x61t
    .end array-data
.end method


# virtual methods
.method public getWAVHeader()[B
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/ringdroid/soundfile/WAVHeader;->mHeader:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 45
    iget-object v0, p0, Lcom/ringdroid/soundfile/WAVHeader;->mHeader:[B

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 50
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

    .line 51
    rem-int/lit8 v8, v5, 0x20

    if-nez v8, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    move v8, v3

    :goto_1
    if-lez v5, :cond_2

    .line 52
    rem-int/lit8 v9, v5, 0x4

    if-nez v9, :cond_2

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    if-eqz v8, :cond_3

    .line 54
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

    .line 57
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v7, 0x20

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
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
