.class public Lcom/metamoji/cm/BytesUtils;
.super Ljava/lang/Object;
.source "BytesUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFloat32LE([BI)F
    .locals 0

    .line 212
    invoke-static {p0, p1}, Lcom/metamoji/cm/BytesUtils;->readSInt32LE([BI)I

    move-result p0

    .line 213
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static readFloat64LE([BI)D
    .locals 0

    .line 239
    invoke-static {p0, p1}, Lcom/metamoji/cm/BytesUtils;->readSInt64LE([BI)J

    move-result-wide p0

    .line 240
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static readSInt16LE([BI)S
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    if-ltz v1, :cond_0

    shl-int/lit8 v0, v0, 0x8

    add-int v2, p1, v1

    .line 64
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static readSInt32LE([BI)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    :goto_0
    if-ltz v1, :cond_0

    shl-int/lit8 v0, v0, 0x8

    add-int v2, p1, v1

    .line 122
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static readSInt64LE([BI)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x7

    :goto_0
    if-ltz v2, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    add-int v3, p1, v2

    .line 180
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static readSInt8LE([BI)B
    .locals 0

    .line 22
    aget-byte p0, p0, p1

    return p0
.end method

.method public static readUInt16LE([BI)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    if-ltz v1, :cond_0

    shl-int/lit8 v0, v0, 0x8

    add-int v2, p1, v1

    .line 98
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static readUInt32LE([BI)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x3

    :goto_0
    if-ltz v2, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    add-int v3, p1, v2

    .line 156
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static readUInt8LE([BI)S
    .locals 0

    .line 42
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method public static writeFloat32LE(Ljava/io/ByteArrayOutputStream;F)V
    .locals 0

    .line 228
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 229
    invoke-static {p0, p1}, Lcom/metamoji/cm/BytesUtils;->writeSInt32LE(Ljava/io/ByteArrayOutputStream;I)V

    return-void
.end method

.method public static writeFloat32LE([BIF)V
    .locals 0

    .line 223
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    .line 224
    invoke-static {p0, p1, p2}, Lcom/metamoji/cm/BytesUtils;->writeSInt32LE([BII)V

    return-void
.end method

.method public static writeFloat64LE(Ljava/io/ByteArrayOutputStream;D)V
    .locals 0

    .line 255
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    .line 256
    invoke-static {p0, p1, p2}, Lcom/metamoji/cm/BytesUtils;->writeSInt64LE(Ljava/io/ByteArrayOutputStream;J)V

    return-void
.end method

.method public static writeFloat64LE([BID)V
    .locals 0

    .line 250
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p2

    .line 251
    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/cm/BytesUtils;->writeSInt64LE([BIJ)V

    return-void
.end method

.method public static writeSInt16LE(Ljava/io/ByteArrayOutputStream;S)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    .line 84
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x8

    int-to-short p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeSInt16LE([BIS)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    .line 77
    aput-byte v2, p0, v1

    ushr-int/lit8 p2, p2, 0x8

    int-to-short p2, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeSInt32LE(Ljava/io/ByteArrayOutputStream;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    .line 142
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeSInt32LE([BII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    .line 135
    aput-byte v2, p0, v1

    ushr-int/lit8 p2, p2, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeSInt64LE(Ljava/io/ByteArrayOutputStream;J)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 200
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeSInt64LE([BIJ)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    add-int v2, p1, v0

    const-wide/16 v3, 0xff

    and-long/2addr v3, p2

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 193
    aput-byte v3, p0, v2

    ushr-long/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeSInt8LE([BIB)V
    .locals 0

    .line 32
    aput-byte p2, p0, p1

    return-void
.end method

.method public static writeUInt16LE([BII)V
    .locals 0

    int-to-short p2, p2

    .line 110
    invoke-static {p0, p1, p2}, Lcom/metamoji/cm/BytesUtils;->writeSInt16LE([BIS)V

    return-void
.end method

.method public static writeUInt32LE([BIJ)V
    .locals 0

    long-to-int p2, p2

    .line 168
    invoke-static {p0, p1, p2}, Lcom/metamoji/cm/BytesUtils;->writeSInt32LE([BII)V

    return-void
.end method

.method public static writeUInt8LE([BIS)V
    .locals 0

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 52
    aput-byte p2, p0, p1

    return-void
.end method
