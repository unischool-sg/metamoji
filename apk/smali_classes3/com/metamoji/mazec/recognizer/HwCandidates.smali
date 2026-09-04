.class public Lcom/metamoji/mazec/recognizer/HwCandidates;
.super Ljava/lang/Object;
.source "HwCandidates.java"


# instance fields
.field private mCandidates:[Lcom/metamoji/mazec/recognizer/HwCandidate;

.field private mFirstStrokeIndex:I

.field private mLastStrokeIndex:I

.field private mSelectedIndex:I

.field private mStrokeOrders:[J


# direct methods
.method public constructor <init>(II[Lcom/metamoji/mazec/recognizer/HwCandidate;[JI)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/metamoji/mazec/recognizer/HwCandidates;->mFirstStrokeIndex:I

    .line 24
    iput p2, p0, Lcom/metamoji/mazec/recognizer/HwCandidates;->mLastStrokeIndex:I

    .line 26
    array-length p1, p3

    new-array p1, p1, [Lcom/metamoji/mazec/recognizer/HwCandidate;

    iput-object p1, p0, Lcom/metamoji/mazec/recognizer/HwCandidates;->mCandidates:[Lcom/metamoji/mazec/recognizer/HwCandidate;

    .line 27
    array-length p2, p3

    const/4 v0, 0x0

    invoke-static {p3, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    array-length p1, p4

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/metamoji/mazec/recognizer/HwCandidates;->mStrokeOrders:[J

    .line 30
    array-length p2, p4

    invoke-static {p4, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ltz p5, :cond_0

    .line 32
    array-length p1, p3

    if-gt p1, p5, :cond_1

    :cond_0
    move p5, v0

    :cond_1
    iput p5, p0, Lcom/metamoji/mazec/recognizer/HwCandidates;->mSelectedIndex:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/metamoji/mazec/recognizer/HwCandidates;
    .locals 6

    .line 40
    new-instance v0, Lcom/metamoji/mazec/recognizer/HwCandidates;

    iget v1, p0, Lcom/metamoji/mazec/recognizer/HwCandidates;->mFirstStrokeIndex:I

    iget v2, p0, Lcom/metamoji/mazec/recognizer/HwCandidates;->mLastStrokeIndex:I

    iget-object v3, p0, Lcom/metamoji/mazec/recognizer/HwCandidates;->mCandidates:[Lcom/metamoji/mazec/recognizer/HwCandidate;

    iget-object v4, p0, Lcom/metamoji/mazec/recognizer/HwCandidates;->mStrokeOrders:[J

    iget v5, p0, Lcom/metamoji/mazec/recognizer/HwCandidates;->mSelectedIndex:I

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/mazec/recognizer/HwCandidates;-><init>(II[Lcom/metamoji/mazec/recognizer/HwCandidate;[JI)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/metamoji/mazec/recognizer/HwCandidates;->clone()Lcom/metamoji/mazec/recognizer/HwCandidates;

    move-result-object v0

    return-object v0
.end method

.method public firstStrokeIndex()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/metamoji/mazec/recognizer/HwCandidates;->mFirstStrokeIndex:I

    return v0
.end method

.method public getCandidateAt(I)Lcom/metamoji/mazec/recognizer/HwCandidate;
    .locals 2

    if-ltz p1, :cond_1

    .line 202
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/HwCandidates;->mCandidates:[Lcom/metamoji/mazec/recognizer/HwCandidate;

    array-length v1, v0

    if-gt v1, p1, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/HwCandidates;->mCandidates:[Lcom/metamoji/mazec/recognizer/HwCandidate;

    array-length v0, v0

    return v0
.end method

.method public getMostProbableCandidate()Lcom/metamoji/mazec/recognizer/HwCandidate;
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/HwCandidates;->mCandidates:[Lcom/metamoji/mazec/recognizer/HwCandidate;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget v1, p0, Lcom/metamoji/mazec/recognizer/HwCandidates;->mSelectedIndex:I

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedString()Ljava/lang/String;
    .locals 3

    .line 190
    iget v0, p0, Lcom/metamoji/mazec/recognizer/HwCandidates;->mSelectedIndex:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/metamoji/mazec/recognizer/HwCandidates;->mCandidates:[Lcom/metamoji/mazec/recognizer/HwCandidate;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 191
    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/metamoji/mazec/recognizer/HwCandidate;->text:Ljava/lang/String;

    return-object v0

    .line 193
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getStrokeOrders()[J
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/HwCandidates;->mStrokeOrders:[J

    return-object v0
.end method

.method public getTargetStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;)Lcom/metamoji/mazec/stroke/HwStrokes;
    .locals 5

    .line 125
    new-instance v0, Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-direct {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;-><init>()V

    .line 126
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStrokes;->topLine()F

    move-result v1

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStrokes;->baseLine()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->setGuidelinesWithTop(FF)V

    .line 127
    iget-object v1, p0, Lcom/metamoji/mazec/recognizer/HwCandidates;->mStrokeOrders:[J

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 129
    iget-object v3, p0, Lcom/metamoji/mazec/recognizer/HwCandidates;->mStrokeOrders:[J

    aget-wide v3, v3, v2

    invoke-virtual {p1, v3, v4}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStrokeByStrokeOrder(J)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 133
    :cond_0
    invoke-virtual {v0, v3}, Lcom/metamoji/mazec/stroke/HwStrokes;->addStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public lastStrokeIndex()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/metamoji/mazec/recognizer/HwCandidates;->mLastStrokeIndex:I

    return v0
.end method
