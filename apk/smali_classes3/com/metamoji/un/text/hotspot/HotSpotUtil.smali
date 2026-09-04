.class public Lcom/metamoji/un/text/hotspot/HotSpotUtil;
.super Ljava/lang/Object;
.source "HotSpotUtil.java"


# direct methods
.method static bridge synthetic -$$Nest$smtextPositionFromTextOffset(IILcom/metamoji/un/text/model/StringWithStrokesArray;)Lcom/metamoji/un/text/model/TextPosition;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/metamoji/un/text/hotspot/HotSpotUtil;->textPositionFromTextOffset(IILcom/metamoji/un/text/model/StringWithStrokesArray;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectHotSpots(Lcom/metamoji/un/text/model/StringWithStrokesArray;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/StringWithStrokesArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/hotspot/HotSpotLocation;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 49
    invoke-virtual {p0, v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v4

    .line 51
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isRenderStrokes()Z

    move-result v5

    if-nez v5, :cond_2

    .line 53
    new-instance v5, Lcom/metamoji/cm/mutable/MutableInt;

    invoke-direct {v5, v3}, Lcom/metamoji/cm/mutable/MutableInt;-><init>(I)V

    .line 55
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->hasString()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v6

    if-nez v6, :cond_0

    .line 56
    invoke-static {p0, v5}, Lcom/metamoji/un/text/hotspot/HotSpotUtil;->stringForHotspotCheck(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_1

    .line 58
    :cond_0
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getCharSequence()Ljava/lang/CharSequence;

    move-result-object v4

    .line 60
    :goto_1
    new-instance v6, Lcom/metamoji/un/text/hotspot/HotSpotChecker;

    const v7, 0x7fffffff

    invoke-direct {v6, v2, v4, v7}, Lcom/metamoji/un/text/hotspot/HotSpotChecker;-><init>(ZLjava/lang/CharSequence;I)V

    .line 61
    new-instance v4, Lcom/metamoji/cm/mutable/Mutable;

    invoke-direct {v4}, Lcom/metamoji/cm/mutable/Mutable;-><init>()V

    .line 62
    new-instance v7, Lcom/metamoji/cm/mutable/Mutable;

    invoke-direct {v7}, Lcom/metamoji/cm/mutable/Mutable;-><init>()V

    .line 63
    :goto_2
    invoke-virtual {v6, v4, v7}, Lcom/metamoji/un/text/hotspot/HotSpotChecker;->getNext(Lcom/metamoji/cm/mutable/Mutable;Lcom/metamoji/cm/mutable/Mutable;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 64
    invoke-virtual {v4}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/cm/Range;

    .line 65
    iget v9, v8, Lcom/metamoji/cm/Range;->location:I

    invoke-static {v9, v3, p0}, Lcom/metamoji/un/text/hotspot/HotSpotUtil;->textPositionFromTextOffset(IILcom/metamoji/un/text/model/StringWithStrokesArray;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v9

    .line 66
    iget v10, v8, Lcom/metamoji/cm/Range;->location:I

    iget v8, v8, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v10, v8

    add-int/lit8 v10, v10, -0x1

    invoke-static {v10, v3, p0}, Lcom/metamoji/un/text/hotspot/HotSpotUtil;->textPositionFromTextOffset(IILcom/metamoji/un/text/model/StringWithStrokesArray;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v8

    .line 67
    new-instance v10, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {v10, v9, v8}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    .line 68
    new-instance v8, Lcom/metamoji/un/text/hotspot/HotSpotLocation;

    invoke-direct {v8, v10}, Lcom/metamoji/un/text/hotspot/HotSpotLocation;-><init>(Lcom/metamoji/un/text/model/TextRange;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 70
    :cond_1
    invoke-virtual {v5}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    return-object v0
.end method

.method public static extractHotSpots(Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/hotspot/HotSpotLocation;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/metamoji/cm/Range;",
            ">;"
        }
    .end annotation

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    .line 424
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/hotspot/HotSpotLocation;

    .line 426
    iget-object v3, v2, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->range:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    const/4 v4, -0x1

    if-ge v3, p1, :cond_2

    .line 427
    iget-object v3, v2, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->range:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    const/4 v5, 0x0

    if-ne p1, v3, :cond_1

    .line 428
    new-instance v3, Lcom/metamoji/cm/Range;

    iget-object v2, v2, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->range:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v3, v5, v2}, Lcom/metamoji/cm/Range;-><init>(II)V

    goto :goto_1

    .line 429
    :cond_1
    iget-object v2, v2, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->range:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ge p1, v2, :cond_4

    .line 430
    new-instance v3, Lcom/metamoji/cm/Range;

    invoke-direct {v3, v5, v4}, Lcom/metamoji/cm/Range;-><init>(II)V

    goto :goto_1

    .line 432
    :cond_2
    iget-object v3, v2, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->range:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ne v3, p1, :cond_4

    .line 433
    iget-object v3, v2, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->range:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ne p1, v3, :cond_3

    .line 434
    new-instance v3, Lcom/metamoji/cm/Range;

    iget-object v4, v2, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->range:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    iget v4, v4, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget-object v5, v2, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->range:Lcom/metamoji/un/text/model/TextRange;

    .line 435
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v5

    iget v5, v5, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget-object v2, v2, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->range:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/metamoji/cm/Range;-><init>(II)V

    goto :goto_1

    .line 436
    :cond_3
    iget-object v3, v2, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->range:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ge p1, v3, :cond_4

    .line 437
    new-instance v3, Lcom/metamoji/cm/Range;

    iget-object v2, v2, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->range:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-direct {v3, v2, v4}, Lcom/metamoji/cm/Range;-><init>(II)V

    goto :goto_1

    :cond_4
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_0

    .line 440
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 443
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_6

    return-object v0

    :cond_6
    return-object v1
.end method

.method public static rangeForSubString(Lcom/metamoji/un/text/model/TextRange;)Lcom/metamoji/un/text/model/TextRange;
    .locals 2

    .line 478
    new-instance v0, Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 479
    iget v1, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 480
    new-instance v1, Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    return-object v1
.end method

.method private static sentenceRange(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/cm/Range;
    .locals 4

    .line 319
    iget v0, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    .line 323
    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v2

    .line 325
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isRenderStrokes()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    .line 331
    :cond_1
    :goto_1
    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 333
    :goto_2
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 334
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->hasString()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    .line 338
    :cond_2
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 p1, p1, -0x1

    .line 343
    :goto_4
    new-instance p0, Lcom/metamoji/cm/Range;

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/metamoji/cm/Range;-><init>(II)V

    return-object p0
.end method

.method public static setViewRectsIn(Ljava/util/List;Lcom/metamoji/un/text/model/linetable/LineTable;Lcom/metamoji/un/text/model/ITextInput;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/hotspot/HotSpotLocation;",
            ">;",
            "Lcom/metamoji/un/text/model/linetable/LineTable;",
            "Lcom/metamoji/un/text/model/ITextInput;",
            ")V"
        }
    .end annotation

    .line 489
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/hotspot/HotSpotLocation;

    .line 490
    iget-object v1, v0, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->range:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;

    move-result-object v1

    .line 491
    iget-object v2, v0, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->range:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v2

    .line 492
    iget-object v3, v0, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->range:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 495
    iget-object v2, v0, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->range:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;

    move-result-object v2

    .line 496
    new-instance v3, Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget v5, v1, Landroid/graphics/RectF;->top:F

    iget v6, v2, Landroid/graphics/RectF;->top:F

    .line 497
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v6, v2, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 499
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 500
    iget-object v0, v0, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->rects:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {p1, v2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v1

    .line 504
    iget-object v4, v0, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->range:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;

    move-result-object v4

    .line 505
    new-instance v5, Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    iget-object v7, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, v4, Landroid/graphics/RectF;->left:F

    iget-object v9, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v9, v9, Lcom/metamoji/cm/SizeF;->width:F

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v10, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v10

    sub-float/2addr v9, v4

    add-float/2addr v8, v9

    iget-object v4, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v1, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v4, v1

    invoke-direct {v5, v6, v7, v8, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 509
    iget-object v1, v0, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->rects:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_1

    :goto_1
    if-ge v2, v3, :cond_1

    .line 515
    invoke-virtual {p1, v2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v1

    .line 516
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 517
    iget-object v5, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    invoke-static {v4, v5}, Lcom/metamoji/cm/RectUtils;->setOrigin(Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 518
    iget-object v1, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-static {v4, v1}, Lcom/metamoji/cm/RectUtils;->setSize(Landroid/graphics/RectF;Lcom/metamoji/cm/SizeF;)V

    .line 519
    iget-object v1, v0, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->rects:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 524
    :cond_1
    invoke-virtual {p1, v3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v1

    .line 525
    iget-object v2, v0, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->range:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;

    move-result-object v2

    .line 526
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v7, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v7

    add-float/2addr v6, v2

    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v1, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v2, v1

    invoke-direct {v3, v4, v5, v6, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 530
    iget-object v0, v0, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->rects:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public static spellCheck(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/cm/IAction1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/StringWithStrokesArray;",
            "Lcom/metamoji/un/text/model/TextPosition;",
            "Lcom/metamoji/cm/IAction1<",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/hotspot/HotSpotLocation;",
            ">;>;)V"
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/metamoji/cm/mutable/MutableInt;

    invoke-direct {v0}, Lcom/metamoji/cm/mutable/MutableInt;-><init>()V

    .line 153
    new-instance v1, Lcom/metamoji/un/text/hotspot/HotSpotUtil$1;

    invoke-direct {v1, v0, p0, p2}, Lcom/metamoji/un/text/hotspot/HotSpotUtil$1;-><init>(Lcom/metamoji/cm/mutable/MutableInt;Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/cm/IAction1;)V

    .line 190
    invoke-static {v1}, Lcom/metamoji/un/text/UnTextUnit;->newSpellCheckerSession(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;)Landroid/view/textservice/SpellCheckerSession;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_2

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 198
    invoke-virtual {p0, v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v4

    .line 200
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isRenderStrokes()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_3

    .line 202
    new-instance v5, Lcom/metamoji/cm/mutable/MutableInt;

    invoke-direct {v5, v3}, Lcom/metamoji/cm/mutable/MutableInt;-><init>(I)V

    .line 204
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->hasString()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v7

    if-nez v7, :cond_1

    .line 205
    invoke-static {p0, v5}, Lcom/metamoji/un/text/hotspot/HotSpotUtil;->stringForHotspotCheck(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_1

    .line 207
    :cond_1
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getString()Ljava/lang/String;

    move-result-object v4

    .line 211
    :goto_1
    iget v7, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-gt v3, v7, :cond_2

    iget v7, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {v5}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v8

    if-gt v7, v8, :cond_2

    if-eqz v4, :cond_4

    .line 213
    invoke-virtual {v0, v3}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    .line 214
    new-array p0, v6, [Landroid/view/textservice/TextInfo;

    new-instance p1, Landroid/view/textservice/TextInfo;

    .line 215
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/String;)V

    aput-object p1, p0, v2

    .line 214
    invoke-virtual {p2, p0, v6}, Landroid/view/textservice/SpellCheckerSession;->getSentenceSuggestions([Landroid/view/textservice/TextInfo;I)V

    return-void

    .line 224
    :cond_2
    invoke-virtual {v5}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v3

    :cond_3
    add-int/2addr v3, v6

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private static stringForHotspotCheck(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/CharSequence;
    .locals 5

    .line 356
    invoke-virtual {p1}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v0

    .line 357
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v1

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->hasString()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 361
    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 366
    :cond_0
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->hasString()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 367
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    move-object v1, v3

    goto :goto_0

    .line 374
    :cond_1
    :goto_1
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    return-object v2
.end method

.method public static suggestions(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextRange;Lcom/metamoji/cm/IAction1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/StringWithStrokesArray;",
            "Lcom/metamoji/un/text/model/TextRange;",
            "Lcom/metamoji/cm/IAction1<",
            "Lcom/metamoji/un/text/hotspot/HotSpotLocationForSpellCheck;",
            ">;)V"
        }
    .end annotation

    .line 241
    new-instance v1, Lcom/metamoji/cm/mutable/MutableInt;

    invoke-direct {v1}, Lcom/metamoji/cm/mutable/MutableInt;-><init>()V

    .line 242
    new-instance v2, Lcom/metamoji/cm/mutable/MutableInt;

    invoke-direct {v2}, Lcom/metamoji/cm/mutable/MutableInt;-><init>()V

    .line 243
    new-instance v3, Lcom/metamoji/cm/mutable/MutableInt;

    invoke-direct {v3}, Lcom/metamoji/cm/mutable/MutableInt;-><init>()V

    .line 244
    new-instance v0, Lcom/metamoji/un/text/hotspot/HotSpotUtil$2;

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/text/hotspot/HotSpotUtil$2;-><init>(Lcom/metamoji/cm/mutable/MutableInt;Lcom/metamoji/cm/mutable/MutableInt;Lcom/metamoji/cm/mutable/MutableInt;Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/cm/IAction1;)V

    .line 285
    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->newSpellCheckerSession(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;)Landroid/view/textservice/SpellCheckerSession;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 291
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/metamoji/un/text/hotspot/HotSpotUtil;->sentenceRange(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/cm/Range;

    move-result-object p2

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    iget v5, p2, Lcom/metamoji/cm/Range;->location:I

    :goto_0
    iget v6, p2, Lcom/metamoji/cm/Range;->location:I

    iget v7, p2, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_2

    .line 294
    invoke-virtual {v4, v5}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 296
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 299
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v5

    iget v6, p2, Lcom/metamoji/cm/Range;->location:I

    invoke-static {v5, v6, v4}, Lcom/metamoji/un/text/hotspot/HotSpotUtil;->textOffsetFromTextPosition(Lcom/metamoji/un/text/model/TextPosition;ILcom/metamoji/un/text/model/StringWithStrokesArray;)I

    move-result v5

    .line 302
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    iget v6, p2, Lcom/metamoji/cm/Range;->location:I

    invoke-static {p1, v6, v4}, Lcom/metamoji/un/text/hotspot/HotSpotUtil;->textOffsetFromTextPosition(Lcom/metamoji/un/text/model/TextPosition;ILcom/metamoji/un/text/model/StringWithStrokesArray;)I

    move-result p1

    .line 304
    invoke-virtual {v1, v5}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    .line 305
    invoke-virtual {v2, p1}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    .line 306
    iget p1, p2, Lcom/metamoji/cm/Range;->location:I

    invoke-virtual {v3, p1}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    const/4 p1, 0x1

    .line 307
    new-array p1, p1, [Landroid/view/textservice/TextInfo;

    new-instance p2, Landroid/view/textservice/TextInfo;

    invoke-direct {p2, v0}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x5

    invoke-virtual {p0, p1, p2}, Landroid/view/textservice/SpellCheckerSession;->getSentenceSuggestions([Landroid/view/textservice/TextInfo;I)V

    return-void
.end method

.method private static textOffsetFromTextPosition(Lcom/metamoji/un/text/model/TextPosition;ILcom/metamoji/un/text/model/StringWithStrokesArray;)I
    .locals 2

    const/4 v0, 0x0

    .line 406
    :goto_0
    iget v1, p0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ge p1, v1, :cond_0

    .line 407
    invoke-virtual {p2, p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v1

    .line 408
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 411
    :cond_0
    iget p0, p0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    add-int/2addr v0, p0

    return v0
.end method

.method private static textPositionFromTextOffset(IILcom/metamoji/un/text/model/StringWithStrokesArray;)Lcom/metamoji/un/text/model/TextPosition;
    .locals 2

    .line 389
    invoke-virtual {p2, p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v0

    .line 390
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getLength()I

    move-result v1

    if-lt p0, v1, :cond_0

    .line 391
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getLength()I

    move-result v0

    sub-int/2addr p0, v0

    add-int/lit8 p1, p1, 0x1

    .line 392
    invoke-virtual {p2, p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v0

    goto :goto_0

    .line 394
    :cond_0
    new-instance p2, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p2, p1, p0}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    return-object p2
.end method
