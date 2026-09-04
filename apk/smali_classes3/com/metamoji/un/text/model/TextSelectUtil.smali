.class public Lcom/metamoji/un/text/model/TextSelectUtil;
.super Ljava/lang/Object;
.source "TextSelectUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expandSelectRangeTextKind(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextModel;Lcom/metamoji/un/text/model/linetable/LineTable;)Lcom/metamoji/un/text/model/TextRange;
    .locals 7

    .line 90
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v0

    .line 94
    iget v1, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, v0, :cond_3

    .line 95
    iget v0, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v0

    if-nez v0, :cond_3

    .line 98
    invoke-static {p0, p1}, Lcom/metamoji/un/text/model/TextSelectUtil;->gotoPrevSelectPositionTextKind(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p3, v0}, Lcom/metamoji/un/text/model/TextModel;->validatePosition(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 101
    invoke-static {p0, p1}, Lcom/metamoji/un/text/model/TextSelectUtil;->gotoNextSelectPositionTextKind(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {p3, v1}, Lcom/metamoji/un/text/model/TextModel;->validatePosition(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 106
    invoke-virtual {p2, v1}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 108
    iget v4, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p0, v4}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v4

    .line 109
    iget v5, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringLength()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 110
    iget v5, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {v4, v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->characterAtIndex(I)C

    move-result v4

    .line 111
    invoke-static {v4}, Lcom/metamoji/un/text/model/TextSelectUtil;->getTextCharKind(C)Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    move-result-object v4

    .line 113
    iget v5, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p0, v5}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object p0

    .line 114
    iget v5, p2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr v5, v2

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringLength()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 115
    iget v5, p2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->characterAtIndex(I)C

    move-result p0

    .line 116
    invoke-static {p0}, Lcom/metamoji/un/text/model/TextSelectUtil;->getTextCharKind(C)Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    move-result-object p0

    .line 118
    invoke-static {v4, p0}, Lcom/metamoji/un/text/model/TextSelectUtil;->isSameTextCharKind(Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;)Z

    move-result p0

    if-eqz p0, :cond_0

    move-object v1, p2

    .line 126
    :cond_0
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p0

    if-ne v2, p0, :cond_2

    goto :goto_0

    :cond_1
    move-object v1, v3

    :cond_2
    move-object v3, v0

    goto :goto_1

    :cond_3
    :goto_0
    move-object v1, v3

    :goto_1
    if-eqz v3, :cond_5

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move-object p2, v1

    move-object p1, v3

    .line 142
    :cond_5
    :goto_2
    invoke-virtual {p4, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p0

    .line 143
    invoke-virtual {p4, p2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v0

    if-eq p0, v0, :cond_6

    .line 146
    invoke-virtual {p3, p1, v2}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p0

    .line 148
    invoke-virtual {p2, p0}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p0

    if-eqz p0, :cond_6

    .line 150
    invoke-virtual {p4, v0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p0

    .line 151
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;

    move-result-object p3

    .line 152
    iget p3, p3, Landroid/graphics/RectF;->left:F

    iget-object p0, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->x:F

    cmpg-float p0, p3, p0

    if-gtz p0, :cond_6

    .line 153
    iput-boolean v2, p2, Lcom/metamoji/un/text/model/TextPosition;->lineEndPosition:Z

    .line 158
    :cond_6
    new-instance p0, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    return-object p0
.end method

.method public static getTextCharKind(C)Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;
    .locals 1

    const/16 v0, 0x3041

    if-gt v0, p0, :cond_0

    const/16 v0, 0x309e

    if-gt p0, v0, :cond_0

    .line 44
    sget-object p0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_HIRA:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    return-object p0

    :cond_0
    const/16 v0, 0x30a1

    if-gt v0, p0, :cond_1

    const/16 v0, 0x30ff

    if-gt p0, v0, :cond_1

    .line 46
    sget-object p0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_ZEN_KATA:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    return-object p0

    :cond_1
    const v0, 0xff62

    if-gt v0, p0, :cond_2

    const v0, 0xff9f

    if-gt p0, v0, :cond_2

    .line 48
    sget-object p0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_HAN_KATA:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    return-object p0

    :cond_2
    const v0, 0xff10

    if-gt v0, p0, :cond_3

    const v0, 0xff19

    if-gt p0, v0, :cond_3

    .line 50
    sget-object p0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_ZEN_NUM:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    return-object p0

    :cond_3
    const v0, 0xff21

    if-gt v0, p0, :cond_4

    const v0, 0xff3a

    if-gt p0, v0, :cond_4

    .line 52
    sget-object p0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_ZEN_A:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    return-object p0

    :cond_4
    const v0, 0xff41

    if-gt v0, p0, :cond_5

    const v0, 0xff5a

    if-gt p0, v0, :cond_5

    .line 54
    sget-object p0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_ZEN_a:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    return-object p0

    :cond_5
    const/16 v0, 0x30

    if-gt v0, p0, :cond_6

    const/16 v0, 0x39

    if-gt p0, v0, :cond_6

    .line 56
    sget-object p0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_HAN_NUM:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    return-object p0

    :cond_6
    const/16 v0, 0x41

    if-gt v0, p0, :cond_7

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_7

    .line 58
    sget-object p0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_HAN_A:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    return-object p0

    :cond_7
    const/16 v0, 0x61

    if-gt v0, p0, :cond_8

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_8

    .line 60
    sget-object p0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_HAN_a:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    return-object p0

    :cond_8
    const/16 v0, 0x391

    if-gt v0, p0, :cond_9

    const/16 v0, 0x3c9

    if-gt p0, v0, :cond_9

    .line 62
    sget-object p0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_GREEK:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    return-object p0

    :cond_9
    const/16 v0, 0x401

    if-gt v0, p0, :cond_a

    const/16 v0, 0x4ff

    if-gt p0, v0, :cond_a

    .line 64
    sget-object p0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_CYRILLIC:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    return-object p0

    :cond_a
    const/16 v0, 0x4e00

    if-gt v0, p0, :cond_b

    const v0, 0x9fff

    if-gt p0, v0, :cond_b

    .line 66
    sget-object p0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_KANJI:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    return-object p0

    .line 68
    :cond_b
    sget-object p0, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_OTHER:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    return-object p0
.end method

.method private static gotoNextSelectPositionTextKind(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 291
    :cond_0
    iget v1, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 292
    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 293
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    if-ge v1, v2, :cond_8

    .line 300
    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v4

    .line 301
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringLength()I

    move-result v5

    if-ge p1, v5, :cond_8

    .line 303
    invoke-virtual {v4, p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->characterAtIndex(I)C

    move-result v6

    .line 304
    invoke-static {v6}, Lcom/metamoji/un/text/model/TextSelectUtil;->getTextCharKind(C)Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    move-result-object v6

    .line 306
    sget-object v7, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_OTHER:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    if-ne v7, v6, :cond_1

    return-object v0

    :cond_1
    :goto_0
    if-eqz v4, :cond_8

    add-int/lit8 v0, v5, -0x1

    if-ge p1, v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 316
    invoke-virtual {v4, v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isFollowigCodeAtIndex(I)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    move v0, v1

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    add-int/lit8 v0, v2, -0x1

    if-ge v1, v0, :cond_8

    add-int/lit8 v0, v1, 0x1

    .line 322
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v4

    .line 323
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringLength()I

    move-result v5

    const/4 v7, 0x0

    .line 325
    invoke-virtual {v4, v7}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isFollowigCodeAtIndex(I)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    move p1, v7

    .line 333
    :goto_2
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    .line 337
    :cond_5
    invoke-virtual {v4, p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->characterAtIndex(I)C

    move-result v7

    .line 338
    invoke-static {v7}, Lcom/metamoji/un/text/model/TextSelectUtil;->getTextCharKind(C)Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    move-result-object v7

    .line 339
    invoke-static {v6, v7}, Lcom/metamoji/un/text/model/TextSelectUtil;->isSameTextCharKind(Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v3, p1, 0x1

    .line 345
    invoke-virtual {v4, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isFollowigCodeAtIndex(I)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v3, p1, 0x2

    :cond_7
    move v1, v0

    goto :goto_0

    .line 352
    :cond_8
    :goto_3
    new-instance p0, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p0, v1, v3}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    return-object p0
.end method

.method private static gotoPrevSelectPositionTextKind(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 215
    :cond_0
    iget v1, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 216
    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 217
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 225
    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v2

    .line 226
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringLength()I

    move-result v3

    if-ge p1, v3, :cond_8

    .line 228
    invoke-virtual {v2, p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->characterAtIndex(I)C

    move-result v3

    .line 229
    invoke-static {v3}, Lcom/metamoji/un/text/model/TextSelectUtil;->getTextCharKind(C)Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    move-result-object v3

    .line 231
    sget-object v4, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->MMJEdTextCharKind_OTHER:Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    if-ne v4, v3, :cond_1

    return-object v0

    :cond_1
    :goto_0
    if-eqz v2, :cond_8

    if-lez p1, :cond_3

    add-int/lit8 v0, p1, -0x1

    .line 241
    invoke-virtual {v2, v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isFollowigCodeAtIndex(I)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v0, p1, -0x2

    :cond_2
    move-object v4, v2

    move v2, v1

    goto :goto_2

    :cond_3
    if-lez v1, :cond_8

    add-int/lit8 v0, v1, -0x1

    .line 247
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v2

    .line 248
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringLength()I

    move-result v4

    if-lez v4, :cond_5

    add-int/lit8 v5, v4, -0x1

    .line 252
    invoke-virtual {v2, v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isFollowigCodeAtIndex(I)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v4, v4, -0x2

    goto :goto_1

    :cond_4
    move-object v4, v2

    move v2, v0

    move v0, v5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_1
    move-object v7, v2

    move v2, v0

    move v0, v4

    move-object v4, v7

    .line 261
    :goto_2
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    .line 265
    :cond_6
    invoke-virtual {v4, v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->characterAtIndex(I)C

    move-result v5

    .line 266
    invoke-static {v5}, Lcom/metamoji/un/text/model/TextSelectUtil;->getTextCharKind(C)Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;

    move-result-object v5

    .line 267
    invoke-static {v3, v5}, Lcom/metamoji/un/text/model/TextSelectUtil;->isSameTextCharKind(Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    move p1, v0

    move v1, v2

    move-object v2, v4

    goto :goto_0

    .line 277
    :cond_8
    :goto_3
    new-instance p0, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p0, v1, p1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    return-object p0
.end method

.method private static isSameTextCharKind(Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 188
    :pswitch_0
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->ordinal()I

    move-result p0

    const/4 p1, 0x7

    if-eq p0, p1, :cond_1

    const/16 p1, 0x8

    if-eq p0, p1, :cond_1

    const/16 p1, 0x9

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    .line 176
    :pswitch_1
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextSelectUtil$MMJEdTextCharKind;->ordinal()I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_2

    const/4 p1, 0x5

    if-eq p0, p1, :cond_2

    const/4 p1, 0x6

    if-eq p0, p1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :goto_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
