.class public Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;
.super Ljava/lang/Object;
.source "RecognitionSegmentation.java"


# instance fields
.field private mJoinPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mRecogResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

.field private mSplitPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mStrokeBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mSplitPositions:Ljava/util/List;

    .line 17
    iput-object v0, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mJoinPositions:Ljava/util/List;

    .line 19
    iput-object v0, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mStrokeBlocks:Ljava/util/List;

    .line 21
    iput-object v0, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mRecogResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mSplitPositions:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mJoinPositions:Ljava/util/List;

    return-void
.end method

.method private cleanup()V
    .locals 5

    .line 252
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mStrokeBlocks:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 256
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 257
    invoke-virtual {v3}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object v3

    .line 258
    iget v4, v3, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_1

    .line 259
    iget v2, v3, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 262
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    const v3, 0x461c4000    # 10000.0f

    add-float/2addr v3, v2

    invoke-direct {v0, v2, v1, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 263
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->clearJoinPositionInRect(Landroid/graphics/RectF;)V

    .line 264
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->clearSplitPositionInRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method private clearJoinPositionInRect(Landroid/graphics/RectF;)V
    .locals 5

    .line 285
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mJoinPositions:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_2

    .line 289
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    iget-object v1, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mJoinPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 291
    iget-object v3, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mJoinPositions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 292
    iget v4, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_1

    iget v4, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 293
    iget-object v3, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mJoinPositions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 297
    iget-object v1, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mJoinPositions:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private clearSplitPositionInRect(Landroid/graphics/RectF;)V
    .locals 5

    .line 268
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mSplitPositions:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_2

    .line 272
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    iget-object v1, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mSplitPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 274
    iget-object v3, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mSplitPositions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 275
    iget v4, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_1

    iget v4, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 276
    iget-object v3, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mSplitPositions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 280
    iget-object v1, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mSplitPositions:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private static containingBlockAreaForXPos(FLjava/util/List;)Landroid/graphics/RectF;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            ">;)",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 304
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0

    .line 306
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 307
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 308
    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 309
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 312
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 313
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 314
    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, p0

    if-gtz v1, :cond_3

    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_3

    return-object v0

    .line 318
    :cond_4
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0
.end method

.method private static isPositionContainedInSpace(FLcom/metamoji/mazec/recognizer/HwRecognitionResult;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/metamoji/mazec/recognizer/HwRecognitionResult;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            ">;)Z"
        }
    .end annotation

    .line 108
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 110
    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getCandidatesList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v4, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/mazec/recognizer/HwCandidates;

    .line 111
    invoke-virtual {v5}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getMostProbableCandidate()Lcom/metamoji/mazec/recognizer/HwCandidate;

    move-result-object v5

    iget-object v5, v5, Lcom/metamoji/mazec/recognizer/HwCandidate;->text:Ljava/lang/String;

    .line 112
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_1
    const/4 v7, 0x1

    if-ge v4, v0, :cond_2

    .line 118
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/mazec/stroke/HwStrokes;

    add-int/lit8 v4, v4, 0x1

    .line 120
    invoke-virtual {v8}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v9

    if-lez v9, :cond_1

    goto :goto_2

    :cond_1
    move v6, v7

    move-object v3, v8

    goto :goto_1

    .line 126
    :cond_2
    :goto_2
    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v6, :cond_3

    if-eqz v1, :cond_3

    .line 128
    invoke-static {v1}, Lcom/metamoji/mazec/util/StringChecker;->tailWordString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v5}, Lcom/metamoji/mazec/util/StringChecker;->headWordString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    invoke-virtual {v3}, Lcom/metamoji/mazec/stroke/HwStrokes;->outerBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 130
    iget v6, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v6, v6, p0

    if-gez v6, :cond_3

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_3

    return v7

    :cond_3
    move-object v1, v5

    goto :goto_0

    :cond_4
    return v2
.end method

.method private static leftAndRightSideBlockAreaForXPos(FLjava/util/List;)Landroid/graphics/RectF;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            ">;)",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 324
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0

    .line 326
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 327
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 328
    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 329
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 333
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0

    .line 335
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    .line 338
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object p1

    .line 339
    iget v0, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p0

    if-gtz v0, :cond_4

    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_4

    return-object p1

    .line 342
    :cond_4
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0

    :cond_5
    const/4 v3, 0x2

    .line 345
    new-array v4, v3, [Landroid/graphics/RectF;

    move v6, v1

    move v5, v2

    :goto_1
    if-ge v5, p1, :cond_7

    add-int/lit8 v7, v5, -0x1

    .line 348
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 349
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 350
    invoke-virtual {v7}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object v7

    .line 351
    new-instance v9, Landroid/graphics/RectF;

    iget v10, v7, Landroid/graphics/RectF;->left:F

    iget v11, v7, Landroid/graphics/RectF;->top:F

    iget v12, v7, Landroid/graphics/RectF;->right:F

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v9, v10, v11, v12, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 352
    invoke-virtual {v8}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 353
    iget v7, v9, Landroid/graphics/RectF;->left:F

    cmpg-float v7, v7, p0

    if-gtz v7, :cond_6

    iget v7, v9, Landroid/graphics/RectF;->right:F

    cmpg-float v7, p0, v7

    if-gtz v7, :cond_6

    add-int/lit8 v7, v6, 0x1

    .line 354
    aput-object v9, v4, v6

    move v6, v7

    if-ne v7, v3, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    if-nez v6, :cond_8

    .line 362
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0

    :cond_8
    if-ne v6, v2, :cond_9

    .line 364
    aget-object p0, v4, v1

    return-object p0

    .line 367
    :cond_9
    aget-object p1, v4, v1

    iget p1, p1, Landroid/graphics/RectF;->left:F

    aget-object v0, v4, v1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 368
    aget-object v3, v4, v2

    iget v3, v3, Landroid/graphics/RectF;->left:F

    aget-object v5, v4, v2

    iget v5, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v5

    div-float/2addr v3, v0

    sub-float p1, p0, p1

    .line 369
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_a

    .line 370
    aget-object p0, v4, v1

    return-object p0

    .line 372
    :cond_a
    aget-object p0, v4, v2

    return-object p0
.end method


# virtual methods
.method public Clear()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mJoinPositions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mSplitPositions:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 151
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public ClearWithStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;)V
    .locals 6

    .line 161
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 162
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->clearSplitPositionInRect(Landroid/graphics/RectF;)V

    .line 163
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->clearJoinPositionInRect(Landroid/graphics/RectF;)V

    .line 164
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mStrokeBlocks:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 168
    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 170
    invoke-virtual {v1, v3}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStroke(I)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v4

    .line 171
    invoke-virtual {v4}, Lcom/metamoji/mazec/stroke/HwStroke;->strokeOrder()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStrokeByStrokeOrder(J)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 173
    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->clearJoinPositionInRect(Landroid/graphics/RectF;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addJoinPosition(FLcom/metamoji/mazec/stroke/HwStrokes;)Z
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mStrokeBlocks:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->leftAndRightSideBlockAreaForXPos(FLjava/util/List;)Landroid/graphics/RectF;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 42
    :cond_0
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->clearSplitPositionInRect(Landroid/graphics/RectF;)V

    .line 45
    invoke-virtual {p2}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object p2

    .line 46
    iget v0, p2, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_1

    iget p2, p2, Landroid/graphics/RectF;->right:F

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_1

    .line 47
    iget-object p2, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mJoinPositions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public addSplitPosition(FLcom/metamoji/mazec/stroke/HwStrokes;)Z
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mStrokeBlocks:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->containingBlockAreaForXPos(FLjava/util/List;)Landroid/graphics/RectF;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 66
    :cond_0
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->clearJoinPositionInRect(Landroid/graphics/RectF;)V

    .line 68
    invoke-virtual {p2}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object p2

    .line 69
    iget v0, p2, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_1

    iget p2, p2, Landroid/graphics/RectF;->right:F

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_1

    .line 70
    iget-object p2, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mSplitPositions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getJoinPosition()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mJoinPositions:Ljava/util/List;

    return-object v0
.end method

.method public getSplitPosition()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mSplitPositions:Ljava/util/List;

    return-object v0
.end method

.method public isPositionContainedInSpace(F)Z
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mStrokeBlocks:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mRecogResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    invoke-static {p1, v1, v0}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->isPositionContainedInSpace(FLcom/metamoji/mazec/recognizer/HwRecognitionResult;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public setRecogResult(Lcom/metamoji/mazec/recognizer/HwRecognitionResult;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazec/recognizer/HwRecognitionResult;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            ">;)V"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mRecogResult:Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    .line 188
    iput-object p2, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mStrokeBlocks:Ljava/util/List;

    .line 189
    invoke-direct {p0}, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->cleanup()V

    return-void
.end method

.method public shift(FFLjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mSplitPositions:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mSplitPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    iget-object v1, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mSplitPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 204
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 206
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    cmpl-float v3, v2, p2

    if-ltz v3, :cond_1

    add-float/2addr v2, p1

    .line 212
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_2
    iput-object v0, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mSplitPositions:Ljava/util/List;

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mJoinPositions:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mJoinPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    iget-object v1, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mJoinPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 227
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 229
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    cmpl-float v3, v2, p2

    if-ltz v3, :cond_5

    add-float/2addr v2, p1

    .line 235
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 239
    :cond_5
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 243
    :cond_6
    iput-object v0, p0, Lcom/metamoji/mazec/recognizer/RecognitionSegmentation;->mJoinPositions:Ljava/util/List;

    :cond_7
    return-void
.end method
