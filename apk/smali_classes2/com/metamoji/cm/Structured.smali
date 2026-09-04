.class public Lcom/metamoji/cm/Structured;
.super Ljava/lang/Object;
.source "Structured.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cm/Structured$SInt8LEMember;,
        Lcom/metamoji/cm/Structured$UInt8LEMember;,
        Lcom/metamoji/cm/Structured$SInt16LEMember;,
        Lcom/metamoji/cm/Structured$UInt16LEMember;,
        Lcom/metamoji/cm/Structured$SInt32LEMember;,
        Lcom/metamoji/cm/Structured$UInt32LEMember;,
        Lcom/metamoji/cm/Structured$SInt64LEMember;,
        Lcom/metamoji/cm/Structured$UInt64LEMember;,
        Lcom/metamoji/cm/Structured$Float32LEMember;,
        Lcom/metamoji/cm/Structured$Float64LEMember;,
        Lcom/metamoji/cm/Structured$Member;,
        Lcom/metamoji/cm/Structured$MemberBuilder;
    }
.end annotation


# instance fields
.field private data:[B

.field private offset:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/metamoji/cm/Structured;->data:[B

    .line 22
    iput p2, p0, Lcom/metamoji/cm/Structured;->offset:I

    return-void
.end method


# virtual methods
.method public get(Lcom/metamoji/cm/Structured$SInt8LEMember;)B
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/metamoji/cm/Structured;->data:[B

    iget v1, p0, Lcom/metamoji/cm/Structured;->offset:I

    invoke-virtual {p1}, Lcom/metamoji/cm/Structured$SInt8LEMember;->getOffset()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/metamoji/cm/BytesUtils;->readSInt8LE([BI)B

    move-result p1

    return p1
.end method

.method public get(Lcom/metamoji/cm/Structured$Float64LEMember;)D
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/metamoji/cm/Structured;->data:[B

    iget v1, p0, Lcom/metamoji/cm/Structured;->offset:I

    invoke-virtual {p1}, Lcom/metamoji/cm/Structured$Float64LEMember;->getOffset()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/metamoji/cm/BytesUtils;->readFloat64LE([BI)D

    move-result-wide v0

    return-wide v0
.end method

.method public get(Lcom/metamoji/cm/Structured$Float32LEMember;)F
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/metamoji/cm/Structured;->data:[B

    iget v1, p0, Lcom/metamoji/cm/Structured;->offset:I

    invoke-virtual {p1}, Lcom/metamoji/cm/Structured$Float32LEMember;->getOffset()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/metamoji/cm/BytesUtils;->readFloat32LE([BI)F

    move-result p1

    return p1
.end method

.method public get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/metamoji/cm/Structured;->data:[B

    iget v1, p0, Lcom/metamoji/cm/Structured;->offset:I

    invoke-virtual {p1}, Lcom/metamoji/cm/Structured$SInt32LEMember;->getOffset()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/metamoji/cm/BytesUtils;->readSInt32LE([BI)I

    move-result p1

    return p1
.end method

.method public get(Lcom/metamoji/cm/Structured$UInt16LEMember;)I
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/metamoji/cm/Structured;->data:[B

    iget v1, p0, Lcom/metamoji/cm/Structured;->offset:I

    invoke-virtual {p1}, Lcom/metamoji/cm/Structured$UInt16LEMember;->getOffset()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/metamoji/cm/BytesUtils;->readUInt16LE([BI)I

    move-result p1

    return p1
.end method

.method public get(Lcom/metamoji/cm/Structured$SInt64LEMember;)J
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/metamoji/cm/Structured;->data:[B

    iget v1, p0, Lcom/metamoji/cm/Structured;->offset:I

    invoke-virtual {p1}, Lcom/metamoji/cm/Structured$SInt64LEMember;->getOffset()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/metamoji/cm/BytesUtils;->readSInt64LE([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(Lcom/metamoji/cm/Structured$UInt32LEMember;)J
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/metamoji/cm/Structured;->data:[B

    iget v1, p0, Lcom/metamoji/cm/Structured;->offset:I

    invoke-virtual {p1}, Lcom/metamoji/cm/Structured$UInt32LEMember;->getOffset()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/metamoji/cm/BytesUtils;->readUInt32LE([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(Lcom/metamoji/cm/Structured$UInt64LEMember;)J
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/metamoji/cm/Structured;->data:[B

    iget v1, p0, Lcom/metamoji/cm/Structured;->offset:I

    invoke-virtual {p1}, Lcom/metamoji/cm/Structured$UInt64LEMember;->getOffset()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/metamoji/cm/BytesUtils;->readSInt64LE([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(Lcom/metamoji/cm/Structured$SInt16LEMember;)S
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/metamoji/cm/Structured;->data:[B

    iget v1, p0, Lcom/metamoji/cm/Structured;->offset:I

    invoke-virtual {p1}, Lcom/metamoji/cm/Structured$SInt16LEMember;->getOffset()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/metamoji/cm/BytesUtils;->readSInt16LE([BI)S

    move-result p1

    return p1
.end method

.method public get(Lcom/metamoji/cm/Structured$UInt8LEMember;)S
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/metamoji/cm/Structured;->data:[B

    iget v1, p0, Lcom/metamoji/cm/Structured;->offset:I

    invoke-virtual {p1}, Lcom/metamoji/cm/Structured$UInt8LEMember;->getOffset()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/metamoji/cm/BytesUtils;->readUInt8LE([BI)S

    move-result p1

    return p1
.end method

.method public getData()[B
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/metamoji/cm/Structured;->data:[B

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/metamoji/cm/Structured;->offset:I

    return v0
.end method

.method public reposition(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/metamoji/cm/Structured;->offset:I

    return-void
.end method

.method public reposition([BI)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/metamoji/cm/Structured;->data:[B

    .line 32
    iput p2, p0, Lcom/metamoji/cm/Structured;->offset:I

    return-void
.end method

.method public set(Lcom/metamoji/cm/Structured$Float32LEMember;F)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/metamoji/cm/Structured;->data:[B

    iget v1, p0, Lcom/metamoji/cm/Structured;->offset:I

    invoke-virtual {p1}, Lcom/metamoji/cm/Structured$Float32LEMember;->getOffset()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v0, v1, p2}, Lcom/metamoji/cm/BytesUtils;->writeFloat32LE([BIF)V

    return-void
.end method

.method public set(Lcom/metamoji/cm/Structured$Float64LEMember;D)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/metamoji/cm/Structured;->data:[B

    iget v1, p0, Lcom/metamoji/cm/Structured;->offset:I

    invoke-virtual {p1}, Lcom/metamoji/cm/Structured$Float64LEMember;->getOffset()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v0, v1, p2, p3}, Lcom/metamoji/cm/BytesUtils;->writeFloat64LE([BID)V

    return-void
.end method

.method public set(Lcom/metamoji/cm/Structured$SInt16LEMember;S)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/metamoji/cm/Structured;->data:[B

    iget v1, p0, Lcom/metamoji/cm/Structured;->offset:I

    invoke-virtual {p1}, Lcom/metamoji/cm/Structured$SInt16LEMember;->getOffset()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v0, v1, p2}, Lcom/metamoji/cm/BytesUtils;->writeSInt16LE([BIS)V

    return-void
.end method

.method public set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/metamoji/cm/Structured;->data:[B

    iget v1, p0, Lcom/metamoji/cm/Structured;->offset:I

    invoke-virtual {p1}, Lcom/metamoji/cm/Structured$SInt32LEMember;->getOffset()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v0, v1, p2}, Lcom/metamoji/cm/BytesUtils;->writeSInt32LE([BII)V

    return-void
.end method

.method public set(Lcom/metamoji/cm/Structured$SInt64LEMember;J)V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/metamoji/cm/Structured;->data:[B

    iget v1, p0, Lcom/metamoji/cm/Structured;->offset:I

    invoke-virtual {p1}, Lcom/metamoji/cm/Structured$SInt64LEMember;->getOffset()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v0, v1, p2, p3}, Lcom/metamoji/cm/BytesUtils;->writeSInt64LE([BIJ)V

    return-void
.end method

.method public set(Lcom/metamoji/cm/Structured$SInt8LEMember;B)V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/metamoji/cm/Structured;->data:[B

    iget v1, p0, Lcom/metamoji/cm/Structured;->offset:I

    invoke-virtual {p1}, Lcom/metamoji/cm/Structured$SInt8LEMember;->getOffset()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v0, v1, p2}, Lcom/metamoji/cm/BytesUtils;->writeSInt8LE([BIB)V

    return-void
.end method

.method public set(Lcom/metamoji/cm/Structured$UInt16LEMember;I)V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/metamoji/cm/Structured;->data:[B

    iget v1, p0, Lcom/metamoji/cm/Structured;->offset:I

    invoke-virtual {p1}, Lcom/metamoji/cm/Structured$UInt16LEMember;->getOffset()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v0, v1, p2}, Lcom/metamoji/cm/BytesUtils;->writeUInt16LE([BII)V

    return-void
.end method

.method public set(Lcom/metamoji/cm/Structured$UInt32LEMember;J)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/metamoji/cm/Structured;->data:[B

    iget v1, p0, Lcom/metamoji/cm/Structured;->offset:I

    invoke-virtual {p1}, Lcom/metamoji/cm/Structured$UInt32LEMember;->getOffset()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v0, v1, p2, p3}, Lcom/metamoji/cm/BytesUtils;->writeUInt32LE([BIJ)V

    return-void
.end method

.method public set(Lcom/metamoji/cm/Structured$UInt64LEMember;J)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/metamoji/cm/Structured;->data:[B

    iget v1, p0, Lcom/metamoji/cm/Structured;->offset:I

    invoke-virtual {p1}, Lcom/metamoji/cm/Structured$UInt64LEMember;->getOffset()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v0, v1, p2, p3}, Lcom/metamoji/cm/BytesUtils;->writeSInt64LE([BIJ)V

    return-void
.end method

.method public set(Lcom/metamoji/cm/Structured$UInt8LEMember;S)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/metamoji/cm/Structured;->data:[B

    iget v1, p0, Lcom/metamoji/cm/Structured;->offset:I

    invoke-virtual {p1}, Lcom/metamoji/cm/Structured$UInt8LEMember;->getOffset()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v0, v1, p2}, Lcom/metamoji/cm/BytesUtils;->writeUInt8LE([BIS)V

    return-void
.end method
