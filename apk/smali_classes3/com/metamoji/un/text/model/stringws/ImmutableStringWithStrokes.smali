.class public Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;
.super Ljava/lang/Object;
.source "ImmutableStringWithStrokes.java"

# interfaces
.implements Lcom/metamoji/cm/ISerializable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAB_STOP_INTERVAL:F = 28.0f


# instance fields
.field protected _lineRefTextPositionArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/TextPosition;",
            ">;"
        }
    .end annotation
.end field

.field protected hotSpotRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/cm/Range;",
            ">;"
        }
    .end annotation
.end field

.field protected lineRefArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/TextLine;",
            ">;"
        }
    .end annotation
.end field

.field protected paragraphStyle:Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

.field protected renderStrokes:Z

.field protected string:Ljava/lang/StringBuilder;

.field protected stringAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            ">;"
        }
    .end annotation
.end field

.field protected strokeAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StrokeAttributes;",
            ">;"
        }
    .end annotation
.end field

.field protected strokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    .line 76
    iput-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringAttributes:Ljava/util/List;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->lineRefArray:Ljava/util/List;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->_lineRefTextPositionArray:Ljava/util/List;

    .line 79
    iput-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokes:Ljava/util/List;

    .line 80
    iput-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokeAttributes:Ljava/util/List;

    .line 81
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->paragraphStyle:Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->renderStrokes:Z

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;)V
    .locals 4

    .line 344
    iget-object v0, p1, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringAttributes:Ljava/util/List;

    iget-object v2, p1, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokes:Ljava/util/List;

    iget-object v3, p1, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokeAttributes:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;-><init>(Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 346
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    iget-object p1, p1, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->paragraphStyle:Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-direct {v0, p1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)V

    iput-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->paragraphStyle:Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;-><init>(Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;-><init>(Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StrokeAttributes;",
            ">;)V"
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    .line 151
    iput-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringAttributes:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 156
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 157
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringAttributes:Ljava/util/List;

    goto :goto_0

    .line 158
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 159
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->fillAttributesForString(Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    .line 161
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringAttributes:Ljava/util/List;

    if-nez p1, :cond_2

    .line 162
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->fillAttributesForString(Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    .line 166
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->lineRefArray:Ljava/util/List;

    .line 167
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->_lineRefTextPositionArray:Ljava/util/List;

    .line 169
    iput-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokes:Ljava/util/List;

    .line 170
    iput-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokeAttributes:Ljava/util/List;

    if-eqz p3, :cond_4

    .line 172
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokes:Ljava/util/List;

    if-eqz p4, :cond_3

    .line 174
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokeAttributes:Ljava/util/List;

    goto :goto_1

    .line 176
    :cond_3
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->fillAttributesForStroke(Lcom/metamoji/un/text/model/attr/StrokeAttributes;)V

    .line 180
    :cond_4
    :goto_1
    new-instance p1, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-direct {p1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->paragraphStyle:Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, v0, v0, p1, v0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;-><init>(Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StrokeAttributes;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;-><init>(Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private drawEmoji(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/text/TextPaint;)Lcom/metamoji/cm/SizeF;
    .locals 8

    .line 1503
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v3, 0x7fffffff

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, p2

    move-object v2, p5

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1504
    new-instance p2, Lcom/metamoji/cm/SizeF;

    invoke-direct {p2}, Lcom/metamoji/cm/SizeF;-><init>()V

    const/4 p5, 0x0

    .line 1505
    invoke-virtual {v0, p5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    iput v1, p2, Lcom/metamoji/cm/SizeF;->width:F

    .line 1506
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p2, Lcom/metamoji/cm/SizeF;->height:F

    .line 1510
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1511
    invoke-virtual {v0, p5}, Landroid/text/StaticLayout;->getLineBaseline(I)I

    move-result p5

    int-to-float p5, p5

    sub-float/2addr p4, p5

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1513
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1517
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-object p2
.end method

.method private nextTabStop(F)F
    .locals 3

    const/high16 v0, 0x41e00000    # 28.0f

    move v1, v0

    :goto_0
    cmpl-float v2, p1, v1

    if-ltz v2, :cond_0

    add-float/2addr v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public characterAtIndex(I)C
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/metamoji/un/text/model/TextLine;FLcom/metamoji/un/text/model/linetable/ColumnTable;Lcom/metamoji/cm/mutable/MutableInt;Lcom/metamoji/un/text/model/linetable/LineInfo;Lcom/metamoji/cm/mutable/MutableFloat;ZLandroid/text/TextPaint;Lcom/metamoji/un/text/model/attr/StringAttributes;)F
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 1187
    invoke-virtual {v8}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v11

    move-object/from16 v12, p2

    .line 1188
    iget-object v1, v12, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v14, 0x1

    if-eqz v1, :cond_18

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/metamoji/cm/Range;

    .line 1189
    invoke-virtual {v0, v6}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->substringWithRange(Lcom/metamoji/cm/Range;)Ljava/lang/String;

    move-result-object v1

    .line 1190
    iget v2, v6, Lcom/metamoji/cm/Range;->location:I

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringAttributesAtIndex(I)Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v15

    .line 1191
    iget v2, v6, Lcom/metamoji/cm/Range;->location:I

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isUrl(I)Z

    move-result v16

    .line 1193
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    move-object/from16 v2, p9

    .line 1194
    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move-object/from16 v3, p10

    .line 1195
    invoke-virtual {v15, v5, v3}, Lcom/metamoji/un/text/model/attr/StringAttributes;->updateDrawState(Landroid/graphics/Paint;Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    if-eqz v16, :cond_0

    const v4, -0xffff01

    .line 1197
    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 1198
    invoke-virtual {v5, v14}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 1201
    :cond_0
    invoke-virtual {v12}, Lcom/metamoji/un/text/model/TextLine;->isVerticalWriting()Z

    move-result v4

    move/from16 v17, v14

    const/4 v14, 0x0

    if-eqz v4, :cond_1

    .line 1203
    invoke-virtual {v5, v14}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 1204
    invoke-virtual {v5, v14}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    .line 1207
    :cond_1
    invoke-virtual {v8}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->getColumnInfo(I)Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    move-result-object v4

    .line 1208
    iget-object v14, v4, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    move-object/from16 v18, v1

    .line 1210
    iget v1, v6, Lcom/metamoji/cm/Range;->location:I

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isEmojiAt(I)Z

    move-result v1

    const/4 v12, 0x2

    if-eqz v1, :cond_3

    .line 1211
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/un/text/model/TextLine;->isVerticalWriting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1212
    iget-object v1, v4, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    sub-float v1, p3, v1

    iget v4, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextSize()F

    move-result v14

    add-float/2addr v4, v14

    move v3, v1

    move-object/from16 v2, v18

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->drawEmoji(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/text/TextPaint;)Lcom/metamoji/cm/SizeF;

    goto :goto_1

    :cond_2
    move-object/from16 v1, v18

    .line 1214
    iget v3, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    move/from16 v4, p3

    move-object v2, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->drawEmoji(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/text/TextPaint;)Lcom/metamoji/cm/SizeF;

    .line 1215
    :goto_1
    invoke-virtual {v8}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v0

    iget v1, v6, Lcom/metamoji/cm/Range;->length:I

    div-int/2addr v1, v12

    add-int/2addr v0, v1

    invoke-virtual {v8, v0}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    move-object/from16 v0, p0

    move-object/from16 v12, p2

    goto/16 :goto_0

    :cond_3
    move-object/from16 v6, v18

    .line 1224
    invoke-virtual {v8}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v0

    const/16 v18, 0x0

    move-object/from16 v2, v18

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 1225
    invoke-virtual {v7, v0}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->getColumnInfo(I)Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    move-result-object v2

    .line 1226
    iget v3, v2, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->unitNum:I

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1230
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/un/text/model/TextLine;->isVerticalWriting()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1231
    iget-object v0, v2, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, v2, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v0, v1

    .line 1232
    iget v1, v14, Landroid/graphics/PointF;->y:F

    goto :goto_3

    .line 1235
    :cond_5
    iget-object v0, v2, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, v2, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v0, v1

    .line 1236
    iget v1, v14, Landroid/graphics/PointF;->x:F

    :goto_3
    move v4, v0

    move v2, v1

    .line 1240
    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v14

    .line 1241
    invoke-virtual {v15}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isUseComposingBgColor()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1242
    invoke-virtual {v5}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    .line 1243
    invoke-virtual {v5}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    .line 1246
    invoke-virtual {v15}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getComposingBgColor()I

    move-result v3

    .line 1245
    invoke-virtual {v5, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 1247
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1249
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/un/text/model/TextLine;->isVerticalWriting()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1250
    iget-object v3, v9, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v12, v9, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    iget-object v0, v9, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v12, v0

    move-object v0, v13

    move-object v13, v1

    move v1, v3

    move v3, v12

    move/from16 v12, v19

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v20, v2

    move/from16 v21, v4

    goto :goto_4

    :cond_6
    move v12, v0

    move-object/from16 v19, v13

    move-object v13, v1

    .line 1252
    iget-object v0, v9, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, v9, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, v9, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v3, v3, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v1, v3

    move v3, v4

    move v4, v1

    move v1, v2

    move v2, v0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v20, v1

    move/from16 v21, v3

    .line 1258
    :goto_4
    invoke-virtual {v5, v12}, Landroid/text/TextPaint;->setColor(I)V

    .line 1259
    invoke-virtual {v5, v13}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_5

    :cond_7
    move-object/from16 v0, p1

    move/from16 v20, v2

    move/from16 v21, v4

    move-object/from16 v19, v13

    .line 1263
    :goto_5
    invoke-virtual {v8}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v1

    move v12, v1

    const/4 v2, 0x0

    .line 1264
    :goto_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_11

    .line 1265
    invoke-virtual {v7, v12}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->getColumnInfo(I)Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    move-result-object v13

    .line 1267
    iget v1, v13, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->unitNum:I

    move/from16 v22, v1

    move/from16 v1, v17

    .line 1268
    :goto_7
    iget v3, v13, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->combineColumnInfoNum:I

    if-ge v1, v3, :cond_8

    add-int v3, v12, v1

    .line 1269
    invoke-virtual {v7, v3}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->getColumnInfo(I)Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->unitNum:I

    add-int v22, v22, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1270
    :cond_8
    iget-object v1, v13, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    .line 1271
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/un/text/model/TextLine;->isVerticalWriting()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1284
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/un/text/model/TextLine;->isVerticalWriting()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1285
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/metamoji/un/text/VertCharInfo;->getVertCharInfo(C)Lcom/metamoji/un/text/VertCharInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1286
    invoke-virtual {v1}, Lcom/metamoji/un/text/VertCharInfo;->isRotateChar()Z

    move-result v3

    goto :goto_8

    :cond_9
    move-object/from16 v1, v18

    :cond_a
    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_c

    .line 1291
    iget v3, v14, Landroid/graphics/Paint$FontMetrics;->ascent:F

    const/high16 v23, 0x40000000    # 2.0f

    iget v4, v14, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v3, v4

    div-float v3, v3, v23

    add-float v3, p3, v3

    .line 1292
    iget-object v4, v13, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 1294
    invoke-virtual {v1}, Lcom/metamoji/un/text/VertCharInfo;->getVertCharKind()Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    move-result-object v1

    move/from16 v24, v2

    sget-object v2, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->rotateZen:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    if-ne v1, v2, :cond_b

    .line 1295
    iget v1, v14, Landroid/graphics/Paint$FontMetrics;->descent:F

    div-float v1, v1, v23

    sub-float/2addr v3, v1

    .line 1298
    :cond_b
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 1299
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x42b40000    # 90.0f

    .line 1300
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    add-int v3, v24, v22

    const/4 v4, 0x0

    move-object v1, v6

    move-object v6, v5

    const/4 v5, 0x0

    move/from16 v2, v24

    .line 1301
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    move-object v5, v6

    move-object v2, v1

    .line 1302
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_c

    :cond_c
    move/from16 v24, v2

    move-object v2, v6

    const/high16 v23, 0x40000000    # 2.0f

    .line 1306
    iget-object v0, v13, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    .line 1307
    iget v3, v13, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->combineColumnInfoNum:I

    move/from16 v4, v17

    if-le v3, v4, :cond_d

    const/4 v4, 0x1

    .line 1308
    :goto_9
    iget v3, v13, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->combineColumnInfoNum:I

    if-ge v4, v3, :cond_d

    add-int v3, v12, v4

    .line 1309
    invoke-virtual {v7, v3}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->getColumnInfo(I)Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    move-result-object v3

    .line 1310
    iget-object v3, v3, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v3, v3, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v0, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1313
    :cond_d
    iget-object v3, v13, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    div-float v0, v0, v23

    add-float/2addr v3, v0

    .line 1314
    iget-object v0, v13, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    div-float v0, v0, v23

    sub-float v0, p3, v0

    .line 1315
    iget v4, v14, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v6, v14, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v4, v6

    div-float v4, v4, v23

    sub-float/2addr v3, v4

    if-eqz v1, :cond_f

    .line 1318
    invoke-virtual {v1}, Lcom/metamoji/un/text/VertCharInfo;->getVertCharKind()Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    move-result-object v4

    sget-object v6, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->yousokuOn:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    if-ne v4, v6, :cond_e

    .line 1319
    iget-object v1, v13, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 1320
    iget-object v1, v13, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v1, v4

    :goto_a
    sub-float/2addr v3, v1

    goto :goto_b

    .line 1322
    :cond_e
    invoke-virtual {v1}, Lcom/metamoji/un/text/VertCharInfo;->getVertCharKind()Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    move-result-object v1

    sget-object v4, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->kutouTen:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    if-ne v1, v4, :cond_f

    .line 1323
    iget-object v1, v13, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    div-float v1, v1, v23

    add-float/2addr v0, v1

    .line 1324
    iget-object v1, v13, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    div-float v1, v1, v23

    goto :goto_a

    :cond_f
    :goto_b
    move v4, v0

    add-int v0, v24, v22

    move-object v1, v2

    move-object v6, v5

    move/from16 v2, v24

    move v5, v3

    move v3, v0

    move-object/from16 v0, p1

    .line 1327
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    move-object v5, v6

    move-object v2, v1

    :goto_c
    move-object v1, v2

    goto :goto_d

    :cond_10
    move/from16 v24, v2

    move-object v2, v6

    add-int v3, v24, v22

    .line 1331
    iget v4, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v6, v5

    move/from16 v2, v24

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    move-object v5, v6

    .line 1333
    :goto_d
    iget v0, v13, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->combineColumnInfoNum:I

    add-int/2addr v12, v0

    add-int v2, v24, v22

    move-object/from16 v0, p1

    move-object v6, v1

    const/16 v17, 0x1

    goto/16 :goto_6

    .line 1338
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/un/text/model/TextLine;->isVerticalWriting()Z

    move-result v0

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v0, :cond_14

    .line 1339
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1340
    invoke-virtual {v5, v13}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    if-nez v16, :cond_13

    .line 1342
    invoke-virtual {v15}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isUnderline()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v15}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isComposingUnderline()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_e

    :cond_12
    move/from16 v2, v20

    move/from16 v4, v21

    goto :goto_f

    .line 1343
    :cond_13
    :goto_e
    iget-object v0, v9, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, v9, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v0, v1

    sub-float/2addr v0, v13

    add-float v1, v0, v6

    move v3, v1

    move-object/from16 v0, p1

    move/from16 v2, v20

    move/from16 v4, v21

    .line 1344
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1347
    :goto_f
    invoke-virtual {v15}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isStrikeout()Z

    move-result v0

    if-eqz v0, :cond_15

    move/from16 v3, p3

    move-object/from16 v0, p1

    move/from16 v1, p3

    .line 1348
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_10

    :cond_14
    move/from16 v2, v20

    move/from16 v4, v21

    .line 1353
    :cond_15
    :goto_10
    invoke-virtual {v15}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isSpellErrorMark()Z

    move-result v0

    if-eqz v0, :cond_17

    if-eqz p8, :cond_17

    .line 1354
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1355
    invoke-virtual {v5, v13}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    const/4 v0, 0x2

    .line 1356
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 1357
    new-instance v1, Landroid/graphics/DashPathEffect;

    invoke-virtual {v10}, Lcom/metamoji/cm/mutable/MutableFloat;->getValue()F

    move-result v3

    invoke-direct {v1, v0, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v5, v1}, Landroid/text/TextPaint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 1358
    invoke-static {v0, v0, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 1359
    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 1361
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/un/text/model/TextLine;->isVerticalWriting()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1362
    iget-object v0, v9, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, v9, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v0, v1

    sub-float/2addr v0, v13

    add-float v1, v0, v6

    move v3, v1

    move-object/from16 v0, p1

    .line 1363
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_11

    :cond_16
    move v3, v4

    move/from16 v4, p3

    move-object/from16 v0, p1

    move v1, v2

    move/from16 v2, p3

    .line 1366
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v4, v3

    .line 1369
    :goto_11
    invoke-virtual {v10, v4}, Lcom/metamoji/cm/mutable/MutableFloat;->setValue(F)V

    goto :goto_12

    :cond_17
    const/4 v0, 0x0

    .line 1372
    invoke-virtual {v10, v0}, Lcom/metamoji/cm/mutable/MutableFloat;->setValue(F)V

    .line 1374
    :goto_12
    invoke-virtual {v8, v12}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    move-object/from16 v0, p0

    move-object/from16 v12, p2

    move-object/from16 v13, v19

    goto/16 :goto_0

    .line 1376
    :cond_18
    invoke-virtual {v8}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v0

    const/16 v17, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->getColumnInfo(I)Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    move-result-object v0

    .line 1377
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/un/text/model/TextLine;->isVerticalWriting()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1378
    iget-object v1, v0, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v0, v0, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v1, v0

    .line 1379
    invoke-virtual {v7, v11}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->getColumnInfo(I)Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    :goto_13
    sub-float/2addr v1, v0

    return v1

    .line 1382
    :cond_19
    iget-object v1, v0, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v0, v0, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v1, v0

    .line 1383
    invoke-virtual {v7, v11}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->getColumnInfo(I)Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    goto :goto_13

    nop

    :array_0
    .array-data 4
        0x40400000    # 3.0f
        0x40400000    # 3.0f
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/metamoji/un/text/model/TextLine;FFLcom/metamoji/un/text/model/linetable/LineInfo;Landroid/text/TextPaint;Lcom/metamoji/un/text/model/attr/StringAttributes;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p2

    .line 1396
    iget-object v1, v8, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v1, 0x0

    move/from16 v6, p3

    move/from16 v4, p4

    move v10, v1

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cm/Range;

    .line 1397
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->substringWithRange(Lcom/metamoji/cm/Range;)Ljava/lang/String;

    move-result-object v2

    .line 1398
    iget v3, v1, Lcom/metamoji/cm/Range;->location:I

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringAttributesAtIndex(I)Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v3

    .line 1399
    iget v5, v1, Lcom/metamoji/cm/Range;->location:I

    invoke-virtual {v0, v5}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isUrl(I)Z

    move-result v5

    .line 1401
    new-instance v11, Landroid/text/TextPaint;

    invoke-direct {v11}, Landroid/text/TextPaint;-><init>()V

    move-object/from16 v12, p6

    .line 1402
    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move-object/from16 v13, p7

    .line 1403
    invoke-virtual {v3, v11, v13}, Lcom/metamoji/un/text/model/attr/StringAttributes;->updateDrawState(Landroid/graphics/Paint;Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    if-eqz v5, :cond_0

    const v5, -0xffff01

    .line 1405
    invoke-virtual {v11, v5}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v5, 0x1

    .line 1406
    invoke-virtual {v11, v5}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 1411
    :cond_0
    iget v1, v1, Lcom/metamoji/cm/Range;->location:I

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isEmojiAt(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1412
    invoke-virtual {v8}, Lcom/metamoji/un/text/model/TextLine;->isVerticalWriting()Z

    move-result v1

    if-eqz v1, :cond_1

    add-float v3, v6, v10

    move-object/from16 v1, p1

    move-object v5, v11

    .line 1413
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->drawEmoji(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/text/TextPaint;)Lcom/metamoji/cm/SizeF;

    move-result-object v2

    iget v0, v2, Lcom/metamoji/cm/SizeF;->height:F

    goto :goto_1

    :cond_1
    move-object v5, v11

    add-float v3, v6, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1415
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->drawEmoji(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/text/TextPaint;)Lcom/metamoji/cm/SizeF;

    move-result-object v2

    iget v0, v2, Lcom/metamoji/cm/SizeF;->width:F

    :goto_1
    add-float/2addr v10, v0

    :goto_2
    move-object/from16 v0, p0

    goto :goto_0

    :cond_2
    move-object v5, v11

    .line 1420
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v12, v2

    invoke-virtual/range {v11 .. v18}, Landroid/text/TextPaint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    move-result v13

    move-object v11, v12

    .line 1423
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isUseBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1424
    invoke-virtual {v5}, Landroid/text/TextPaint;->getColor()I

    move-result v12

    .line 1425
    invoke-virtual {v5}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v14

    .line 1427
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getBackgroundColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 1428
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1430
    invoke-virtual {v8}, Lcom/metamoji/un/text/model/TextLine;->isVerticalWriting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1431
    iget-object v0, v7, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, v7, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, v7, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->width:F

    add-float v3, v0, v2

    add-float v0, v4, v10

    add-float/2addr v0, v13

    move v2, v4

    move v4, v0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v15, v2

    move v1, v6

    goto :goto_3

    :cond_3
    move v15, v4

    .line 1433
    iget-object v0, v7, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    add-float v0, v6, v10

    add-float v3, v0, v13

    iget-object v0, v7, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, v7, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    add-float v4, v0, v1

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1440
    :goto_3
    invoke-virtual {v5, v12}, Landroid/text/TextPaint;->setColor(I)V

    .line 1441
    invoke-virtual {v5, v14}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_4

    :cond_4
    move-object/from16 v0, p1

    move v15, v4

    move v1, v6

    .line 1444
    :goto_4
    invoke-virtual {v8}, Lcom/metamoji/un/text/model/TextLine;->isVerticalWriting()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1445
    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v12

    .line 1446
    iget-object v2, v7, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v7, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v3, v3, Lcom/metamoji/cm/SizeF;->width:F

    const/high16 v19, 0x40000000    # 2.0f

    div-float v3, v3, v19

    add-float v20, v2, v3

    .line 1448
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v13

    .line 1449
    invoke-virtual {v13, v11}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 1450
    invoke-virtual {v13}, Ljava/text/BreakIterator;->first()I

    move-result v14

    move/from16 v22, v1

    move/from16 v21, v15

    .line 1451
    :goto_5
    invoke-virtual {v13}, Ljava/text/BreakIterator;->next()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    .line 1452
    invoke-virtual {v13}, Ljava/text/BreakIterator;->current()I

    move-result v1

    .line 1453
    invoke-virtual {v11, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1456
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/metamoji/un/text/VertCharInfo;->getVertCharInfo(C)Lcom/metamoji/un/text/VertCharInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1457
    invoke-virtual {v3}, Lcom/metamoji/un/text/VertCharInfo;->isRotateChar()Z

    move-result v2

    :cond_5
    if-eqz v2, :cond_7

    .line 1461
    iget v2, v12, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v4, v12, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v2, v4

    div-float v2, v2, v19

    add-float v2, v20, v2

    add-float v4, v21, v10

    .line 1464
    invoke-virtual {v3}, Lcom/metamoji/un/text/VertCharInfo;->getVertCharKind()Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    move-result-object v3

    sget-object v6, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->rotateZen:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    if-ne v3, v6, :cond_6

    .line 1465
    iget v3, v12, Landroid/graphics/Paint$FontMetrics;->descent:F

    div-float v3, v3, v19

    sub-float/2addr v2, v3

    .line 1468
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 1469
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x42b40000    # 90.0f

    .line 1470
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1471
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    move-object v5, v6

    .line 1472
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, p1

    move-object/from16 v23, v13

    move/from16 v24, v14

    goto/16 :goto_7

    :cond_7
    add-float v0, v21, v10

    .line 1475
    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    div-float v2, v2, v19

    add-float/2addr v0, v2

    move v2, v14

    .line 1477
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v18

    move-object v4, v13

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v23, v12

    move-object v12, v1

    move-object/from16 v1, v23

    move/from16 v24, v2

    move-object/from16 v23, v4

    move-object v2, v11

    move-object v11, v5

    invoke-virtual/range {v11 .. v18}, Landroid/text/TextPaint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    move-result v4

    div-float v6, v4, v19

    move v11, v4

    sub-float v4, v20, v6

    .line 1479
    iget v13, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v14, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v13, v14

    div-float v13, v13, v19

    sub-float/2addr v0, v13

    if-eqz v3, :cond_9

    .line 1482
    invoke-virtual {v3}, Lcom/metamoji/un/text/VertCharInfo;->getVertCharKind()Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    move-result-object v13

    sget-object v14, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->yousokuOn:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    if-ne v13, v14, :cond_8

    const/high16 v3, 0x41200000    # 10.0f

    div-float v3, v11, v3

    add-float v22, v22, v3

    const/high16 v3, 0x41a00000    # 20.0f

    div-float v3, v11, v3

    sub-float v21, v21, v3

    goto :goto_6

    .line 1486
    :cond_8
    invoke-virtual {v3}, Lcom/metamoji/un/text/VertCharInfo;->getVertCharKind()Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    move-result-object v3

    sget-object v11, Lcom/metamoji/un/text/VertCharInfo$VertCharKind;->kutouTen:Lcom/metamoji/un/text/VertCharInfo$VertCharKind;

    if-ne v3, v11, :cond_9

    add-float v22, v22, v6

    sub-float v21, v21, v6

    :cond_9
    :goto_6
    move-object v11, v2

    const/4 v2, 0x0

    .line 1491
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    move-object v6, v12

    move-object v12, v1

    move-object v1, v6

    move-object v6, v5

    move v5, v0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    move-object v5, v6

    :goto_7
    move-object/from16 v13, v23

    move/from16 v14, v24

    goto/16 :goto_5

    :cond_a
    move/from16 v4, v21

    move/from16 v6, v22

    goto/16 :goto_2

    :cond_b
    add-float v6, v1, v10

    .line 1496
    invoke-virtual {v0, v11, v6, v15, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v10, v13

    move v6, v1

    move v4, v15

    goto/16 :goto_2

    :cond_c
    return-void
.end method

.method protected fillAttributesForString(Lcom/metamoji/un/text/model/attr/StringAttributes;)V
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 383
    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringAttributes:Ljava/util/List;

    if-nez v1, :cond_0

    .line 384
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringAttributes:Ljava/util/List;

    goto :goto_0

    .line 386
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_0
    if-nez p1, :cond_1

    .line 390
    new-instance p1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-direct {p1}, Lcom/metamoji/un/text/model/attr/StringAttributes;-><init>()V

    goto :goto_1

    .line 392
    :cond_1
    new-instance v1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-direct {v1, p1}, Lcom/metamoji/un/text/model/attr/StringAttributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    move-object p1, v1

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 395
    iget-object v2, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringAttributes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected fillAttributesForStroke(Lcom/metamoji/un/text/model/attr/StrokeAttributes;)V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 406
    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokeAttributes:Ljava/util/List;

    if-nez v1, :cond_0

    .line 407
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokeAttributes:Ljava/util/List;

    goto :goto_0

    .line 409
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_0
    if-nez p1, :cond_1

    .line 413
    new-instance p1, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    invoke-direct {p1}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;-><init>()V

    goto :goto_1

    .line 415
    :cond_1
    new-instance v1, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    invoke-direct {v1, p1}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    move-object p1, v1

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 417
    iget-object v2, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokeAttributes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public getAttributeArrayInRange(Lcom/metamoji/cm/Range;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/Range;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/Attributes;",
            ">;"
        }
    .end annotation

    .line 851
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getLength()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 854
    :cond_0
    iget v1, p1, Lcom/metamoji/cm/Range;->location:I

    iget v2, p1, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 858
    :goto_0
    iget v1, p1, Lcom/metamoji/cm/Range;->location:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/metamoji/cm/Range;->length:I

    .line 860
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p1, Lcom/metamoji/cm/Range;->length:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 861
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isRenderStrokes()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 862
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStrokeAttributesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object p1

    .line 863
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    .line 864
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 867
    :cond_2
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringAttributesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object p1

    .line 868
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    .line 869
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public getCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getCharSequence(Z)Ljava/lang/CharSequence;
    .locals 3

    if-eqz p1, :cond_1

    .line 475
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isRenderStrokes()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 476
    iget-object p1, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 479
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 483
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGlyphPosAdvIdx(Lcom/metamoji/un/text/model/TextLine;Landroid/text/TextPaint;Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/TextLine;",
            "Landroid/text/TextPaint;",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1100
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1101
    iget-object v3, v1, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/cm/Range;

    iget v3, v3, Lcom/metamoji/cm/Range;->location:I

    .line 1103
    iget-object v5, v1, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/cm/Range;

    .line 1104
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1105
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1106
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1108
    iget v12, v8, Lcom/metamoji/cm/Range;->location:I

    invoke-virtual {v0, v12}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringAttributesAtIndex(I)Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v12

    .line 1109
    new-instance v15, Landroid/text/TextPaint;

    move-object/from16 v13, p2

    invoke-direct {v15, v13}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    move-object/from16 v14, p3

    .line 1110
    invoke-virtual {v12, v15, v14}, Lcom/metamoji/un/text/model/attr/StringAttributes;->updateMeasureState(Landroid/graphics/Paint;Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    .line 1112
    iget v12, v8, Lcom/metamoji/cm/Range;->length:I

    new-array v12, v12, [F

    const/16 v21, 0x0

    .line 1113
    iget v6, v8, Lcom/metamoji/cm/Range;->location:I

    invoke-virtual {v0, v6}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isEmojiAt(I)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v4

    .line 1114
    :goto_1
    iget v4, v8, Lcom/metamoji/cm/Range;->length:I

    if-ge v6, v4, :cond_1

    .line 1115
    iget v4, v8, Lcom/metamoji/cm/Range;->location:I

    add-int/2addr v4, v6

    iget v1, v8, Lcom/metamoji/cm/Range;->location:I

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x2

    invoke-interface {v2, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1116
    new-instance v13, Landroid/text/StaticLayout;

    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v16, 0x7fffffff

    const/high16 v18, 0x3f800000    # 1.0f

    move-object v14, v1

    invoke-direct/range {v13 .. v20}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1117
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/text/model/TextLine;->isVerticalWriting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1118
    invoke-virtual {v13}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    aput v1, v12, v6

    const/4 v1, 0x0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 1120
    invoke-virtual {v13, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v4

    aput v4, v12, v6

    :goto_2
    add-int/lit8 v4, v6, 0x1

    .line 1121
    aput v21, v12, v4

    add-int/lit8 v6, v6, 0x2

    move-object/from16 v1, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_4

    :cond_2
    move v1, v4

    .line 1126
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/text/model/TextLine;->isVerticalWriting()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1127
    iget-object v4, v0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    iget v6, v8, Lcom/metamoji/cm/Range;->location:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 1128
    invoke-static {v4}, Lcom/metamoji/un/text/VertCharInfo;->getVertCharInfo(C)Lcom/metamoji/un/text/VertCharInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1129
    invoke-virtual {v4}, Lcom/metamoji/un/text/VertCharInfo;->isRotateChar()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1131
    iget v4, v8, Lcom/metamoji/cm/Range;->location:I

    iget v6, v8, Lcom/metamoji/cm/Range;->location:I

    iget v13, v8, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v6, v13

    invoke-virtual {v15, v2, v4, v6, v12}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    goto :goto_4

    .line 1136
    :cond_3
    iget v4, v8, Lcom/metamoji/cm/Range;->location:I

    iget v6, v8, Lcom/metamoji/cm/Range;->location:I

    iget v13, v8, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v6, v13

    invoke-virtual {v15, v2, v4, v6, v12}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 1137
    invoke-virtual {v15}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    move v6, v1

    .line 1138
    :goto_3
    iget v13, v8, Lcom/metamoji/cm/Range;->length:I

    if-ge v6, v13, :cond_6

    .line 1139
    aget v13, v12, v6

    cmpl-float v13, v13, v21

    if-eqz v13, :cond_4

    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v13

    iget v14, v8, Lcom/metamoji/cm/Range;->location:I

    add-int/2addr v14, v6

    invoke-interface {v2, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v13

    if-nez v13, :cond_4

    .line 1140
    aput v4, v12, v6

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1146
    :cond_5
    iget v4, v8, Lcom/metamoji/cm/Range;->location:I

    iget v6, v8, Lcom/metamoji/cm/Range;->location:I

    iget v13, v8, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v6, v13

    invoke-virtual {v15, v2, v4, v6, v12}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 1151
    :cond_6
    :goto_4
    iget v4, v8, Lcom/metamoji/cm/Range;->location:I

    move v6, v1

    :goto_5
    iget v13, v8, Lcom/metamoji/cm/Range;->location:I

    iget v14, v8, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v13, v14

    if-ge v4, v13, :cond_a

    .line 1152
    iget v13, v8, Lcom/metamoji/cm/Range;->location:I

    sub-int v13, v4, v13

    aget v13, v12, v13

    .line 1153
    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    const/16 v15, 0x9

    if-ne v14, v15, :cond_7

    .line 1154
    invoke-direct {v0, v7}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->nextTabStop(F)F

    move-result v13

    sub-float/2addr v13, v7

    :cond_7
    cmpg-float v14, v21, v13

    if-ltz v14, :cond_8

    .line 1161
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v14

    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v14

    if-nez v14, :cond_8

    if-nez v6, :cond_9

    .line 1162
    :cond_8
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1163
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int v14, v4, v3

    .line 1164
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-float/2addr v7, v13

    cmpl-float v13, v13, v21

    if-lez v13, :cond_9

    const/4 v6, 0x1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v4, p4

    .line 1173
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, p5

    .line 1174
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p6

    .line 1175
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public getHotSpotRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/cm/Range;",
            ">;"
        }
    .end annotation

    .line 931
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->hotSpotRanges:Ljava/util/List;

    return-object v0
.end method

.method public getImageSize(Lcom/metamoji/un/text/model/TextLine;Landroid/text/TextPaint;Lcom/metamoji/un/text/model/attr/StringAttributes;)Lcom/metamoji/cm/SizeF;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 957
    new-instance v4, Lcom/metamoji/cm/SizeF;

    invoke-direct {v4}, Lcom/metamoji/cm/SizeF;-><init>()V

    .line 959
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextLine;->isVerticalWriting()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 960
    invoke-virtual/range {p0 .. p3}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getImageWidth(Lcom/metamoji/un/text/model/TextLine;Landroid/text/TextPaint;Lcom/metamoji/un/text/model/attr/StringAttributes;)F

    move-result v5

    iput v5, v4, Lcom/metamoji/cm/SizeF;->width:F

    .line 962
    iget-object v1, v1, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/cm/Range;

    .line 963
    iget v5, v5, Lcom/metamoji/cm/Range;->location:I

    invoke-virtual {v0, v5}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringAttributesAtIndex(I)Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v5

    .line 964
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 965
    invoke-virtual {v5, v6, v3}, Lcom/metamoji/un/text/model/attr/StringAttributes;->updateMeasureState(Landroid/graphics/Paint;Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    .line 966
    invoke-virtual {v6}, Landroid/text/TextPaint;->getTextSize()F

    move-result v5

    .line 967
    iget v6, v4, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v6, v5, v6

    if-lez v6, :cond_0

    .line 968
    iput v5, v4, Lcom/metamoji/cm/SizeF;->height:F

    goto :goto_0

    .line 972
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getString()Ljava/lang/String;

    move-result-object v8

    .line 973
    iget-object v1, v1, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/cm/Range;

    .line 974
    iget v6, v5, Lcom/metamoji/cm/Range;->location:I

    invoke-virtual {v0, v6}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringAttributesAtIndex(I)Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v6

    .line 975
    new-instance v9, Landroid/text/TextPaint;

    invoke-direct {v9, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 976
    invoke-virtual {v6, v9, v3}, Lcom/metamoji/un/text/model/attr/StringAttributes;->updateMeasureState(Landroid/graphics/Paint;Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    .line 979
    iget v6, v5, Lcom/metamoji/cm/Range;->location:I

    invoke-virtual {v0, v6}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isEmojiAt(I)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    .line 980
    iget v6, v5, Lcom/metamoji/cm/Range;->location:I

    iget v10, v5, Lcom/metamoji/cm/Range;->location:I

    iget v5, v5, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v10, v5

    invoke-virtual {v8, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object v11, v9

    .line 981
    new-instance v9, Landroid/text/StaticLayout;

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v12, 0x7fffffff

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v5, v9

    move-object v9, v11

    .line 982
    iget v6, v4, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {v5, v7}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v5

    add-float/2addr v6, v5

    iput v6, v4, Lcom/metamoji/cm/SizeF;->width:F

    goto/16 :goto_3

    .line 984
    :cond_3
    iget v6, v5, Lcom/metamoji/cm/Range;->location:I

    iget v10, v5, Lcom/metamoji/cm/Range;->location:I

    iget v11, v5, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v10, v11

    invoke-virtual {v8, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 985
    const-string v10, "\t"

    const/4 v11, -0x1

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 986
    array-length v10, v6

    const/4 v11, 0x1

    if-le v10, v11, :cond_5

    .line 988
    iget v5, v4, Lcom/metamoji/cm/SizeF;->width:F

    aget-object v10, v6, v7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    aget-object v13, v6, v7

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v16

    move v7, v11

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v16}, Landroid/text/TextPaint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    move-result v10

    add-float/2addr v5, v10

    iput v5, v4, Lcom/metamoji/cm/SizeF;->width:F

    .line 989
    :goto_2
    array-length v5, v6

    if-ge v7, v5, :cond_6

    .line 990
    iget v5, v4, Lcom/metamoji/cm/SizeF;->width:F

    invoke-direct {v0, v5}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->nextTabStop(F)F

    move-result v5

    iput v5, v4, Lcom/metamoji/cm/SizeF;->width:F

    .line 991
    aget-object v5, v6, v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 993
    iget v5, v4, Lcom/metamoji/cm/SizeF;->width:F

    aget-object v10, v6, v7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    aget-object v11, v6, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    aget-object v11, v6, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v16}, Landroid/text/TextPaint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    move-result v10

    add-float/2addr v5, v10

    iput v5, v4, Lcom/metamoji/cm/SizeF;->width:F

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1000
    :cond_5
    iget v6, v4, Lcom/metamoji/cm/SizeF;->width:F

    move-object v11, v9

    iget v9, v5, Lcom/metamoji/cm/Range;->location:I

    iget v7, v5, Lcom/metamoji/cm/Range;->location:I

    iget v10, v5, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v10, v7

    move-object v7, v11

    iget v11, v5, Lcom/metamoji/cm/Range;->location:I

    iget v12, v5, Lcom/metamoji/cm/Range;->location:I

    iget v13, v5, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v12, v13

    iget v13, v5, Lcom/metamoji/cm/Range;->location:I

    iget v5, v5, Lcom/metamoji/cm/Range;->length:I

    add-int v14, v13, v5

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v14}, Landroid/text/TextPaint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    move-result v5

    move-object v9, v7

    add-float/2addr v6, v5

    iput v6, v4, Lcom/metamoji/cm/SizeF;->width:F

    .line 1005
    :cond_6
    :goto_3
    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    .line 1006
    iget v6, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v6, v6

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v6, v5

    .line 1007
    iget v5, v4, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v5, v6, v5

    if-lez v5, :cond_2

    .line 1008
    iput v6, v4, Lcom/metamoji/cm/SizeF;->height:F

    goto/16 :goto_1

    :cond_7
    return-object v4
.end method

.method public getImageWidth(Lcom/metamoji/un/text/model/TextLine;Landroid/text/TextPaint;Lcom/metamoji/un/text/model/attr/StringAttributes;)F
    .locals 20

    move-object/from16 v0, p0

    .line 1017
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v9, p1

    .line 1018
    iget-object v1, v9, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v1, 0x0

    move v11, v1

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cm/Range;

    .line 1019
    iget v3, v1, Lcom/metamoji/cm/Range;->location:I

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringAttributesAtIndex(I)Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v3

    .line 1020
    new-instance v12, Landroid/text/TextPaint;

    move-object/from16 v4, p2

    invoke-direct {v12, v4}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    move-object/from16 v5, p3

    .line 1021
    invoke-virtual {v3, v12, v5}, Lcom/metamoji/un/text/model/attr/StringAttributes;->updateMeasureState(Landroid/graphics/Paint;Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    .line 1022
    iget v3, v1, Lcom/metamoji/cm/Range;->location:I

    iget v6, v1, Lcom/metamoji/cm/Range;->location:I

    iget v7, v1, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1024
    invoke-virtual {v9}, Lcom/metamoji/un/text/model/TextLine;->isVerticalWriting()Z

    move-result v3

    const-string v6, "\t"

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v14, 0x0

    if-eqz v3, :cond_4

    .line 1025
    iget-object v3, v0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/metamoji/cm/Range;->location:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 1026
    invoke-static {v3}, Lcom/metamoji/un/text/VertCharInfo;->getVertCharInfo(C)Lcom/metamoji/un/text/VertCharInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1027
    invoke-virtual {v3}, Lcom/metamoji/un/text/VertCharInfo;->isRotateChar()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1028
    invoke-virtual {v13, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 1029
    array-length v6, v3

    if-le v6, v8, :cond_2

    .line 1031
    aget-object v13, v3, v14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    aget-object v1, v3, v14

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v17

    aget-object v1, v3, v14

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v19

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v19}, Landroid/text/TextPaint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    move-result v1

    add-float/2addr v11, v1

    .line 1032
    :goto_1
    array-length v1, v3

    if-ge v8, v1, :cond_0

    .line 1033
    invoke-direct {v0, v11}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->nextTabStop(F)F

    move-result v1

    .line 1034
    aget-object v6, v3, v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 1036
    aget-object v13, v3, v8

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    aget-object v6, v3, v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v17

    aget-object v6, v3, v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v19

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v19}, Landroid/text/TextPaint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    move-result v6

    add-float/2addr v1, v6

    :cond_1
    move v11, v1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1042
    :cond_2
    iget v3, v1, Lcom/metamoji/cm/Range;->location:I

    iget v6, v1, Lcom/metamoji/cm/Range;->location:I

    iget v7, v1, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v6, v7

    iget v5, v1, Lcom/metamoji/cm/Range;->location:I

    iget v7, v1, Lcom/metamoji/cm/Range;->location:I

    iget v8, v1, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v7, v8

    iget v8, v1, Lcom/metamoji/cm/Range;->location:I

    iget v1, v1, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v8, v1

    move v4, v6

    move v6, v7

    const/4 v7, 0x0

    move-object v1, v12

    invoke-virtual/range {v1 .. v8}, Landroid/text/TextPaint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    move-result v1

    :goto_2
    add-float/2addr v11, v1

    goto/16 :goto_0

    .line 1047
    :cond_3
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v1

    .line 1048
    invoke-virtual {v1, v13}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 1049
    :goto_3
    invoke-virtual {v1}, Ljava/text/BreakIterator;->next()I

    move-result v3

    if-eq v3, v7, :cond_0

    .line 1050
    invoke-virtual {v12}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    add-float/2addr v11, v3

    goto :goto_3

    .line 1055
    :cond_4
    iget v3, v1, Lcom/metamoji/cm/Range;->location:I

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isEmojiAt(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v14

    move-object v14, v12

    .line 1056
    new-instance v12, Landroid/text/StaticLayout;

    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v15, 0x7fffffff

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-direct/range {v12 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1057
    invoke-virtual {v12, v3}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    goto :goto_2

    :cond_5
    move v3, v14

    .line 1060
    invoke-virtual {v13, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 1061
    array-length v5, v4

    if-le v5, v8, :cond_7

    .line 1063
    aget-object v13, v4, v3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    aget-object v1, v4, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v17

    aget-object v1, v4, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v19

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v19}, Landroid/text/TextPaint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    move-result v1

    add-float/2addr v11, v1

    .line 1064
    :goto_4
    array-length v1, v4

    if-ge v8, v1, :cond_0

    .line 1065
    invoke-direct {v0, v11}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->nextTabStop(F)F

    move-result v1

    .line 1066
    aget-object v3, v4, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 1068
    aget-object v13, v4, v8

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    aget-object v3, v4, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    aget-object v3, v4, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v19

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v19}, Landroid/text/TextPaint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    move-result v3

    add-float/2addr v1, v3

    :cond_6
    move v11, v1

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1074
    :cond_7
    iget v3, v1, Lcom/metamoji/cm/Range;->location:I

    iget v4, v1, Lcom/metamoji/cm/Range;->location:I

    iget v5, v1, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v4, v5

    iget v5, v1, Lcom/metamoji/cm/Range;->location:I

    iget v6, v1, Lcom/metamoji/cm/Range;->location:I

    iget v7, v1, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v6, v7

    iget v7, v1, Lcom/metamoji/cm/Range;->location:I

    iget v1, v1, Lcom/metamoji/cm/Range;->length:I

    add-int v8, v7, v1

    const/4 v7, 0x0

    move-object v1, v12

    invoke-virtual/range {v1 .. v8}, Landroid/text/TextPaint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    move-result v1

    goto/16 :goto_2

    :cond_8
    return v11
.end method

.method public getLength()I
    .locals 2

    .line 587
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringLength()I

    move-result v0

    .line 588
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isRenderStrokes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getLength(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getLengthUCS4()I

    move-result p1

    return p1

    .line 614
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getLength()I

    move-result p1

    return p1
.end method

.method public getLengthUCS4()I
    .locals 1

    .line 600
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isRenderStrokes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 604
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringLengthUCS4()I

    move-result v0

    return v0
.end method

.method public getLineRef(I)Lcom/metamoji/un/text/model/TextLine;
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->lineRefArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/TextLine;

    return-object p1
.end method

.method public getLineRefCount()I
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->lineRefArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLineRefTextPosition(I)Lcom/metamoji/un/text/model/TextPosition;
    .locals 1

    .line 927
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->_lineRefTextPositionArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/TextPosition;

    return-object p1
.end method

.method public getMaxIndex()I
    .locals 1

    .line 567
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isRenderStrokes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/metamoji/cm/StringUtils;->maxIndex(Ljava/lang/CharSequence;)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxIndex(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getMaxIndex()I

    move-result p1

    return p1

    .line 579
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getLength()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->paragraphStyle:Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStringAndAttributeRunArray()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/stringws/StringAndAttribute;",
            ">;"
        }
    .end annotation

    .line 692
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringLength()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 696
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_3

    .line 701
    invoke-virtual {p0, v3}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringAttributesAtIndex(I)Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v5

    if-nez v1, :cond_1

    :goto_1
    move-object v1, v5

    goto :goto_2

    .line 704
    :cond_1
    invoke-virtual {v1, v5}, Lcom/metamoji/un/text/model/attr/StringAttributes;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 706
    new-instance v6, Lcom/metamoji/un/text/model/stringws/StringAndAttribute;

    iget-object v7, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4, v1}, Lcom/metamoji/un/text/model/stringws/StringAndAttribute;-><init>(Ljava/lang/String;Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    .line 707
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v3

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 716
    :cond_3
    new-instance v3, Lcom/metamoji/un/text/model/stringws/StringAndAttribute;

    iget-object v5, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lcom/metamoji/un/text/model/stringws/StringAndAttribute;-><init>(Ljava/lang/String;Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    .line 717
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public getStringAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            ">;"
        }
    .end annotation

    .line 828
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringAttributes:Ljava/util/List;

    return-object v0
.end method

.method public getStringAttributesAtIndex(I)Lcom/metamoji/un/text/model/attr/StringAttributes;
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringAttributes:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringAttributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStringAttributesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/Range;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            ">;"
        }
    .end annotation

    .line 838
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringAttributes:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p1, Lcom/metamoji/cm/Range;->location:I

    iget v2, p1, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 839
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringAttributes:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/metamoji/cm/ListUtils;->getRange(Ljava/util/List;Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStringLength()I
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStringLengthUCS4()I
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/metamoji/cm/StringUtils;->lengthUCS4(Ljava/lang/CharSequence;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStrokeAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StrokeAttributes;",
            ">;"
        }
    .end annotation

    .line 786
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokeAttributes:Ljava/util/List;

    return-object v0
.end method

.method public getStrokeAttributesAtIndex(I)Lcom/metamoji/un/text/model/attr/StrokeAttributes;
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokeAttributes:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokeAttributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStrokeAttributesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/Range;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StrokeAttributes;",
            ">;"
        }
    .end annotation

    .line 803
    iget v0, p1, Lcom/metamoji/cm/Range;->location:I

    iget v1, p1, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokeAttributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 804
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokeAttributes:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/metamoji/cm/ListUtils;->getRange(Ljava/util/List;Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStrokeStyleSetInRange(Lcom/metamoji/cm/Range;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/Range;",
            ")",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            ">;"
        }
    .end annotation

    .line 882
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 886
    :cond_0
    iget v1, p1, Lcom/metamoji/cm/Range;->location:I

    iget v2, p1, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v1, v2

    .line 887
    iget v2, p1, Lcom/metamoji/cm/Range;->length:I

    iget v3, p1, Lcom/metamoji/cm/Range;->location:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 891
    :goto_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 893
    iget p1, p1, Lcom/metamoji/cm/Range;->location:I

    :goto_1
    if-ge p1, v0, :cond_3

    .line 894
    iget-object v2, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    .line 895
    invoke-interface {v2}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;

    .line 896
    invoke-interface {v3}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getStyle()Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public getStrokes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;"
        }
    .end annotation

    .line 767
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokes:Ljava/util/List;

    return-object v0
.end method

.method public getStrokesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/Range;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;"
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokes:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/metamoji/cm/ListUtils;->getRange(Ljava/util/List;Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hasString()Z
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasStrokes()Z
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokes:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public indexFrom(II)I
    .locals 1

    const/4 v0, 0x1

    .line 527
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->indexFrom(IIZ)I

    move-result p1

    return p1
.end method

.method public indexFrom(IIZ)I
    .locals 1

    .line 530
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isRenderStrokes()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    iget-object p3, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    invoke-static {p3, p1, p2}, Lcom/metamoji/cm/StringUtils;->indexFrom(Ljava/lang/CharSequence;II)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    add-int/2addr p1, p2

    .line 532
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getLength()I

    move-result p2

    if-le p1, p2, :cond_3

    .line 533
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getLength()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :cond_3
    return p1
.end method

.method public isEmojiAt(I)Z
    .locals 3

    .line 947
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 948
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    .line 949
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result p1

    const v0, 0xf3000

    if-lt p1, v0, :cond_2

    const v0, 0xfeba1

    if-gt p1, v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method public isFollowigCodeAtIndex(I)Z
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 655
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lcom/metamoji/cm/StringUtils;->isFollowigCodeAtIndex(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isRenderStrokes()Z
    .locals 1

    .line 730
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->hasStrokes()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 732
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->renderStrokes:Z

    return v0

    .line 733
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->hasStrokes()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isUrl(I)Z
    .locals 5

    .line 935
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringAttributesAtIndex(I)Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v0

    .line 936
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isComposingText()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->hotSpotRanges:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 937
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cm/Range;

    .line 938
    iget v2, v1, Lcom/metamoji/cm/Range;->location:I

    if-gt v2, p1, :cond_0

    iget v2, v1, Lcom/metamoji/cm/Range;->length:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/metamoji/cm/Range;->location:I

    iget v1, v1, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v2, v1

    sub-int/2addr v2, v4

    if-gt p1, v2, :cond_0

    :cond_1
    return v4

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public offsetFromIndexToIndex(II)I
    .locals 1

    const/4 v0, 0x1

    .line 548
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->offsetFromIndexToIndex(IIZ)I

    move-result p1

    return p1
.end method

.method public offsetFromIndexToIndex(IIZ)I
    .locals 1

    .line 552
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isRenderStrokes()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 555
    :cond_0
    iget-object p3, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    invoke-static {p3, p1, p2}, Lcom/metamoji/cm/StringUtils;->offsetFromIndexToIndex(Ljava/lang/CharSequence;II)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    sub-int/2addr p2, p1

    return p2
.end method

.method public serialize(Lcom/metamoji/cm/DataArchiver;)I
    .locals 6

    .line 264
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 268
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataToTemporary()Z

    .line 270
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeString(Ljava/lang/String;)I

    move-result v0

    .line 271
    iget-object v2, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringAttributes:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 272
    const-class v3, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-static {v2, p1, v3}, Lcom/metamoji/cm/ListUtils;->serialize(Ljava/util/List;Lcom/metamoji/cm/DataArchiver;Ljava/lang/Class;)I

    move-result v2

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    .line 277
    iget-object v2, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokes:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 278
    const-class v3, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    invoke-static {v2, p1, v3}, Lcom/metamoji/cm/ListUtils;->serialize(Ljava/util/List;Lcom/metamoji/cm/DataArchiver;Ljava/lang/Class;)I

    move-result v2

    goto :goto_1

    .line 281
    :cond_1
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 283
    iget-object v2, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokeAttributes:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 284
    const-class v3, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    invoke-static {v2, p1, v3}, Lcom/metamoji/cm/ListUtils;->serialize(Ljava/util/List;Lcom/metamoji/cm/DataArchiver;Ljava/lang/Class;)I

    move-result v2

    goto :goto_2

    .line 286
    :cond_2
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    .line 289
    iget-object v2, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->paragraphStyle:Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    if-eqz v2, :cond_3

    .line 290
    invoke-virtual {v2, p1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    move-result v1

    goto :goto_3

    .line 293
    :cond_3
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    .line 297
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataBackToMain()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 299
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 301
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->appendData(Ljava/io/ByteArrayOutputStream;)I

    return v0

    .line 305
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v0

    .line 307
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->getReadPointer()I

    move-result v2

    .line 309
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 311
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    goto :goto_4

    .line 313
    :cond_5
    iput-object v4, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    .line 315
    :goto_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringAttributes:Ljava/util/List;

    .line 316
    const-class v5, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-static {v3, p1, v5}, Lcom/metamoji/cm/ListUtils;->serialize(Ljava/util/List;Lcom/metamoji/cm/DataArchiver;Ljava/lang/Class;)I

    .line 317
    iget-object v3, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringAttributes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 318
    iput-object v4, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringAttributes:Ljava/util/List;

    .line 320
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokes:Ljava/util/List;

    .line 321
    const-class v5, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    invoke-static {v3, p1, v5}, Lcom/metamoji/cm/ListUtils;->serialize(Ljava/util/List;Lcom/metamoji/cm/DataArchiver;Ljava/lang/Class;)I

    .line 322
    iget-object v3, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 323
    iput-object v4, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokes:Ljava/util/List;

    .line 324
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokeAttributes:Ljava/util/List;

    .line 325
    const-class v5, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    invoke-static {v3, p1, v5}, Lcom/metamoji/cm/ListUtils;->serialize(Ljava/util/List;Lcom/metamoji/cm/DataArchiver;Ljava/lang/Class;)I

    .line 326
    iget-object v3, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokeAttributes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_8

    .line 327
    iput-object v4, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->strokeAttributes:Ljava/util/List;

    .line 329
    :cond_8
    iget-object v3, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->paragraphStyle:Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-virtual {v3, p1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    add-int/2addr v2, v0

    .line 333
    invoke-virtual {p1, v2}, Lcom/metamoji/cm/DataArchiver;->setReadPointer(I)V

    return v1
.end method

.method public stringEndWithEndOfParagraphChar()Z
    .locals 4

    .line 679
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 681
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/metamoji/un/text/model/TextModel;->lineSeparatorCharSet:Lcom/metamoji/cm/CharacterSet;

    invoke-virtual {v2, v0}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    return v1
.end method

.method public stringEndWithNewLineChar()Z
    .locals 3

    .line 666
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 667
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public subSequenceWithRange(IIZ)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p3, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isRenderStrokes()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 450
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    .line 452
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    .line 456
    :cond_1
    iget-object p3, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    add-int/2addr p2, p1

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public subSequenceWithRange(Lcom/metamoji/cm/Range;Z)Ljava/lang/CharSequence;
    .locals 1

    .line 459
    iget v0, p1, Lcom/metamoji/cm/Range;->location:I

    iget p1, p1, Lcom/metamoji/cm/Range;->length:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->subSequenceWithRange(IIZ)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public substringWithRange(II)Ljava/lang/String;
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    .line 431
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 432
    iget-object p1, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 433
    iget-object p1, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move p2, p1

    :cond_1
    :goto_0
    add-int v0, p1, p2

    .line 441
    iget-object v1, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 442
    iget-object p2, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, p1

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->string:Ljava/lang/StringBuilder;

    add-int/2addr p2, p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public substringWithRange(Lcom/metamoji/cm/Range;)Ljava/lang/String;
    .locals 1

    .line 462
    iget v0, p1, Lcom/metamoji/cm/Range;->location:I

    iget p1, p1, Lcom/metamoji/cm/Range;->length:I

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->substringWithRange(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
