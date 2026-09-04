.class Lcom/ringdroid/soundfile/Atom;
.super Ljava/lang/Object;
.source "MP4Header.java"


# instance fields
.field private mChildren:[Lcom/ringdroid/soundfile/Atom;

.field private mData:[B

.field private mFlags:I

.field private mSize:I

.field private mType:I

.field private mVersion:B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 29
    iput v0, p0, Lcom/ringdroid/soundfile/Atom;->mSize:I

    .line 30
    invoke-direct {p0, p1}, Lcom/ringdroid/soundfile/Atom;->getTypeInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ringdroid/soundfile/Atom;->mType:I

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/ringdroid/soundfile/Atom;->mData:[B

    .line 32
    iput-object p1, p0, Lcom/ringdroid/soundfile/Atom;->mChildren:[Lcom/ringdroid/soundfile/Atom;

    const/4 p1, -0x1

    .line 33
    iput-byte p1, p0, Lcom/ringdroid/soundfile/Atom;->mVersion:B

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/ringdroid/soundfile/Atom;->mFlags:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BI)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 39
    iput v0, p0, Lcom/ringdroid/soundfile/Atom;->mSize:I

    .line 40
    invoke-direct {p0, p1}, Lcom/ringdroid/soundfile/Atom;->getTypeInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ringdroid/soundfile/Atom;->mType:I

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/ringdroid/soundfile/Atom;->mData:[B

    .line 42
    iput-object p1, p0, Lcom/ringdroid/soundfile/Atom;->mChildren:[Lcom/ringdroid/soundfile/Atom;

    .line 43
    iput-byte p2, p0, Lcom/ringdroid/soundfile/Atom;->mVersion:B

    .line 44
    iput p3, p0, Lcom/ringdroid/soundfile/Atom;->mFlags:I

    return-void
.end method

.method private getTypeInt(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-byte v0, v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    .line 72
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    int-to-byte p1, p1

    or-int/2addr p1, v0

    return p1
.end method

.method private setSize()V
    .locals 5

    .line 50
    iget-byte v0, p0, Lcom/ringdroid/soundfile/Atom;->mVersion:B

    if-ltz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 53
    :goto_0
    iget-object v1, p0, Lcom/ringdroid/soundfile/Atom;->mData:[B

    if-eqz v1, :cond_1

    .line 54
    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_2

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/ringdroid/soundfile/Atom;->mChildren:[Lcom/ringdroid/soundfile/Atom;

    if-eqz v1, :cond_2

    .line 56
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 57
    invoke-virtual {v4}, Lcom/ringdroid/soundfile/Atom;->getSize()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 60
    :cond_2
    :goto_2
    iput v0, p0, Lcom/ringdroid/soundfile/Atom;->mSize:I

    return-void
.end method


# virtual methods
.method public addChild(Lcom/ringdroid/soundfile/Atom;)Z
    .locals 6

    .line 105
    iget-object v0, p0, Lcom/ringdroid/soundfile/Atom;->mData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/ringdroid/soundfile/Atom;->mChildren:[Lcom/ringdroid/soundfile/Atom;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 111
    array-length v3, v0

    add-int/2addr v3, v2

    goto :goto_0

    :cond_1
    move v3, v2

    .line 113
    :goto_0
    new-array v4, v3, [Lcom/ringdroid/soundfile/Atom;

    if-eqz v0, :cond_2

    .line 115
    array-length v5, v0

    invoke-static {v0, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    sub-int/2addr v3, v2

    .line 117
    aput-object p1, v4, v3

    .line 118
    iput-object v4, p0, Lcom/ringdroid/soundfile/Atom;->mChildren:[Lcom/ringdroid/soundfile/Atom;

    .line 119
    invoke-direct {p0}, Lcom/ringdroid/soundfile/Atom;->setSize()V

    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public getBytes()[B
    .locals 8

    .line 145
    iget v0, p0, Lcom/ringdroid/soundfile/Atom;->mSize:I

    new-array v1, v0, [B

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    .line 148
    aput-byte v2, v1, v3

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x1

    .line 149
    aput-byte v2, v1, v4

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x2

    .line 150
    aput-byte v2, v1, v4

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v2, 0x3

    .line 151
    aput-byte v0, v1, v2

    .line 152
    iget v0, p0, Lcom/ringdroid/soundfile/Atom;->mType:I

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x4

    aput-byte v2, v1, v4

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x5

    .line 153
    aput-byte v2, v1, v4

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x6

    .line 154
    aput-byte v2, v1, v4

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v2, 0x7

    .line 155
    aput-byte v0, v1, v2

    .line 156
    iget-byte v0, p0, Lcom/ringdroid/soundfile/Atom;->mVersion:B

    const/16 v2, 0x8

    if-ltz v0, :cond_0

    .line 157
    aput-byte v0, v1, v2

    .line 158
    iget v0, p0, Lcom/ringdroid/soundfile/Atom;->mFlags:I

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/16 v4, 0x9

    aput-byte v2, v1, v4

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/16 v4, 0xa

    .line 159
    aput-byte v2, v1, v4

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/16 v2, 0xb

    .line 160
    aput-byte v0, v1, v2

    const/16 v2, 0xc

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/ringdroid/soundfile/Atom;->mData:[B

    if-eqz v0, :cond_1

    .line 163
    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/ringdroid/soundfile/Atom;->mChildren:[Lcom/ringdroid/soundfile/Atom;

    if-eqz v0, :cond_2

    .line 166
    array-length v4, v0

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    .line 167
    invoke-virtual {v6}, Lcom/ringdroid/soundfile/Atom;->getBytes()[B

    move-result-object v6

    .line 168
    array-length v7, v6

    invoke-static {v6, v3, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    array-length v6, v6

    add-int/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getChild(Ljava/lang/String;)Lcom/ringdroid/soundfile/Atom;
    .locals 8

    .line 127
    iget-object v0, p0, Lcom/ringdroid/soundfile/Atom;->mChildren:[Lcom/ringdroid/soundfile/Atom;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 130
    :cond_0
    const-string v0, "\\."

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 131
    iget-object v0, p0, Lcom/ringdroid/soundfile/Atom;->mChildren:[Lcom/ringdroid/soundfile/Atom;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 132
    invoke-virtual {v5}, Lcom/ringdroid/soundfile/Atom;->getTypeStr()Ljava/lang/String;

    move-result-object v6

    aget-object v7, p1, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 133
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-object v5

    .line 136
    :cond_1
    aget-object p1, p1, v1

    invoke-virtual {v5, p1}, Lcom/ringdroid/soundfile/Atom;->getChild(Ljava/lang/String;)Lcom/ringdroid/soundfile/Atom;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getData()[B
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/ringdroid/soundfile/Atom;->mData:[B

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/ringdroid/soundfile/Atom;->mSize:I

    return v0
.end method

.method public getTypeInt()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/ringdroid/soundfile/Atom;->mType:I

    return v0
.end method

.method public getTypeStr()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ringdroid/soundfile/Atom;->mType:I

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ringdroid/soundfile/Atom;->mType:I

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ringdroid/soundfile/Atom;->mType:I

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ringdroid/soundfile/Atom;->mType:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setData([B)Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/ringdroid/soundfile/Atom;->mChildren:[Lcom/ringdroid/soundfile/Atom;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/ringdroid/soundfile/Atom;->mData:[B

    .line 96
    invoke-direct {p0}, Lcom/ringdroid/soundfile/Atom;->setSize()V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 178
    invoke-virtual {p0}, Lcom/ringdroid/soundfile/Atom;->getBytes()[B

    move-result-object v0

    .line 180
    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    const/16 v4, 0xa

    if-ge v2, v3, :cond_2

    .line 181
    rem-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_0

    if-lez v2, :cond_0

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v4, v0, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "0x%02X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_1

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x7

    if-ge v3, v4, :cond_1

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
