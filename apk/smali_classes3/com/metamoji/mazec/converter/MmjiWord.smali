.class public Lcom/metamoji/mazec/converter/MmjiWord;
.super Ljava/lang/Object;
.source "MmjiWord.java"


# static fields
.field public static final WORD_TYPE_CHARACTER:I = 0x6

.field public static final WORD_TYPE_CONVERSION_MULTI_CLAUSES:I = 0x4

.field public static final WORD_TYPE_CONVERSION_SINGLE_CLAUSE:I = 0x3

.field public static final WORD_TYPE_CORRECTION:I = 0x5

.field public static final WORD_TYPE_INPUT:I = 0x1

.field public static final WORD_TYPE_INVALID:I = -0x1

.field public static final WORD_TYPE_NONE:I = 0x0

.field public static final WORD_TYPE_PREDICTION:I = 0x2


# instance fields
.field private candidate:Ljava/lang/String;

.field private hWord:J

.field private partOfSpeech:Lcom/metamoji/mazec/converter/MmjiPOS;

.field private stroke:Ljava/lang/String;

.field private wordType:I


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->partOfSpeech:Lcom/metamoji/mazec/converter/MmjiPOS;

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->wordType:I

    .line 45
    iput-wide p1, p0, Lcom/metamoji/mazec/converter/MmjiWord;->hWord:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->hWord:J

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->partOfSpeech:Lcom/metamoji/mazec/converter/MmjiPOS;

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->wordType:I

    .line 55
    invoke-static {p1, p2}, Lcom/metamoji/mazec/converter/MmjiWord;->createJNI(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->hWord:J

    .line 56
    iput-object p1, p0, Lcom/metamoji/mazec/converter/MmjiWord;->candidate:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/metamoji/mazec/converter/MmjiWord;->stroke:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->hWord:J

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->partOfSpeech:Lcom/metamoji/mazec/converter/MmjiPOS;

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->wordType:I

    .line 67
    invoke-static {p1, p2, p3, p4}, Lcom/metamoji/mazec/converter/MmjiWord;->createJNI(Ljava/lang/String;Ljava/lang/String;II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->hWord:J

    .line 68
    iput-object p1, p0, Lcom/metamoji/mazec/converter/MmjiWord;->candidate:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/metamoji/mazec/converter/MmjiWord;->stroke:Ljava/lang/String;

    .line 70
    new-instance p1, Lcom/metamoji/mazec/converter/MmjiPOS;

    invoke-direct {p1, p3, p4}, Lcom/metamoji/mazec/converter/MmjiPOS;-><init>(II)V

    iput-object p1, p0, Lcom/metamoji/mazec/converter/MmjiWord;->partOfSpeech:Lcom/metamoji/mazec/converter/MmjiPOS;

    return-void
.end method

.method protected static native createJNI(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method protected static native createJNI(Ljava/lang/String;Ljava/lang/String;II)J
.end method

.method protected static native destroyJNI(J)V
.end method

.method protected static native getCandidateJNI(J)Ljava/lang/String;
.end method

.method protected static native getLeftPosJNI(J)I
.end method

.method protected static native getReadingJNI(J)Ljava/lang/String;
.end method

.method protected static native getRightPosJNI(J)I
.end method

.method protected static native getWordTypeJNI(J)I
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .line 80
    iget-wide v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->hWord:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 81
    invoke-static {v0, v1}, Lcom/metamoji/mazec/converter/MmjiWord;->destroyJNI(J)V

    .line 82
    iput-wide v2, p0, Lcom/metamoji/mazec/converter/MmjiWord;->hWord:J

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/metamoji/mazec/converter/MmjiWord;->dispose()V

    .line 76
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getCandidate()Ljava/lang/String;
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->candidate:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 102
    iget-wide v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->hWord:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 103
    invoke-static {v0, v1}, Lcom/metamoji/mazec/converter/MmjiWord;->getCandidateJNI(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->candidate:Ljava/lang/String;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->candidate:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->candidate:Ljava/lang/String;

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->candidate:Ljava/lang/String;

    return-object v0
.end method

.method public getHandle()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->hWord:J

    return-wide v0
.end method

.method public getPOS()Lcom/metamoji/mazec/converter/MmjiPOS;
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->partOfSpeech:Lcom/metamoji/mazec/converter/MmjiPOS;

    if-nez v0, :cond_1

    .line 134
    iget-wide v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->hWord:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 135
    invoke-static {v0, v1}, Lcom/metamoji/mazec/converter/MmjiWord;->getLeftPosJNI(J)I

    move-result v0

    .line 136
    iget-wide v1, p0, Lcom/metamoji/mazec/converter/MmjiWord;->hWord:J

    invoke-static {v1, v2}, Lcom/metamoji/mazec/converter/MmjiWord;->getRightPosJNI(J)I

    move-result v1

    .line 137
    new-instance v2, Lcom/metamoji/mazec/converter/MmjiPOS;

    invoke-direct {v2, v0, v1}, Lcom/metamoji/mazec/converter/MmjiPOS;-><init>(II)V

    iput-object v2, p0, Lcom/metamoji/mazec/converter/MmjiWord;->partOfSpeech:Lcom/metamoji/mazec/converter/MmjiPOS;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->partOfSpeech:Lcom/metamoji/mazec/converter/MmjiPOS;

    if-nez v0, :cond_1

    .line 140
    new-instance v0, Lcom/metamoji/mazec/converter/MmjiPOS;

    invoke-direct {v0}, Lcom/metamoji/mazec/converter/MmjiPOS;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->partOfSpeech:Lcom/metamoji/mazec/converter/MmjiPOS;

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->partOfSpeech:Lcom/metamoji/mazec/converter/MmjiPOS;

    return-object v0
.end method

.method public getPOSLeft()I
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/metamoji/mazec/converter/MmjiWord;->getPOS()Lcom/metamoji/mazec/converter/MmjiPOS;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/mazec/converter/MmjiPOS;->left:I

    return v0
.end method

.method public getPOSRight()I
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/metamoji/mazec/converter/MmjiWord;->getPOS()Lcom/metamoji/mazec/converter/MmjiPOS;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/mazec/converter/MmjiPOS;->right:I

    return v0
.end method

.method public getReading()Ljava/lang/String;
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->stroke:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 120
    iget-wide v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->hWord:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 121
    invoke-static {v0, v1}, Lcom/metamoji/mazec/converter/MmjiWord;->getReadingJNI(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->stroke:Ljava/lang/String;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->stroke:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->stroke:Ljava/lang/String;

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->stroke:Ljava/lang/String;

    return-object v0
.end method

.method public getWordType()I
    .locals 6

    .line 158
    iget v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->wordType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 159
    iget-wide v2, p0, Lcom/metamoji/mazec/converter/MmjiWord;->hWord:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 160
    invoke-static {v2, v3}, Lcom/metamoji/mazec/converter/MmjiWord;->getWordTypeJNI(J)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->wordType:I

    .line 162
    :cond_0
    iget v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->wordType:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 163
    iput v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->wordType:I

    .line 166
    :cond_1
    iget v0, p0, Lcom/metamoji/mazec/converter/MmjiWord;->wordType:I

    return v0
.end method
