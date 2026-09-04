.class final Landroidx/media3/muxer/EbmlUtils;
.super Ljava/lang/Object;
.source "EbmlUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateMinimumVIntLength(J)I
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    const-wide/16 v2, 0x7e

    cmp-long v0, p0, v2

    if-gtz v0, :cond_1

    return v1

    :cond_1
    const-wide/16 v0, 0x3ffe

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-wide/32 v0, 0x1ffffe

    cmp-long v0, p0, v0

    if-gtz v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const-wide/32 v0, 0xffffffe

    cmp-long v0, p0, v0

    if-gtz v0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const-wide v0, 0x7fffffffeL

    cmp-long v0, p0, v0

    if-gtz v0, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    const-wide v0, 0x3fffffffffeL

    cmp-long v0, p0, v0

    if-gtz v0, :cond_6

    const/4 p0, 0x6

    return p0

    :cond_6
    const-wide v0, 0x1fffffffffffeL

    cmp-long v0, p0, v0

    if-gtz v0, :cond_7

    const/4 p0, 0x7

    return p0

    :cond_7
    const-wide v0, 0xfffffffffffffeL

    cmp-long v0, p0, v0

    if-gtz v0, :cond_8

    const/16 p0, 0x8

    return p0

    .line 96
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is too large for a VINT."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encodeVInt(J)Ljava/nio/ByteBuffer;
    .locals 1

    .line 67
    invoke-static {p0, p1}, Landroidx/media3/muxer/EbmlUtils;->calculateMinimumVIntLength(J)I

    move-result v0

    invoke-static {p0, p1, v0}, Landroidx/media3/muxer/EbmlUtils;->encodeVIntWithWidth(JI)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static encodeVIntWithWidth(JI)Ljava/nio/ByteBuffer;
    .locals 6

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p2, v2, :cond_0

    if-gt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 49
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 50
    new-array v2, p2, [B

    mul-int/lit8 v3, p2, 0x7

    const-wide/16 v4, 0x1

    shl-long v3, v4, v3

    or-long/2addr p0, v3

    :goto_1
    if-ge v1, p2, :cond_1

    add-int/lit8 v3, p2, -0x1

    sub-int/2addr v3, v1

    mul-int/2addr v3, v0

    ushr-long v3, p0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 54
    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method
