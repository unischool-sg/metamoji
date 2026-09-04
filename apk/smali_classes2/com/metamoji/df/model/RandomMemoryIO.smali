.class public Lcom/metamoji/df/model/RandomMemoryIO;
.super Ljava/lang/Object;
.source "RandomMemoryIO.java"

# interfaces
.implements Lcom/metamoji/df/model/IRandomIO;


# static fields
.field private static final ALLOC_SIZE:I = 0x400


# instance fields
.field private mBuff:[B

.field private mLength:I

.field private mPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mBuff:[B

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mLength:I

    .line 13
    iput v0, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mPos:I

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mBuff:[B

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mLength:I

    .line 13
    iput v0, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mPos:I

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 28
    array-length p2, p1

    add-int/lit16 p2, p2, 0x400

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mBuff:[B

    .line 29
    array-length v1, p1

    invoke-static {p1, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mBuff:[B

    .line 33
    :goto_0
    array-length p1, p1

    iput p1, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mLength:I

    :cond_1
    return-void
.end method

.method private alloc(I)V
    .locals 3

    .line 54
    new-array p1, p1, [B

    .line 55
    iget-object v0, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mBuff:[B

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mLength:I

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 56
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mBuff:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mBuff:[B

    const/4 v0, 0x0

    .line 171
    iput v0, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mPos:I

    iput v0, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mLength:I

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getByteArray(Z)[B
    .locals 0

    if-eqz p1, :cond_1

    .line 45
    iget p1, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mLength:I

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 48
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/RandomMemoryIO;->alloc(I)V

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mBuff:[B

    return-object p1
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget v0, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mLength:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public read([B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget v0, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mLength:I

    iget v1, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mPos:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 110
    :cond_0
    array-length v2, p1

    if-le v2, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 114
    :goto_0
    iget-object v2, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mBuff:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iget p1, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mPos:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mPos:I

    return v0
.end method

.method public seek(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int p1, p1

    .line 94
    iput p1, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mPos:I

    return-void
.end method

.method public setLength(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mBuff:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    long-to-int p1, p1

    add-int/lit16 p1, p1, 0x400

    .line 82
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/RandomMemoryIO;->alloc(I)V

    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 127
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/metamoji/df/model/RandomMemoryIO;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget v0, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mPos:I

    add-int/2addr v0, p3

    .line 141
    iget-object v1, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mBuff:[B

    if-eqz v1, :cond_0

    array-length v1, v1

    if-le v0, v1, :cond_1

    :cond_0
    add-int/lit16 v0, v0, 0x400

    .line 143
    invoke-direct {p0, v0}, Lcom/metamoji/df/model/RandomMemoryIO;->alloc(I)V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mBuff:[B

    iget v1, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mPos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget p1, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mPos:I

    .line 148
    iget p2, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mLength:I

    if-le p1, p2, :cond_2

    .line 149
    iput p1, p0, Lcom/metamoji/df/model/RandomMemoryIO;->mLength:I

    :cond_2
    return-void
.end method
