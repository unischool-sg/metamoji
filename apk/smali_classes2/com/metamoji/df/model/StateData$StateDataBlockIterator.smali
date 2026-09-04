.class Lcom/metamoji/df/model/StateData$StateDataBlockIterator;
.super Ljava/lang/Object;
.source "StateData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/model/StateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateDataBlockIterator"
.end annotation


# static fields
.field private static final BLOCK_ITERATOR_WINDOW_SIZE:I = 0x1000


# instance fields
.field blockSize:J

.field currentPosition:J

.field private file:Lcom/metamoji/df/model/IRandomIO;

.field lastPosition:J

.field nextPosition:J

.field final synthetic this$0:Lcom/metamoji/df/model/StateData;

.field usedSize:J

.field window:[B

.field windowPosition:J


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/StateData;Lcom/metamoji/df/model/IRandomIO;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->this$0:Lcom/metamoji/df/model/StateData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p2, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->file:Lcom/metamoji/df/model/IRandomIO;

    .line 102
    iput-wide p3, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->nextPosition:J

    const-wide/16 p3, -0x1

    .line 103
    iput-wide p3, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->windowPosition:J

    const/4 p1, 0x0

    .line 104
    iput-object p1, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->window:[B

    .line 105
    invoke-interface {p2}, Lcom/metamoji/df/model/IRandomIO;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->lastPosition:J

    .line 107
    iput-wide p3, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->currentPosition:J

    const-wide/16 p1, 0x0

    .line 108
    iput-wide p1, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->blockSize:J

    .line 109
    iput-wide p1, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->usedSize:J

    return-void
.end method


# virtual methods
.method public getBlockSize()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->blockSize:J

    return-wide v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 144
    iget-wide v0, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->currentPosition:J

    return-wide v0
.end method

.method public getUsedSize()J
    .locals 2

    .line 158
    iget-wide v0, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->usedSize:J

    return-wide v0
.end method

.method public next()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-wide v0, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->nextPosition:J

    iput-wide v0, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->currentPosition:J

    const-wide/16 v2, 0x8

    add-long v4, v0, v2

    .line 114
    iget-wide v6, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->lastPosition:J

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-lez v4, :cond_0

    return v5

    .line 119
    :cond_0
    iget-object v4, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->window:[B

    if-eqz v4, :cond_1

    iget-wide v6, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->windowPosition:J

    array-length v4, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    add-long v8, v0, v2

    cmp-long v4, v6, v8

    if-gez v4, :cond_4

    .line 120
    :cond_1
    iget-object v4, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->file:Lcom/metamoji/df/model/IRandomIO;

    invoke-interface {v4, v0, v1}, Lcom/metamoji/df/model/IRandomIO;->seek(J)V

    .line 121
    iget-wide v0, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->currentPosition:J

    iput-wide v0, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->windowPosition:J

    .line 122
    iget-object v0, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->window:[B

    const/16 v1, 0x1000

    if-eqz v0, :cond_2

    array-length v0, v0

    if-eq v0, v1, :cond_3

    .line 123
    :cond_2
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->window:[B

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->file:Lcom/metamoji/df/model/IRandomIO;

    iget-object v4, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->window:[B

    invoke-interface {v0, v4}, Lcom/metamoji/df/model/IRandomIO;->read([B)I

    move-result v0

    if-ge v0, v1, :cond_4

    .line 127
    new-array v1, v0, [B

    .line 128
    iget-object v4, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->window:[B

    invoke-static {v4, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iput-object v1, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->window:[B

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->window:[B

    iget-wide v4, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->currentPosition:J

    iget-wide v6, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->windowPosition:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    invoke-static {v0, v1}, Lcom/metamoji/cm/BytesUtils;->readUInt32LE([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->blockSize:J

    .line 134
    iget-object v0, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->window:[B

    iget-wide v4, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->currentPosition:J

    iget-wide v6, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->windowPosition:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    long-to-int v1, v4

    invoke-static {v0, v1}, Lcom/metamoji/cm/BytesUtils;->readUInt32LE([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->usedSize:J

    .line 135
    iget-wide v0, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->currentPosition:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->blockSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/metamoji/df/model/StateData$StateDataBlockIterator;->nextPosition:J

    const/4 v0, 0x1

    return v0
.end method
