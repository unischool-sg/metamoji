.class public Lcom/metamoji/df/model/StateDataHeader;
.super Ljava/lang/Object;
.source "StateDataHeader.java"


# static fields
.field public static final FILEID_V1:[B

.field public static final SIZE_OF_HEADER:I = 0x2a


# instance fields
.field private extraTablePos:J

.field private fileIDAndVersion:[B

.field private formatVersion:I

.field private headerSize:I

.field private modelTablePos:J

.field private undoTablePos:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    .line 20
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/metamoji/df/model/StateDataHeader;->FILEID_V1:[B

    return-void

    :array_0
    .array-data 1
        0x4dt
        0x4dt
        0x4at
        0x44t
        0x72t
        0x61t
        0x77t
        0x4dt
        0x6ft
        0x64t
        0x65t
        0x6ct
        0x73t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/metamoji/df/model/StateDataHeader;->FILEID_V1:[B

    iput-object v0, p0, Lcom/metamoji/df/model/StateDataHeader;->fileIDAndVersion:[B

    const/16 v0, 0x2a

    .line 37
    iput v0, p0, Lcom/metamoji/df/model/StateDataHeader;->headerSize:I

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/metamoji/df/model/StateDataHeader;->formatVersion:I

    const-wide/16 v0, -0x1

    .line 39
    iput-wide v0, p0, Lcom/metamoji/df/model/StateDataHeader;->modelTablePos:J

    .line 40
    iput-wide v0, p0, Lcom/metamoji/df/model/StateDataHeader;->undoTablePos:J

    .line 41
    iput-wide v0, p0, Lcom/metamoji/df/model/StateDataHeader;->extraTablePos:J

    return-void
.end method


# virtual methods
.method public getExtraTablePos()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/metamoji/df/model/StateDataHeader;->extraTablePos:J

    return-wide v0
.end method

.method public getFileIDAndVersion()[B
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/metamoji/df/model/StateDataHeader;->fileIDAndVersion:[B

    return-object v0
.end method

.method public getFormatVersion()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/metamoji/df/model/StateDataHeader;->formatVersion:I

    return v0
.end method

.method public getHeaderSize()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/metamoji/df/model/StateDataHeader;->headerSize:I

    return v0
.end method

.method public getModelTablePos()J
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/metamoji/df/model/StateDataHeader;->modelTablePos:J

    return-wide v0
.end method

.method public getUndoTablePos()J
    .locals 2

    .line 114
    iget-wide v0, p0, Lcom/metamoji/df/model/StateDataHeader;->undoTablePos:J

    return-wide v0
.end method

.method public readFromBytes([BI)V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/metamoji/df/model/StateDataHeader;->fileIDAndVersion:[B

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p2, 0xe

    .line 175
    invoke-static {p1, v0}, Lcom/metamoji/cm/BytesUtils;->readUInt16LE([BI)I

    move-result v0

    iput v0, p0, Lcom/metamoji/df/model/StateDataHeader;->headerSize:I

    add-int/lit8 v0, p2, 0x10

    .line 178
    invoke-static {p1, v0}, Lcom/metamoji/cm/BytesUtils;->readUInt16LE([BI)I

    move-result v0

    iput v0, p0, Lcom/metamoji/df/model/StateDataHeader;->formatVersion:I

    add-int/lit8 v0, p2, 0x12

    .line 181
    invoke-static {p1, v0}, Lcom/metamoji/cm/BytesUtils;->readSInt64LE([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/df/model/StateDataHeader;->modelTablePos:J

    add-int/lit8 v0, p2, 0x1a

    .line 184
    invoke-static {p1, v0}, Lcom/metamoji/cm/BytesUtils;->readSInt64LE([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/df/model/StateDataHeader;->undoTablePos:J

    add-int/lit8 p2, p2, 0x22

    .line 187
    invoke-static {p1, p2}, Lcom/metamoji/cm/BytesUtils;->readSInt64LE([BI)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/metamoji/df/model/StateDataHeader;->extraTablePos:J

    return-void
.end method

.method public setExtraTablePos(J)V
    .locals 0

    .line 138
    iput-wide p1, p0, Lcom/metamoji/df/model/StateDataHeader;->extraTablePos:J

    return-void
.end method

.method public setFormatVersion(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/metamoji/df/model/StateDataHeader;->formatVersion:I

    return-void
.end method

.method public setHeaderSize(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/metamoji/df/model/StateDataHeader;->headerSize:I

    return-void
.end method

.method public setModelTablePos(J)V
    .locals 0

    .line 106
    iput-wide p1, p0, Lcom/metamoji/df/model/StateDataHeader;->modelTablePos:J

    return-void
.end method

.method public setUndoTablePos(J)V
    .locals 0

    .line 122
    iput-wide p1, p0, Lcom/metamoji/df/model/StateDataHeader;->undoTablePos:J

    return-void
.end method

.method public writeToBytes([BI)V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/metamoji/df/model/StateDataHeader;->fileIDAndVersion:[B

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p2, 0xe

    .line 150
    iget v1, p0, Lcom/metamoji/df/model/StateDataHeader;->headerSize:I

    invoke-static {p1, v0, v1}, Lcom/metamoji/cm/BytesUtils;->writeUInt16LE([BII)V

    add-int/lit8 v0, p2, 0x10

    .line 153
    iget v1, p0, Lcom/metamoji/df/model/StateDataHeader;->formatVersion:I

    invoke-static {p1, v0, v1}, Lcom/metamoji/cm/BytesUtils;->writeUInt16LE([BII)V

    add-int/lit8 v0, p2, 0x12

    .line 156
    iget-wide v1, p0, Lcom/metamoji/df/model/StateDataHeader;->modelTablePos:J

    invoke-static {p1, v0, v1, v2}, Lcom/metamoji/cm/BytesUtils;->writeSInt64LE([BIJ)V

    add-int/lit8 v0, p2, 0x1a

    .line 159
    iget-wide v1, p0, Lcom/metamoji/df/model/StateDataHeader;->undoTablePos:J

    invoke-static {p1, v0, v1, v2}, Lcom/metamoji/cm/BytesUtils;->writeSInt64LE([BIJ)V

    add-int/lit8 p2, p2, 0x22

    .line 162
    iget-wide v0, p0, Lcom/metamoji/df/model/StateDataHeader;->extraTablePos:J

    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/cm/BytesUtils;->writeSInt64LE([BIJ)V

    return-void
.end method
