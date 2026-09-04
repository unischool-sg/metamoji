.class public Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;
.super Ljava/lang/Object;
.source "HwRecognitionLearningInfo.java"


# instance fields
.field private mBaseLine:F

.field private mCharacter:Ljava/lang/String;

.field private mError:I

.field private mIndex:I

.field private mLearningType:I

.field private mNativeHandle:J

.field private mPoints:[F

.field private mPointsCounts:[I

.field private mRegistedDate:Ljava/lang/String;

.field private mTopLine:F


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mError:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[F[IFFLjava/lang/String;III)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mCharacter:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mPoints:[F

    .line 33
    iput-object p3, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mPointsCounts:[I

    .line 34
    iput p4, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mTopLine:F

    .line 35
    iput p5, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mBaseLine:F

    .line 36
    iput-object p6, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mRegistedDate:Ljava/lang/String;

    .line 37
    iput p7, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mLearningType:I

    .line 38
    iput p8, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mIndex:I

    .line 39
    iput p9, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mError:I

    const-wide/16 p1, 0x0

    .line 40
    iput-wide p1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mNativeHandle:J

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 5

    .line 101
    iget-wide v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 102
    invoke-static {v0, v1}, Lcom/metamoji/mazec/MazecRACLibJNI;->destroyRecognitionLearningInfo(J)V

    .line 103
    iput-wide v2, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mNativeHandle:J

    :cond_0
    return-void
.end method

.method public getBaseLine()F
    .locals 1

    .line 76
    iget v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mBaseLine:F

    return v0
.end method

.method public getCharacter()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mCharacter:Ljava/lang/String;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mError:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mIndex:I

    return v0
.end method

.method public getLearningType()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mLearningType:I

    return v0
.end method

.method public getNativeHandle()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mNativeHandle:J

    return-wide v0
.end method

.method public getRegistedDate()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mRegistedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;
    .locals 13

    .line 50
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mPointsCounts:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/high16 v0, -0x1000000

    const-wide v2, 0x3fd99999a0000000L    # 0.4000000059604645

    .line 53
    invoke-static {v0, v2, v3, v1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->standartStyle(IDLcom/metamoji/mazec/stroke/StrokeInk;)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-direct {v1}, Lcom/metamoji/mazec/stroke/HwStrokes;-><init>()V

    .line 55
    iget v2, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mTopLine:F

    iget v3, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mBaseLine:F

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/mazec/stroke/HwStrokes;->setGuidelinesWithTop(FF)V

    .line 57
    iget-object v2, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mPointsCounts:[I

    array-length v2, v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_2

    .line 58
    iget-object v6, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mPointsCounts:[I

    aget v6, v6, v4

    .line 59
    new-instance v7, Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-direct {v7, v0}, Lcom/metamoji/mazec/stroke/HwStroke;-><init>(Lcom/metamoji/mazec/stroke/StrokeStyle;)V

    .line 60
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v9, v3

    :goto_1
    if-ge v9, v6, :cond_1

    .line 62
    iget-object v10, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mPoints:[F

    mul-int/lit8 v11, v5, 0x2

    aget v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    .line 63
    aget v10, v10, v11

    .line 64
    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v12, v10}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {v7, v8}, Lcom/metamoji/mazec/stroke/HwStroke;->setPoints(Ljava/util/List;)V

    .line 68
    invoke-virtual {v1, v7}, Lcom/metamoji/mazec/stroke/HwStrokes;->addStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v1
.end method

.method public getTopLine()F
    .locals 1

    .line 73
    iget v0, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mTopLine:F

    return v0
.end method

.method public setError(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mError:I

    return-void
.end method

.method public setNativeHandle(J)V
    .locals 0

    .line 94
    iput-wide p1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mNativeHandle:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Characer:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mCharacter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v1, "\u00a5n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v2, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mPoints:[F

    if-nez v2, :cond_0

    .line 112
    const-string v1, "Poinsts:null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 114
    :cond_0
    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Points(%d):"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v2, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mPointsCounts:[I

    if-eqz v2, :cond_4

    array-length v2, v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 119
    :goto_0
    iget-object v5, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mPointsCounts:[I

    array-length v6, v5

    if-ge v3, v6, :cond_5

    .line 120
    aget v5, v5, v3

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Stroke(%d) number of points:%d"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_3

    if-lez v6, :cond_2

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_2
    const-string v7, "["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mPoints:[F

    mul-int/lit8 v9, v4, 0x2

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mPoints:[F

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 130
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    :cond_4
    :goto_2
    const-string v1, "Invalid data mPointsCounts must have value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_5
    :goto_3
    const-string/jumbo v1, "\u00a5nbaseLine:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget v1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mBaseLine:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 136
    const-string/jumbo v1, "\u00a5ntopLine:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget v1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mTopLine:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 138
    const-string/jumbo v1, "\u00a5nregistedDate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mRegistedDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string/jumbo v1, "\u00a5nlearningType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget v1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mLearningType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string/jumbo v1, "\u00a5nindex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget v1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    const-string/jumbo v1, "\u00a5nerror:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget v1, p0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->mError:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
