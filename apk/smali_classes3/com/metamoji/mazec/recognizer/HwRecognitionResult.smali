.class public Lcom/metamoji/mazec/recognizer/HwRecognitionResult;
.super Ljava/lang/Object;
.source "HwRecognitionResult.java"


# instance fields
.field private hHwrResult:J

.field private mCandidatess:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/mazec/recognizer/HwCandidates;",
            ">;"
        }
    .end annotation
.end field

.field private mRetrievedFlag:Z

.field private mStrokeBlocks:[Lcom/metamoji/mazec/stroke/StrokeBlock;

.field private mTopCandidateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mStrokeBlocks:[Lcom/metamoji/mazec/stroke/StrokeBlock;

    .line 19
    iput-object v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mTopCandidateString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mRetrievedFlag:Z

    .line 28
    iput-wide p1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->hHwrResult:J

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mCandidatess:Ljava/util/ArrayList;

    return-void
.end method

.method private retrieveResult()V
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mCandidatess:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 64
    iget-wide v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->hHwrResult:J

    invoke-static {v0, v1}, Lcom/metamoji/mazec/MazecRACLibJNI;->HwRecognitionResult_getCandidatesCount(J)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 66
    iget-wide v3, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->hHwrResult:J

    invoke-static {v3, v4, v2}, Lcom/metamoji/mazec/MazecRACLibJNI;->HwRecognitionResult_getCandidatesAt(JI)Lcom/metamoji/mazec/recognizer/HwCandidates;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    iget-object v4, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mCandidatess:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_1
    :goto_1
    iget-wide v2, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->hHwrResult:J

    invoke-static {v2, v3}, Lcom/metamoji/mazec/MazecRACLibJNI;->HwRecognitionResult_getStrokeBlocks(J)[Lcom/metamoji/mazec/stroke/StrokeBlock;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mStrokeBlocks:[Lcom/metamoji/mazec/stroke/StrokeBlock;

    .line 74
    iget-wide v2, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->hHwrResult:J

    const-string v4, " "

    invoke-static {v2, v3, v4}, Lcom/metamoji/mazec/MazecRACLibJNI;->HwRecognitionResult_getTopCandidateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mTopCandidateString:Ljava/lang/String;

    .line 77
    iget-object v2, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mCandidatess:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mStrokeBlocks:[Lcom/metamoji/mazec/stroke/StrokeBlock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mTopCandidateString:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mCandidatess:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    new-array v0, v1, [Lcom/metamoji/mazec/stroke/StrokeBlock;

    iput-object v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mStrokeBlocks:[Lcom/metamoji/mazec/stroke/StrokeBlock;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mTopCandidateString:Ljava/lang/String;

    :cond_3
    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mRetrievedFlag:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 5

    .line 47
    iget-wide v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->hHwrResult:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 48
    invoke-static {v0, v1}, Lcom/metamoji/mazec/MazecRACLibJNI;->HwRecognitionResult_destroy(J)V

    .line 49
    iput-wide v2, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->hHwrResult:J

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->destroy()V

    return-void
.end method

.method public getAltCandidates(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwCandidates;",
            ">;>;"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    iget-wide v1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->hHwrResult:J

    invoke-static {v1, v2, p1, p2}, Lcom/metamoji/mazec/MazecRACLibJNI;->HwRecognitionResult_getAltBlocksCount(JII)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 203
    iget-wide v1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->hHwrResult:J

    invoke-static {v1, v2, p2}, Lcom/metamoji/mazec/MazecRACLibJNI;->HwRecognitionResult_getAltBlocks(JI)[Lcom/metamoji/mazec/recognizer/HwCandidates;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getCandidates(I)Lcom/metamoji/mazec/recognizer/HwCandidates;
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mRetrievedFlag:Z

    if-nez v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->retrieveResult()V

    :cond_0
    if-ltz p1, :cond_2

    .line 152
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mCandidatess:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mCandidatess:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/recognizer/HwCandidates;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCandidatesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwCandidates;",
            ">;"
        }
    .end annotation

    .line 91
    iget-boolean v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mRetrievedFlag:Z

    if-nez v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->retrieveResult()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mCandidatess:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mRetrievedFlag:Z

    if-nez v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->retrieveResult()V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mCandidatess:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHandle()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->hHwrResult:J

    return-wide v0
.end method

.method public getStrokeBlocks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/StrokeBlock;",
            ">;"
        }
    .end annotation

    .line 174
    iget-boolean v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mRetrievedFlag:Z

    if-nez v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->retrieveResult()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mStrokeBlocks:[Lcom/metamoji/mazec/stroke/StrokeBlock;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTopCandidateString()Ljava/lang/String;
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mRetrievedFlag:Z

    if-nez v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->retrieveResult()V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mTopCandidateString:Ljava/lang/String;

    return-object v0
.end method

.method public selectCandidate(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mRetrievedFlag:Z

    .line 166
    iget-wide v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->hHwrResult:J

    const/4 v2, -0x1

    invoke-static {v0, v1, p1, p2, v2}, Lcom/metamoji/mazec/MazecRACLibJNI;->HwRecognitionResult_selectCandidate(JILjava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public setActive(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwCandidates;",
            ">;)Z"
        }
    .end annotation

    .line 104
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 105
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_0

    .line 108
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/mazec/recognizer/HwCandidates;

    invoke-virtual {v5}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getStrokeOrders()[J

    move-result-object v5

    array-length v5, v5

    .line 109
    aput v5, v1, v3

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    :cond_0
    new-array v3, v4, [J

    .line 115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v4, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/mazec/recognizer/HwCandidates;

    .line 116
    invoke-virtual {v5}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getStrokeOrders()[J

    move-result-object v5

    .line 117
    array-length v6, v5

    .line 118
    invoke-static {v5, v2, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    goto :goto_1

    .line 122
    :cond_1
    iput-boolean v2, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mRetrievedFlag:Z

    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->mTopCandidateString:Ljava/lang/String;

    .line 125
    iget-wide v4, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->hHwrResult:J

    invoke-static {v4, v5, v3, v1, v0}, Lcom/metamoji/mazec/MazecRACLibJNI;->HwRecognitionResult_setActive(J[J[II)Z

    move-result p1

    return p1
.end method
