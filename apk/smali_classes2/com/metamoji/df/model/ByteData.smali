.class public Lcom/metamoji/df/model/ByteData;
.super Ljava/lang/Object;
.source "ByteData.java"


# instance fields
.field private data:[B

.field private length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 21
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/metamoji/df/model/ByteData;->data:[B

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/metamoji/df/model/ByteData;->length:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/metamoji/df/model/ByteData;->data:[B

    const/4 v1, 0x0

    .line 27
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    array-length p1, p1

    iput p1, p0, Lcom/metamoji/df/model/ByteData;->length:I

    return-void
.end method

.method public static readZeroTerminatedUTF8String([BLcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/String;
    .locals 4

    .line 107
    invoke-virtual {p1}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v0

    .line 108
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 110
    aget-byte v3, p0, v2

    if-nez v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 112
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    .line 113
    new-instance p1, Ljava/lang/String;

    sub-int/2addr v2, v0

    const-string v1, "UTF-8"

    invoke-direct {p1, p0, v0, v2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 115
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "MD0013"

    const-string v1, "UTF-8 is unsupported"

    invoke-direct {p1, v0, v1, p0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_1
    new-instance p0, Lcom/metamoji/cm/CmException;

    const-string p1, "MD0014"

    const-string v0, "not zero-terminated"

    invoke-direct {p0, p1, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public appendByte(B)V
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v0

    .line 59
    invoke-virtual {p0}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/metamoji/df/model/ByteData;->setLength(I)V

    .line 60
    iget-object v1, p0, Lcom/metamoji/df/model/ByteData;->data:[B

    aput-byte p1, v1, v0

    return-void
.end method

.method public appendBytes([B)V
    .locals 4

    .line 64
    invoke-virtual {p0}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v0

    .line 65
    invoke-virtual {p0}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/metamoji/df/model/ByteData;->setLength(I)V

    .line 66
    iget-object v1, p0, Lcom/metamoji/df/model/ByteData;->data:[B

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public appendBytes([BII)V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v0

    .line 71
    invoke-virtual {p0}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0, v1}, Lcom/metamoji/df/model/ByteData;->setLength(I)V

    .line 72
    iget-object v1, p0, Lcom/metamoji/df/model/ByteData;->data:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public appendZeroTerminatedUTF8String(Ljava/lang/String;)V
    .locals 3

    .line 92
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    invoke-virtual {p0, p1}, Lcom/metamoji/df/model/ByteData;->appendBytes([B)V

    const/4 p1, 0x0

    .line 97
    invoke-virtual {p0, p1}, Lcom/metamoji/df/model/ByteData;->appendByte(B)V

    return-void

    :catch_0
    move-exception p1

    .line 94
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "MD0012"

    const-string v2, "UTF-8 is unsupported"

    invoke-direct {v0, v1, v2, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getByteArray()[B
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/metamoji/df/model/ByteData;->data:[B

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/metamoji/df/model/ByteData;->length:I

    return v0
.end method

.method public removeBytes(II)V
    .locals 3

    .line 76
    iget v0, p0, Lcom/metamoji/df/model/ByteData;->length:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    add-int v1, p1, p2

    if-le v1, v0, :cond_1

    sub-int p2, v0, p1

    :cond_1
    if-lez p2, :cond_2

    .line 84
    iget-object v1, p0, Lcom/metamoji/df/model/ByteData;->data:[B

    add-int v2, p1, p2

    sub-int/2addr v0, p1

    sub-int/2addr v0, p2

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget p1, p0, Lcom/metamoji/df/model/ByteData;->length:I

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/metamoji/df/model/ByteData;->setLength(I)V

    :cond_2
    return-void
.end method

.method public setLength(I)V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/metamoji/df/model/ByteData;->data:[B

    array-length v1, v0

    if-ge v1, p1, :cond_1

    sub-int v2, p1, v1

    const/high16 v3, 0x100000

    if-ge v2, v3, :cond_0

    mul-int/lit8 v2, p1, 0x2

    sub-int/2addr v2, v1

    if-le v2, v3, :cond_0

    move v2, v3

    :cond_0
    add-int/2addr v1, v2

    .line 46
    new-array v1, v1, [B

    .line 47
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iput-object v1, p0, Lcom/metamoji/df/model/ByteData;->data:[B

    .line 50
    :cond_1
    iput p1, p0, Lcom/metamoji/df/model/ByteData;->length:I

    return-void
.end method
