.class Lcom/metamoji/df/model/StateData$1;
.super Ljava/lang/Object;
.source "StateData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/df/model/StateData;->indexOfFreeBlockInfo(Lcom/metamoji/df/model/StateData$StateDataBlockInfo;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/metamoji/df/model/StateData$StateDataBlockInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/df/model/StateData;


# direct methods
.method constructor <init>(Lcom/metamoji/df/model/StateData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 265
    iput-object p1, p0, Lcom/metamoji/df/model/StateData$1;->this$0:Lcom/metamoji/df/model/StateData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/metamoji/df/model/StateData$StateDataBlockInfo;Lcom/metamoji/df/model/StateData$StateDataBlockInfo;)I
    .locals 7

    .line 267
    iget-wide v0, p1, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->blockSize:J

    iget-wide v2, p2, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->blockSize:J

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    .line 269
    :cond_0
    iget-wide v2, p1, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->blockSize:J

    iget-wide v4, p2, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->blockSize:J

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_1

    return v2

    .line 272
    :cond_1
    iget-wide v3, p1, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->position:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    return v1

    .line 274
    :cond_2
    iget-wide v3, p2, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->position:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    return v2

    .line 276
    :cond_3
    iget-wide v3, p1, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->position:J

    iget-wide v5, p2, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->position:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    return v1

    .line 278
    :cond_4
    iget-wide v0, p1, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->position:J

    iget-wide p1, p2, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;->position:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_5

    return v2

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 265
    check-cast p1, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;

    check-cast p2, Lcom/metamoji/df/model/StateData$StateDataBlockInfo;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/df/model/StateData$1;->compare(Lcom/metamoji/df/model/StateData$StateDataBlockInfo;Lcom/metamoji/df/model/StateData$StateDataBlockInfo;)I

    move-result p1

    return p1
.end method
