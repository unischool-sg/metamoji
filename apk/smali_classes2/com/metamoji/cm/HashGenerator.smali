.class public Lcom/metamoji/cm/HashGenerator;
.super Ljava/lang/Object;
.source "HashGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cm/HashGenerator$Algorithm;
    }
.end annotation


# instance fields
.field private final UTF8_CHARSET:Ljava/nio/charset/Charset;

.field _maker:Ljava/security/MessageDigest;

.field private final _secret_seed:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cm/HashGenerator;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const/16 v0, 0x100

    .line 17
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/metamoji/cm/HashGenerator;->_secret_seed:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x7et
        -0x1dt
        0x77t
        -0x63t
        0x8t
        -0x25t
        -0x61t
        -0x5dt
        0x5et
        -0x69t
        0x1at
        -0x16t
        -0x6ct
        0x51t
        -0x5dt
        -0x7t
        0x71t
        0x14t
        0x6dt
        -0x4bt
        -0x22t
        0x67t
        -0x3dt
        0x71t
        -0x60t
        0x1bt
        -0x4et
        0x20t
        0x70t
        0x69t
        0x1dt
        0x7ct
        -0x5ct
        -0x59t
        0x17t
        -0x1ct
        0x6dt
        0x6t
        -0x62t
        0x37t
        0x55t
        0x5et
        -0x37t
        0x48t
        0x4t
        0x45t
        0x15t
        0x39t
        -0x4bt
        0x56t
        -0x3dt
        0x35t
        -0x61t
        -0x13t
        0x31t
        -0x5t
        -0x5dt
        0x4et
        0x40t
        -0x46t
        -0x69t
        0xft
        -0x57t
        -0x27t
        -0x1bt
        0xbt
        -0x19t
        0x34t
        0x6ct
        -0x7bt
        0xbt
        -0x5at
        -0x3ct
        -0x78t
        0x7ct
        -0x6et
        0x10t
        0x21t
        0x7t
        0x6et
        0x4ft
        0x45t
        0x37t
        -0x66t
        -0x19t
        -0xct
        -0xct
        -0x59t
        -0x41t
        -0x2at
        0x1at
        0x26t
        0x43t
        0x30t
        0x48t
        0x0t
        0x3et
        -0xet
        0x47t
        -0x7t
        -0x7dt
        0x1bt
        0x42t
        -0x19t
        0xat
        0x2et
        0x5et
        0x53t
        -0x37t
        0x62t
        0x33t
        0x4ct
        -0x16t
        0x52t
        0x4ft
        -0x30t
        -0x21t
        0x7t
        0x3t
        -0x48t
        0x65t
        -0x51t
        0x1ft
        0x64t
        -0x4bt
        0x75t
        -0x9t
        0x5ct
        -0x3bt
        -0x38t
        0x26t
        -0x50t
        -0x18t
        0x42t
        -0x11t
        0x73t
        0x29t
        0x4at
        -0x16t
        0x1ft
        -0x10t
        -0x5ft
        -0x18t
        -0x76t
        0x72t
        -0x26t
        0x62t
        -0x2t
        -0x69t
        -0x69t
        -0x26t
        0x7bt
        -0x73t
        -0x76t
        0x39t
        0x3ft
        0x49t
        -0x13t
        -0x4at
        -0x4at
        -0x24t
        0x38t
        0x2ct
        -0x37t
        -0x28t
        -0x3at
        -0x28t
        0xct
        0x63t
        0x50t
        0x58t
        0x71t
        -0x1t
        -0x1t
        -0xct
        -0x63t
        -0x57t
        -0xct
        0x68t
        -0x6bt
        0x5at
        0x4bt
        0x2ct
        0x63t
        -0x62t
        -0x1dt
        0x17t
        0x69t
        0x27t
        0x35t
        -0x1t
        -0x42t
        -0x4ct
        -0x5t
        -0x45t
        -0x5at
        0x1at
        -0x58t
        0x6ct
        0xdt
        -0x47t
        -0x5dt
        -0xdt
        -0x67t
        0x39t
        0x3t
        -0x65t
        0x4dt
        -0x38t
        -0x3ct
        0x6et
        -0x5at
        -0x40t
        0x5ct
        0x5t
        0x27t
        0x42t
        0x11t
        -0x66t
        -0x13t
        0x5dt
        0x6ct
        0x13t
        -0x43t
        0x12t
        -0x15t
        -0x63t
        0x3ct
        0x0t
        -0x5ct
        -0x4ft
        0x1dt
        0x60t
        0x41t
        0x4bt
        -0x2bt
        0x76t
        0xat
        0x7et
        -0x50t
        -0x41t
        0xdt
        0x4bt
        -0x79t
        0x0t
        0x74t
        0x37t
        -0x7dt
        0x55t
        0x36t
        0x5dt
        0x2et
        0x2ct
        0x5dt
        -0x55t
        -0x54t
    .end array-data
.end method

.method public constructor <init>(Lcom/metamoji/cm/HashGenerator$Algorithm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cm/HashGenerator;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const/16 v0, 0x100

    .line 17
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/metamoji/cm/HashGenerator;->_secret_seed:[B

    .line 62
    invoke-virtual {p0, p1}, Lcom/metamoji/cm/HashGenerator;->openAlgorithm(Lcom/metamoji/cm/HashGenerator$Algorithm;)V

    return-void

    :array_0
    .array-data 1
        0x7et
        -0x1dt
        0x77t
        -0x63t
        0x8t
        -0x25t
        -0x61t
        -0x5dt
        0x5et
        -0x69t
        0x1at
        -0x16t
        -0x6ct
        0x51t
        -0x5dt
        -0x7t
        0x71t
        0x14t
        0x6dt
        -0x4bt
        -0x22t
        0x67t
        -0x3dt
        0x71t
        -0x60t
        0x1bt
        -0x4et
        0x20t
        0x70t
        0x69t
        0x1dt
        0x7ct
        -0x5ct
        -0x59t
        0x17t
        -0x1ct
        0x6dt
        0x6t
        -0x62t
        0x37t
        0x55t
        0x5et
        -0x37t
        0x48t
        0x4t
        0x45t
        0x15t
        0x39t
        -0x4bt
        0x56t
        -0x3dt
        0x35t
        -0x61t
        -0x13t
        0x31t
        -0x5t
        -0x5dt
        0x4et
        0x40t
        -0x46t
        -0x69t
        0xft
        -0x57t
        -0x27t
        -0x1bt
        0xbt
        -0x19t
        0x34t
        0x6ct
        -0x7bt
        0xbt
        -0x5at
        -0x3ct
        -0x78t
        0x7ct
        -0x6et
        0x10t
        0x21t
        0x7t
        0x6et
        0x4ft
        0x45t
        0x37t
        -0x66t
        -0x19t
        -0xct
        -0xct
        -0x59t
        -0x41t
        -0x2at
        0x1at
        0x26t
        0x43t
        0x30t
        0x48t
        0x0t
        0x3et
        -0xet
        0x47t
        -0x7t
        -0x7dt
        0x1bt
        0x42t
        -0x19t
        0xat
        0x2et
        0x5et
        0x53t
        -0x37t
        0x62t
        0x33t
        0x4ct
        -0x16t
        0x52t
        0x4ft
        -0x30t
        -0x21t
        0x7t
        0x3t
        -0x48t
        0x65t
        -0x51t
        0x1ft
        0x64t
        -0x4bt
        0x75t
        -0x9t
        0x5ct
        -0x3bt
        -0x38t
        0x26t
        -0x50t
        -0x18t
        0x42t
        -0x11t
        0x73t
        0x29t
        0x4at
        -0x16t
        0x1ft
        -0x10t
        -0x5ft
        -0x18t
        -0x76t
        0x72t
        -0x26t
        0x62t
        -0x2t
        -0x69t
        -0x69t
        -0x26t
        0x7bt
        -0x73t
        -0x76t
        0x39t
        0x3ft
        0x49t
        -0x13t
        -0x4at
        -0x4at
        -0x24t
        0x38t
        0x2ct
        -0x37t
        -0x28t
        -0x3at
        -0x28t
        0xct
        0x63t
        0x50t
        0x58t
        0x71t
        -0x1t
        -0x1t
        -0xct
        -0x63t
        -0x57t
        -0xct
        0x68t
        -0x6bt
        0x5at
        0x4bt
        0x2ct
        0x63t
        -0x62t
        -0x1dt
        0x17t
        0x69t
        0x27t
        0x35t
        -0x1t
        -0x42t
        -0x4ct
        -0x5t
        -0x45t
        -0x5at
        0x1at
        -0x58t
        0x6ct
        0xdt
        -0x47t
        -0x5dt
        -0xdt
        -0x67t
        0x39t
        0x3t
        -0x65t
        0x4dt
        -0x38t
        -0x3ct
        0x6et
        -0x5at
        -0x40t
        0x5ct
        0x5t
        0x27t
        0x42t
        0x11t
        -0x66t
        -0x13t
        0x5dt
        0x6ct
        0x13t
        -0x43t
        0x12t
        -0x15t
        -0x63t
        0x3ct
        0x0t
        -0x5ct
        -0x4ft
        0x1dt
        0x60t
        0x41t
        0x4bt
        -0x2bt
        0x76t
        0xat
        0x7et
        -0x50t
        -0x41t
        0xdt
        0x4bt
        -0x79t
        0x0t
        0x74t
        0x37t
        -0x7dt
        0x55t
        0x36t
        0x5dt
        0x2et
        0x2ct
        0x5dt
        -0x55t
        -0x54t
    .end array-data
.end method

.method private static _isEqual([B[BI)Z
    .locals 4

    .line 260
    array-length v0, p0

    const/4 v1, 0x0

    if-lt v0, p2, :cond_3

    array-length v0, p1

    if-ge v0, p2, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_2

    .line 265
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public static createHash([BLcom/metamoji/cm/HashGenerator$Algorithm;)[B
    .locals 1

    .line 219
    :try_start_0
    new-instance v0, Lcom/metamoji/cm/HashGenerator;

    invoke-direct {v0, p1}, Lcom/metamoji/cm/HashGenerator;-><init>(Lcom/metamoji/cm/HashGenerator$Algorithm;)V

    .line 220
    invoke-virtual {v0, p0}, Lcom/metamoji/cm/HashGenerator;->append([B)V

    .line 221
    invoke-virtual {v0}, Lcom/metamoji/cm/HashGenerator;->getHash()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 223
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createHashGenerator(Lcom/metamoji/cm/HashGenerator$Algorithm;)Lcom/metamoji/cm/HashGenerator;
    .locals 1

    .line 92
    :try_start_0
    new-instance v0, Lcom/metamoji/cm/HashGenerator;

    invoke-direct {v0, p0}, Lcom/metamoji/cm/HashGenerator;-><init>(Lcom/metamoji/cm/HashGenerator$Algorithm;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 94
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createHashString([BLcom/metamoji/cm/HashGenerator$Algorithm;)Ljava/lang/String;
    .locals 1

    .line 231
    :try_start_0
    new-instance v0, Lcom/metamoji/cm/HashGenerator;

    invoke-direct {v0, p1}, Lcom/metamoji/cm/HashGenerator;-><init>(Lcom/metamoji/cm/HashGenerator$Algorithm;)V

    .line 232
    invoke-virtual {v0, p0}, Lcom/metamoji/cm/HashGenerator;->append([B)V

    .line 233
    invoke-virtual {v0}, Lcom/metamoji/cm/HashGenerator;->getHashString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 235
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createHashString([BLcom/metamoji/cm/HashGenerator$Algorithm;Ljava/lang/Appendable;)V
    .locals 1

    .line 246
    :try_start_0
    new-instance v0, Lcom/metamoji/cm/HashGenerator;

    invoke-direct {v0, p1}, Lcom/metamoji/cm/HashGenerator;-><init>(Lcom/metamoji/cm/HashGenerator$Algorithm;)V

    .line 247
    invoke-virtual {v0, p0}, Lcom/metamoji/cm/HashGenerator;->append([B)V

    .line 248
    invoke-virtual {v0, p2}, Lcom/metamoji/cm/HashGenerator;->getHashString(Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 250
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-void
.end method

.method public static decodeHexString(Ljava/lang/String;)[B
    .locals 6

    .line 192
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v2, 0x1

    mul-int/lit8 v5, v4, 0x2

    .line 195
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static encodeHexString([B)Ljava/lang/String;
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 182
    invoke-static {p0, v0}, Lcom/metamoji/cm/HashGenerator;->encodeHexString([BLjava/lang/Appendable;)V

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeHexString([BLjava/lang/Appendable;)V
    .locals 4

    .line 167
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 168
    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-byte v2, p0, v1

    .line 169
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02x"

    invoke-virtual {v0, v3, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    return-void
.end method


# virtual methods
.method public append(Ljava/io/InputStream;)V
    .locals 4

    .line 139
    invoke-static {}, Lcom/metamoji/cm/CmByteBuffer;->getBuffer()[B

    move-result-object v0

    .line 142
    :goto_0
    :try_start_0
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    .line 143
    iget-object v3, p0, Lcom/metamoji/cm/HashGenerator;->_maker:Ljava/security/MessageDigest;

    invoke-virtual {v3, v0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {v0}, Lcom/metamoji/cm/CmByteBuffer;->releaseBuffer([B)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 146
    :try_start_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    invoke-static {v0}, Lcom/metamoji/cm/CmByteBuffer;->releaseBuffer([B)V

    return-void

    :goto_1
    invoke-static {v0}, Lcom/metamoji/cm/CmByteBuffer;->releaseBuffer([B)V

    .line 149
    throw p1
.end method

.method public append(Ljava/lang/String;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/metamoji/cm/HashGenerator;->_maker:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/metamoji/cm/HashGenerator;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public append([B)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/metamoji/cm/HashGenerator;->_maker:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public append([BII)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/metamoji/cm/HashGenerator;->_maker:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method

.method public appendSecretSeed()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/metamoji/cm/HashGenerator;->_secret_seed:[B

    invoke-virtual {p0, v0}, Lcom/metamoji/cm/HashGenerator;->append([B)V

    return-void
.end method

.method public getHash()[B
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/metamoji/cm/HashGenerator;->_maker:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public getHashString()Ljava/lang/String;
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/metamoji/cm/HashGenerator;->getHash()[B

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/HashGenerator;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHashString(Ljava/lang/Appendable;)V
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/metamoji/cm/HashGenerator;->getHash()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/cm/HashGenerator;->encodeHexString([BLjava/lang/Appendable;)V

    return-void
.end method

.method public hashLength()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/metamoji/cm/HashGenerator;->_maker:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    return v0
.end method

.method public isEqual([B)Z
    .locals 2

    .line 276
    invoke-virtual {p0}, Lcom/metamoji/cm/HashGenerator;->getHash()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/cm/HashGenerator;->hashLength()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/metamoji/cm/HashGenerator;->_isEqual([B[BI)Z

    move-result p1

    return p1
.end method

.method public openAlgorithm(Lcom/metamoji/cm/HashGenerator$Algorithm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lcom/metamoji/cm/HashGenerator$Algorithm;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 83
    const-string p1, "SHA512"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/cm/HashGenerator;->_maker:Ljava/security/MessageDigest;

    return-void

    .line 86
    :cond_0
    new-instance p1, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {p1}, Ljava/security/NoSuchAlgorithmException;-><init>()V

    throw p1

    .line 80
    :cond_1
    const-string p1, "SHA384"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/cm/HashGenerator;->_maker:Ljava/security/MessageDigest;

    return-void

    .line 77
    :cond_2
    const-string p1, "SHA256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/cm/HashGenerator;->_maker:Ljava/security/MessageDigest;

    return-void

    .line 74
    :cond_3
    const-string p1, "SHA1"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/cm/HashGenerator;->_maker:Ljava/security/MessageDigest;

    return-void

    .line 71
    :cond_4
    const-string p1, "MD5"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/cm/HashGenerator;->_maker:Ljava/security/MessageDigest;

    return-void
.end method
