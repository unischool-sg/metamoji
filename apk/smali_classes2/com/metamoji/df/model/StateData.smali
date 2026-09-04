.class public Lcom/metamoji/df/model/StateData;
.super Ljava/lang/Object;
.source "StateData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/model/StateData$StateDataBlockIterator;,
        Lcom/metamoji/df/model/StateData$StateDataBlockInfo;
    }
.end annotation


# static fields
.field public static final INVALID_STATE_DATA_POSITION:J = -0x1L

.field public static final INVALID_STATE_DATA_SIZE:J = 0xffffffffL

.field private static final MIN_BLOCK_SIZE:J = 0x40L

.field private static final SIZE_OF_STATE_DATA_SIZE:I = 0x4


# instance fields
.field private file:Lcom/metamoji/df/model/IRandomIO;

.field private freeBlockInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/StateData$StateDataBlockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private header:Lcom/metamoji/df/model/StateDataHeader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    .line 168
    new-instance v1, Lcom/metamoji/df/model/StateDataHeader;

    invoke-direct {v1}, Lcom/metamoji/df/model/StateDataHeader;-><init>()V

    iput-object v1, p0, Lcom/metamoji/df/model/StateData;->header:Lcom/metamoji/df/model/StateDataHeader;

    .line 169
    iput-object v0, p0, Lcom/metamoji/df/model/StateData;->freeBlockInfoList:Ljava/util/List;

    return-void
.end method

.method private addFreeBlockInfo(JJ)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/metamoji/df/model/StateData;->freeBlockInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/df/model/StateData;->addFreeBlockInfoCore(JJ)V

    return-void
.end method

.method private addFreeBlockInfoCore(JJ)V
    .locals 2

    .line 295
    new-instance v0, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;-><init>(Lcom/metamoji/df/model/StateData;Lcom/metamoji/df/model/StateData-IA;)V

    .line 296
    iput-wide p1, v0, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->position:J

    .line 297
    iput-wide p3, v0, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->blockSize:J

    .line 298
    invoke-direct {p0, v0}, Lcom/metamoji/df/model/StateData;->indexOfFreeBlockInfo(Lcom/metamoji/df/model/StateData$StateDataBlockInfo;)I

    move-result p1

    .line 299
    iget-object p2, p0, Lcom/metamoji/df/model/StateData;->freeBlockInfoList:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private static calcSuitableBlockSize(J)J
    .locals 6

    const-wide/16 v0, 0x40

    cmp-long v2, v0, p0

    if-gez v2, :cond_2

    const-wide/32 v0, 0x80000

    add-long/2addr v0, p0

    const-wide/16 v2, 0x1

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-lez v4, :cond_1

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    .line 497
    div-long/2addr p0, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-wide v0

    :cond_1
    return-wide v2

    :cond_2
    return-wide v0
.end method

.method private createCore()Z
    .locals 4

    .line 334
    invoke-virtual {p0}, Lcom/metamoji/df/model/StateData;->updateHeader()V

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    const-wide/16 v1, 0x2a

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IRandomIO;->setLength(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 338
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "MD0004"

    const-string v3, "IOException occurred in createFile"

    invoke-direct {v1, v2, v3, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private indexOfFreeBlockInfo(Lcom/metamoji/df/model/StateData$StateDataBlockInfo;)I
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/metamoji/df/model/StateData;->freeBlockInfoList:Ljava/util/List;

    new-instance v1, Lcom/metamoji/df/model/StateData$1;

    invoke-direct {v1, p0}, Lcom/metamoji/df/model/StateData$1;-><init>(Lcom/metamoji/df/model/StateData;)V

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    return p1
.end method

.method private makeFreeBlockInfo()V
    .locals 5

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/model/StateData;->freeBlockInfoList:Ljava/util/List;

    .line 192
    :try_start_0
    new-instance v0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;

    iget-object v1, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    iget-object v2, p0, Lcom/metamoji/df/model/StateData;->header:Lcom/metamoji/df/model/StateDataHeader;

    invoke-virtual {v2}, Lcom/metamoji/df/model/StateDataHeader;->getHeaderSize()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;-><init>(Lcom/metamoji/df/model/StateData;Lcom/metamoji/df/model/IRandomIO;J)V

    .line 193
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->getUsedSize()J

    move-result-wide v1

    const-wide v3, 0xffffffffL

    cmp-long v1, v3, v1

    if-nez v1, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->getCurrentPosition()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->getBlockSize()J

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/metamoji/df/model/StateData;->addFreeBlockInfoCore(JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 199
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "MD0001"

    const-string v3, "IOException occurred in makeFreeBlockInfo"

    invoke-direct {v1, v2, v3, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private openFileCore()Z
    .locals 5

    const/16 v0, 0x2a

    .line 427
    :try_start_0
    new-array v1, v0, [B

    .line 428
    iget-object v2, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/metamoji/df/model/IRandomIO;->seek(J)V

    .line 429
    iget-object v2, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    invoke-interface {v2, v1}, Lcom/metamoji/df/model/IRandomIO;->read([B)I

    move-result v2

    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    .line 430
    const-string v0, "failed to openFileCore - header length error"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return v3

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/model/StateData;->header:Lcom/metamoji/df/model/StateDataHeader;

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/df/model/StateDataHeader;->readFromBytes([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 435
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "MD0003"

    const-string v3, "IOException occurred in reading file header"

    invoke-direct {v1, v2, v3, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readBlockSize(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    invoke-interface {v0, p1, p2}, Lcom/metamoji/df/model/IRandomIO;->seek(J)V

    const/4 p1, 0x4

    .line 508
    new-array p1, p1, [B

    .line 509
    iget-object p2, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IRandomIO;->read([B)I

    const/4 p2, 0x0

    .line 510
    invoke-static {p1, p2}, Lcom/metamoji/cm/BytesUtils;->readUInt32LE([BI)J

    move-result-wide p1

    return-wide p1
.end method

.method private removeFreeBlockInfo(JJ)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/metamoji/df/model/StateData;->freeBlockInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    new-instance v0, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;-><init>(Lcom/metamoji/df/model/StateData;Lcom/metamoji/df/model/StateData-IA;)V

    .line 226
    iput-wide p1, v0, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->position:J

    .line 227
    iput-wide p3, v0, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->blockSize:J

    .line 228
    invoke-direct {p0, v0}, Lcom/metamoji/df/model/StateData;->indexOfFreeBlockInfo(Lcom/metamoji/df/model/StateData$StateDataBlockInfo;)I

    move-result p1

    .line 229
    iget-object p2, p0, Lcom/metamoji/df/model/StateData;->freeBlockInfoList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 230
    iget-object p2, p0, Lcom/metamoji/df/model/StateData;->freeBlockInfoList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;

    .line 231
    iget-wide p2, p2, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->position:J

    iget-wide v0, v0, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->position:J

    cmp-long p2, p2, v0

    if-nez p2, :cond_1

    .line 232
    iget-object p2, p0, Lcom/metamoji/df/model/StateData;->freeBlockInfoList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private searchFreeBlock(J)Lcom/metamoji/df/model/StateData$StateDataBlockInfo;
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/metamoji/df/model/StateData;->freeBlockInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/metamoji/df/model/StateData;->makeFreeBlockInfo()V

    .line 248
    :cond_0
    new-instance v0, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;-><init>(Lcom/metamoji/df/model/StateData;Lcom/metamoji/df/model/StateData-IA;)V

    const-wide/16 v2, -0x1

    .line 249
    iput-wide v2, v0, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->position:J

    .line 250
    iput-wide p1, v0, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->blockSize:J

    .line 251
    invoke-direct {p0, v0}, Lcom/metamoji/df/model/StateData;->indexOfFreeBlockInfo(Lcom/metamoji/df/model/StateData$StateDataBlockInfo;)I

    move-result p1

    .line 252
    iget-object p2, p0, Lcom/metamoji/df/model/StateData;->freeBlockInfoList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 253
    iget-object p2, p0, Lcom/metamoji/df/model/StateData;->freeBlockInfoList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;

    return-object p1

    :cond_1
    return-object v1
.end method

.method private writeBlock(JLjava/lang/Long;Ljava/lang/Long;Lcom/metamoji/df/model/ByteData;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    invoke-interface {v0, p1, p2}, Lcom/metamoji/df/model/IRandomIO;->seek(J)V

    const/4 v0, 0x4

    const-wide/16 v1, 0x4

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 517
    new-array v4, v0, [B

    .line 518
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v3, v5, v6}, Lcom/metamoji/cm/BytesUtils;->writeUInt32LE([BIJ)V

    .line 519
    iget-object p3, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    invoke-interface {p3, v4}, Lcom/metamoji/df/model/IRandomIO;->write([B)V

    goto :goto_0

    :cond_0
    add-long/2addr p1, v1

    .line 522
    iget-object p3, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    invoke-interface {p3, p1, p2}, Lcom/metamoji/df/model/IRandomIO;->seek(J)V

    :goto_0
    if-eqz p4, :cond_1

    .line 526
    new-array p1, v0, [B

    .line 527
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-static {p1, v3, p2, p3}, Lcom/metamoji/cm/BytesUtils;->writeUInt32LE([BIJ)V

    .line 528
    iget-object p2, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IRandomIO;->write([B)V

    goto :goto_1

    :cond_1
    add-long/2addr p1, v1

    .line 531
    iget-object p3, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    invoke-interface {p3, p1, p2}, Lcom/metamoji/df/model/IRandomIO;->seek(J)V

    :goto_1
    if-eqz p5, :cond_2

    .line 535
    iget-object p1, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    invoke-virtual {p5}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object p2

    invoke-virtual {p5}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result p3

    invoke-interface {p1, p2, v3, p3}, Lcom/metamoji/df/model/IRandomIO;->write([BII)V

    if-lez p6, :cond_2

    .line 537
    new-array p1, p6, [B

    .line 538
    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 539
    iget-object p2, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IRandomIO;->write([B)V

    :cond_2
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 9

    .line 664
    iget-object v0, p0, Lcom/metamoji/df/model/StateData;->freeBlockInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 665
    iput-object v0, p0, Lcom/metamoji/df/model/StateData;->freeBlockInfoList:Ljava/util/List;

    .line 670
    :cond_0
    :try_start_0
    new-instance v0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;

    iget-object v1, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    iget-object v2, p0, Lcom/metamoji/df/model/StateData;->header:Lcom/metamoji/df/model/StateDataHeader;

    invoke-virtual {v2}, Lcom/metamoji/df/model/StateDataHeader;->getHeaderSize()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;-><init>(Lcom/metamoji/df/model/StateData;Lcom/metamoji/df/model/IRandomIO;J)V

    const-wide/16 v1, -0x1

    :goto_0
    move-wide v3, v1

    .line 671
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->next()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 672
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->getUsedSize()J

    move-result-wide v5

    const-wide v7, 0xffffffffL

    cmp-long v5, v7, v5

    if-nez v5, :cond_2

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 674
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->getCurrentPosition()J

    move-result-wide v3

    goto :goto_1

    :cond_2
    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 679
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->getCurrentPosition()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v7, 0x8

    sub-long/2addr v5, v7

    .line 680
    iget-object v7, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    invoke-interface {v7, v3, v4}, Lcom/metamoji/df/model/IRandomIO;->seek(J)V

    const/4 v3, 0x4

    .line 681
    new-array v3, v3, [B

    const/4 v4, 0x0

    .line 682
    invoke-static {v3, v4, v5, v6}, Lcom/metamoji/cm/BytesUtils;->writeUInt32LE([BIJ)V

    .line 683
    iget-object v4, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    invoke-interface {v4, v3}, Lcom/metamoji/df/model/IRandomIO;->write([B)V

    goto :goto_0

    :cond_3
    cmp-long v0, v1, v3

    if-eqz v0, :cond_4

    .line 689
    iget-object v0, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    invoke-interface {v0, v3, v4}, Lcom/metamoji/df/model/IRandomIO;->setLength(J)V

    .line 690
    invoke-virtual {p0}, Lcom/metamoji/df/model/StateData;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception v0

    .line 693
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "MD0009"

    const-string v3, "IOException occurred in cleanup"

    invoke-direct {v1, v2, v3, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createFile(Ljava/io/File;)Z
    .locals 2

    .line 311
    :try_start_0
    new-instance v0, Lcom/metamoji/df/model/RandomFileIO;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Lcom/metamoji/df/model/RandomFileIO;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    invoke-direct {p0}, Lcom/metamoji/df/model/StateData;->createCore()Z

    move-result p1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public createWithBuffer()Z
    .locals 1

    .line 324
    new-instance v0, Lcom/metamoji/df/model/RandomMemoryIO;

    invoke-direct {v0}, Lcom/metamoji/df/model/RandomMemoryIO;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    .line 325
    invoke-direct {p0}, Lcom/metamoji/df/model/StateData;->createCore()Z

    move-result v0

    return v0
.end method

.method public deleteData(J)V
    .locals 11

    .line 625
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/model/StateData;->readBlockSize(J)J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    .line 626
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move-wide v5, p1

    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/metamoji/df/model/StateData;->writeBlock(JLjava/lang/Long;Ljava/lang/Long;Lcom/metamoji/df/model/ByteData;I)V

    .line 627
    invoke-direct {p0, v5, v6, v0, v1}, Lcom/metamoji/df/model/StateData;->addFreeBlockInfo(JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, p0

    :goto_0
    move-object p1, v0

    .line 629
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string v0, "MD0007"

    const-string v1, "IOException occurred in deleteData"

    invoke-direct {p2, v0, v1, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public destroy()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    if-eqz v0, :cond_0

    .line 175
    :try_start_0
    invoke-interface {v0}, Lcom/metamoji/df/model/IRandomIO;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 177
    const-string v1, "StateData.destroy error in close() "

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    :cond_0
    return-void
.end method

.method public didReceiveMemoryWarning()V
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/metamoji/df/model/StateData;->freeBlockInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 716
    iput-object v0, p0, Lcom/metamoji/df/model/StateData;->freeBlockInfoList:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 4

    .line 703
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    invoke-interface {v0}, Lcom/metamoji/df/model/IRandomIO;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 705
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "MD0010"

    const-string v3, "IOException occurred in cleanup"

    invoke-direct {v1, v2, v3, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getHeader()Lcom/metamoji/df/model/StateDataHeader;
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/metamoji/df/model/StateData;->header:Lcom/metamoji/df/model/StateDataHeader;

    return-object v0
.end method

.method public getResultBuffer()[B
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    instance-of v1, v0, Lcom/metamoji/df/model/RandomMemoryIO;

    if-eqz v1, :cond_0

    .line 414
    check-cast v0, Lcom/metamoji/df/model/RandomMemoryIO;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/RandomMemoryIO;->getByteArray(Z)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public openCore()Z
    .locals 5

    .line 383
    :try_start_0
    sget-object v0, Lcom/metamoji/df/model/StateDataHeader;->FILEID_V1:[B

    array-length v0, v0

    new-array v1, v0, [B

    .line 384
    iget-object v2, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/metamoji/df/model/IRandomIO;->seek(J)V

    .line 385
    iget-object v2, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    invoke-interface {v2, v1}, Lcom/metamoji/df/model/IRandomIO;->read([B)I

    move-result v2

    if-lt v2, v0, :cond_0

    .line 387
    sget-object v0, Lcom/metamoji/df/model/StateDataHeader;->FILEID_V1:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/metamoji/df/model/StateData;->openFileCore()Z

    move-result v0

    if-nez v0, :cond_1

    .line 390
    const-string v1, "failed to openFileCore"

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 401
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    invoke-interface {v1}, Lcom/metamoji/df/model/IRandomIO;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const/4 v1, 0x0

    .line 405
    iput-object v1, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    :cond_2
    return v0

    :catch_1
    move-exception v0

    .line 396
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "MD0002"

    const-string v3, "IOException occurred in openCore"

    invoke-direct {v1, v2, v3, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public openFile(Ljava/io/File;Z)Z
    .locals 2

    .line 351
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 356
    :try_start_0
    const-string p2, "r"

    goto :goto_0

    :cond_1
    const-string p2, "rw"

    .line 357
    :goto_0
    new-instance v0, Lcom/metamoji/df/model/RandomFileIO;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/df/model/RandomFileIO;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    invoke-virtual {p0}, Lcom/metamoji/df/model/StateData;->openCore()Z

    move-result p1

    return p1

    .line 359
    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "failed to openFile: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public openWithBuffer([BZ)Z
    .locals 1

    .line 374
    new-instance v0, Lcom/metamoji/df/model/RandomMemoryIO;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/df/model/RandomMemoryIO;-><init>([BZ)V

    iput-object v0, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    .line 375
    invoke-virtual {p0}, Lcom/metamoji/df/model/StateData;->openCore()Z

    move-result p1

    return p1
.end method

.method public readData(J)[B
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 451
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    const-wide/16 v1, 0x4

    add-long/2addr v1, p1

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IRandomIO;->seek(J)V

    const/4 v0, 0x4

    .line 452
    new-array v1, v0, [B

    .line 453
    iget-object v2, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    invoke-interface {v2, v1}, Lcom/metamoji/df/model/IRandomIO;->read([B)I

    move-result v2

    if-ne v2, v0, :cond_2

    const/4 v0, 0x0

    .line 458
    invoke-static {v1, v0}, Lcom/metamoji/cm/BytesUtils;->readUInt32LE([BI)J

    move-result-wide v0

    long-to-int v0, v0

    .line 459
    new-array v1, v0, [B

    .line 460
    iget-object v2, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    invoke-interface {v2, v1}, Lcom/metamoji/df/model/IRandomIO;->read([B)I

    move-result v2

    if-ne v2, v0, :cond_1

    return-object v1

    .line 462
    :cond_1
    const-string v0, "StateData: read block size is smaller than requested one at %d"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "MD0039"

    const-string v0, "cannot read block data completely (possibly the data is corrupted)"

    invoke-direct {p1, p2, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 455
    :cond_2
    const-string v0, "StateData: cannot read block size at %d"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "MD0038"

    const-string v0, "cannot read block size (possibly the data is corrupted)"

    invoke-direct {p1, p2, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 468
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string v0, "MD0005"

    const-string v1, "IOException occurred in readData"

    invoke-direct {p2, v0, v1, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public updateHeader()V
    .locals 4

    const/16 v0, 0x2a

    .line 647
    :try_start_0
    new-array v0, v0, [B

    .line 648
    iget-object v1, p0, Lcom/metamoji/df/model/StateData;->header:Lcom/metamoji/df/model/StateDataHeader;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/df/model/StateDataHeader;->writeToBytes([BI)V

    .line 649
    iget-object v1, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/metamoji/df/model/IRandomIO;->seek(J)V

    .line 650
    iget-object v1, p0, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IRandomIO;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 652
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "MD0008"

    const-string v3, "IOException occurred in updateHeader"

    invoke-direct {v1, v2, v3, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeData(Lcom/metamoji/df/model/ByteData;J)J
    .locals 6

    const-wide v4, 0xffffffffL

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 480
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public writeData(Lcom/metamoji/df/model/ByteData;JJ)J
    .locals 19

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    .line 554
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v0

    int-to-long v8, v0

    const-wide/16 v4, -0x1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide v10, 0xffffffffL

    if-eqz v0, :cond_2

    .line 559
    invoke-direct {v1, v2, v3}, Lcom/metamoji/df/model/StateData;->readBlockSize(J)J

    move-result-wide v4

    cmp-long v6, v8, v4

    if-gtz v6, :cond_1

    .line 562
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/df/model/StateData;->writeBlock(JLjava/lang/Long;Ljava/lang/Long;Lcom/metamoji/df/model/ByteData;I)V

    return-wide p2

    :cond_1
    move-wide v12, v4

    goto :goto_1

    :cond_2
    move-wide v12, v10

    .line 569
    :goto_1
    invoke-direct {v1, v8, v9}, Lcom/metamoji/df/model/StateData;->searchFreeBlock(J)Lcom/metamoji/df/model/StateData$StateDataBlockInfo;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 572
    iget-wide v2, v14, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->position:J

    .line 574
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/df/model/StateData;->writeBlock(JLjava/lang/Long;Ljava/lang/Long;Lcom/metamoji/df/model/ByteData;I)V

    .line 577
    iget-wide v4, v14, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->blockSize:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/metamoji/df/model/StateData;->removeFreeBlockInfo(JJ)V

    .line 580
    invoke-static {v8, v9}, Lcom/metamoji/df/model/StateData;->calcSuitableBlockSize(J)J

    move-result-wide v8

    .line 581
    iget-wide v4, v14, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->blockSize:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_6

    iget-wide v4, v14, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->blockSize:J

    sub-long/2addr v4, v8

    const-wide/16 v6, 0x48

    cmp-long v4, v4, v6

    if-ltz v4, :cond_6

    .line 584
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/df/model/StateData;->writeBlock(JLjava/lang/Long;Ljava/lang/Long;Lcom/metamoji/df/model/ByteData;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-wide v15, v2

    const-wide/16 v1, 0x8

    add-long v3, v15, v1

    add-long/2addr v3, v8

    .line 588
    :try_start_1
    iget-wide v5, v14, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->blockSize:J

    add-long/2addr v8, v1

    sub-long v8, v5, v8

    move-wide v2, v3

    .line 590
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    :try_start_2
    invoke-direct/range {v1 .. v7}, Lcom/metamoji/df/model/StateData;->writeBlock(JLjava/lang/Long;Ljava/lang/Long;Lcom/metamoji/df/model/ByteData;I)V

    .line 593
    invoke-direct {v1, v2, v3, v8, v9}, Lcom/metamoji/df/model/StateData;->addFreeBlockInfo(JJ)V

    goto :goto_4

    :cond_3
    cmp-long v2, p4, v10

    if-eqz v2, :cond_5

    cmp-long v2, p4, v8

    if-gez v2, :cond_4

    goto :goto_2

    :cond_4
    move-wide/from16 v2, p4

    goto :goto_3

    .line 598
    :cond_5
    :goto_2
    invoke-static {v8, v9}, Lcom/metamoji/df/model/StateData;->calcSuitableBlockSize(J)J

    move-result-wide v2

    .line 601
    :goto_3
    iget-object v4, v1, Lcom/metamoji/df/model/StateData;->file:Lcom/metamoji/df/model/IRandomIO;

    invoke-interface {v4}, Lcom/metamoji/df/model/IRandomIO;->length()J

    move-result-wide v4

    move-wide/from16 v17, v4

    move-wide v5, v2

    move-wide/from16 v2, v17

    .line 602
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-wide v6, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sub-long/2addr v6, v8

    long-to-int v7, v6

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/df/model/StateData;->writeBlock(JLjava/lang/Long;Ljava/lang/Long;Lcom/metamoji/df/model/ByteData;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_6
    move-wide v15, v2

    :goto_4
    if-eqz v0, :cond_7

    .line 609
    :try_start_3
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    :try_start_4
    invoke-direct/range {v1 .. v7}, Lcom/metamoji/df/model/StateData;->writeBlock(JLjava/lang/Long;Ljava/lang/Long;Lcom/metamoji/df/model/ByteData;I)V

    .line 610
    invoke-direct {v1, v2, v3, v12, v13}, Lcom/metamoji/df/model/StateData;->addFreeBlockInfo(JJ)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    return-wide v15

    :catch_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_5

    :cond_7
    move-object/from16 v1, p0

    return-wide v15

    :catch_1
    move-exception v0

    .line 615
    :goto_5
    new-instance v2, Lcom/metamoji/cm/CmException;

    const-string v3, "MD0006"

    const-string v4, "IOException occurred in writeData"

    invoke-direct {v2, v3, v4, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
