.class public Lcom/metamoji/un/text/sprite/TextSprite;
.super Lcom/metamoji/df/sprite/Sprite;
.source "TextSprite.java"


# static fields
.field public static final CHARATTRLINE_WIDTH:F = 1.0f

.field private static final MMJ_STROKE_BASEFONTSIZE:F = 12.0f

.field private static final PARAGMARK_VOICETAG_ALPHA:I = 0xff

.field private static final PARAGMARK_VOICETAG_BLUE:I = 0x5a

.field private static final PARAGMARK_VOICETAG_GREEN:I = 0xe6

.field private static final PARAGMARK_VOICETAG_RED:I = 0x5a

.field public static final UNDERLINE_OFFSET:F = 1.0f


# instance fields
.field private _renderSpellErrorMark:Z

.field private handler:Landroid/os/Handler;

.field private isRenderCursor:Z

.field private isRenderMarkInViewMode:Z

.field private textModel:Lcom/metamoji/un/text/model/TextModel;

.field private verticalWriting:Z


# direct methods
.method static bridge synthetic -$$Nest$fgettextModel(Lcom/metamoji/un/text/sprite/TextSprite;)Lcom/metamoji/un/text/model/TextModel;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/metamoji/un/text/sprite/TextSprite;->_renderSpellErrorMark:Z

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/metamoji/un/text/sprite/TextSprite;->handler:Landroid/os/Handler;

    return-void
.end method

.method private drawBackground(Lcom/metamoji/df/sprite/Context;Landroid/graphics/RectF;)V
    .locals 3

    .line 458
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    .line 459
    new-instance p2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/metamoji/un/text/sprite/TextSprite;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/text/sprite/TextSprite;->getHeight()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 461
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 462
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 464
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 465
    iget-object v1, p0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getUnitBackgroundColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 466
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 468
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 470
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawBonyariUnitBorder(Lcom/metamoji/df/sprite/Context;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 4

    .line 616
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 617
    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 618
    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 619
    iget v1, v0, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 620
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 622
    invoke-static {v0, p3}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 627
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p3

    if-eqz p3, :cond_1

    :goto_0
    return-void

    .line 632
    :cond_1
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    .line 634
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 635
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 636
    sget-object p3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 638
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 639
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v0, 0xcc

    const/16 v1, 0x7f

    .line 640
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 641
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v3, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 643
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 644
    iget p2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, v2

    iput p2, v0, Landroid/graphics/RectF;->left:F

    .line 645
    iget p2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, v2

    iput p2, v0, Landroid/graphics/RectF;->top:F

    .line 646
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 648
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawCaret(Lcom/metamoji/df/sprite/Context;)V
    .locals 3

    .line 1032
    iget-object v0, p0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    .line 1033
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1034
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 1035
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v2, -0xffff01

    .line 1036
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1038
    iget-object v2, p0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v0

    .line 1039
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    .line 1043
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/sprite/TextSprite;->drawSelectedRange(Lcom/metamoji/df/sprite/Context;)V

    return-void
.end method

.method private drawCharAttrBackgroundColor(Lcom/metamoji/df/sprite/Context;Lcom/metamoji/un/text/model/linetable/LineInfo;Lcom/metamoji/un/text/model/linetable/LineInfo;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 906
    iget-object v3, v0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v3

    .line 907
    iget-object v4, v0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v4

    .line 909
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_9

    .line 912
    :cond_0
    iget-object v5, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    const/4 v7, 0x1

    if-eqz v2, :cond_3

    .line 916
    iget-object v8, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    iget v8, v8, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {v4, v8}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 918
    iget-object v8, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    iget v8, v8, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 919
    iget-object v2, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    iget v2, v2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    if-lez v8, :cond_2

    add-int/lit8 v8, v8, -0x1

    .line 924
    invoke-virtual {v4, v8}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v2

    .line 925
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v2

    .line 928
    :cond_2
    :goto_0
    new-instance v9, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v9, v8, v2}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    .line 929
    iput-boolean v7, v9, Lcom/metamoji/un/text/model/TextPosition;->lineEndPosition:Z

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-nez v9, :cond_4

    .line 933
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v2

    sub-int/2addr v2, v7

    .line 934
    invoke-virtual {v4, v2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v8

    .line 935
    new-instance v9, Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {v8}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v8

    invoke-direct {v9, v2, v8}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    .line 938
    :cond_4
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 939
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 941
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getLineRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 944
    iget v7, v5, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_2
    iget v11, v9, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-gt v7, v11, :cond_11

    .line 945
    invoke-virtual {v4, v7}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v11

    .line 947
    invoke-virtual {v11}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v12

    .line 948
    iget v13, v5, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ne v7, v13, :cond_5

    .line 949
    iget v13, v5, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    .line 951
    :goto_3
    iget v14, v9, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ne v7, v14, :cond_6

    .line 952
    iget v12, v9, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    :cond_6
    :goto_4
    if-ge v13, v12, :cond_10

    .line 957
    invoke-virtual {v11}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v14

    if-nez v14, :cond_7

    .line 958
    invoke-virtual {v11, v13}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringAttributesAtIndex(I)Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v14

    goto :goto_5

    .line 961
    :cond_7
    invoke-virtual {v11, v13}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokeAttributesAtIndex(I)Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    move-result-object v14

    :goto_5
    move-object/from16 v16, v14

    .line 963
    invoke-virtual/range {v16 .. v16}, Lcom/metamoji/un/text/model/attr/Attributes;->isUseBackgroundColor()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual/range {v16 .. v16}, Lcom/metamoji/un/text/model/attr/Attributes;->getBackgroundColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v14

    goto :goto_6

    :cond_8
    const/4 v14, 0x0

    :goto_6
    if-eqz v10, :cond_e

    if-nez v8, :cond_9

    if-nez v14, :cond_b

    :cond_9
    if-eqz v8, :cond_a

    if-eqz v14, :cond_b

    :cond_a
    if-eqz v8, :cond_e

    if-eqz v14, :cond_e

    .line 967
    invoke-virtual {v8, v14}, Lcom/metamoji/un/text/model/ColorComponent;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    .line 968
    :cond_b
    new-instance v6, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v6, v7, v13}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    move-object/from16 v18, v4

    iget-object v4, v0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v3, v6, v4}, Lcom/metamoji/un/text/model/linetable/LineTable;->getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v8, :cond_d

    .line 970
    invoke-direct {v0, v10}, Lcom/metamoji/un/text/sprite/TextSprite;->getColorComponentForBackground(Lcom/metamoji/un/text/model/attr/Attributes;)Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 972
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result v6

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 974
    invoke-virtual {v0}, Lcom/metamoji/un/text/sprite/TextSprite;->isVerticalWriting()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 975
    invoke-interface/range {p1 .. p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v10

    iget-object v6, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    move v8, v12

    iget v12, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move/from16 p3, v2

    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->width:F

    add-float v2, p3, v2

    move-object/from16 v19, v14

    iget v14, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v20, v11

    move v11, v6

    move-object/from16 v6, v20

    move/from16 v21, v8

    move-object/from16 v20, v19

    move/from16 v19, v13

    move v13, v2

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_c
    move-object v6, v11

    move/from16 v21, v12

    move/from16 v19, v13

    move-object/from16 v20, v14

    .line 978
    invoke-interface/range {p1 .. p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v10

    iget v11, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v12, v2, Landroid/graphics/PointF;->y:F

    iget v13, v4, Landroid/graphics/RectF;->left:F

    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v8, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v8, v8, Lcom/metamoji/cm/SizeF;->height:F

    add-float v14, v2, v8

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_d
    move-object v6, v11

    move/from16 v21, v12

    move/from16 v19, v13

    move-object/from16 v20, v14

    :goto_7
    move-object v2, v4

    goto :goto_8

    :cond_e
    move-object/from16 v18, v4

    move-object v6, v11

    move/from16 v21, v12

    move/from16 v19, v13

    move-object/from16 v20, v14

    if-nez v10, :cond_f

    :goto_8
    move-object/from16 v10, v16

    move-object/from16 v8, v20

    :cond_f
    add-int/lit8 v13, v19, 0x1

    move-object v11, v6

    move-object/from16 v4, v18

    move/from16 v12, v21

    goto/16 :goto_4

    :cond_10
    move-object/from16 v18, v4

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_11
    if-eqz v8, :cond_13

    .line 997
    iget-object v4, v0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v3, v9, v4}, Lcom/metamoji/un/text/model/linetable/LineTable;->getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;

    move-result-object v3

    .line 999
    invoke-direct {v0, v10}, Lcom/metamoji/un/text/sprite/TextSprite;->getColorComponentForBackground(Lcom/metamoji/un/text/model/attr/Attributes;)Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 1001
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result v4

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1003
    invoke-virtual {v0}, Lcom/metamoji/un/text/sprite/TextSprite;->isVerticalWriting()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1004
    invoke-interface/range {p1 .. p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v10

    iget-object v4, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v11, v4, Landroid/graphics/PointF;->x:F

    iget v12, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v1, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    add-float v13, v2, v1

    iget v14, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    .line 1007
    :cond_12
    invoke-interface/range {p1 .. p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v10

    iget v11, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v12, v2, Landroid/graphics/PointF;->y:F

    iget v13, v3, Landroid/graphics/RectF;->left:F

    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v1, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    add-float v14, v2, v1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_13
    :goto_9
    return-void
.end method

.method private drawForeground(Lcom/metamoji/df/sprite/Context;Landroid/graphics/RectF;)V
    .locals 4

    .line 481
    iget-object p2, p0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getUnitFilterColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 486
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    .line 487
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/metamoji/un/text/sprite/TextSprite;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/metamoji/un/text/sprite/TextSprite;->getHeight()F

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 489
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 490
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 492
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 493
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 494
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 496
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 498
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawMMJHandwriteStroke(Lcom/metamoji/df/sprite/Context;Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;Lcom/metamoji/un/text/model/attr/StrokeAttributes;Landroid/graphics/RectF;FFLandroid/graphics/RectF;)V
    .locals 1

    .line 1442
    invoke-interface {p2}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getStyle()Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object p7

    const/high16 v0, 0x42c80000    # 100.0f

    .line 1443
    invoke-direct {p0, p2, p3, p5, v0}, Lcom/metamoji/un/text/sprite/TextSprite;->getRenderingLineWidth(Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;Lcom/metamoji/un/text/model/attr/StrokeAttributes;FF)F

    move-result p3

    .line 1442
    invoke-direct {p0, p2, p7, p3, p4}, Lcom/metamoji/un/text/sprite/TextSprite;->drawerForAllWithPoints(Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;FLandroid/graphics/RectF;)Lcom/metamoji/mazecclient/strokedraw/IStrokeDraw;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 1446
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    cmpl-float p4, p6, v0

    if-eqz p4, :cond_0

    div-float/2addr p6, v0

    .line 1450
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p4

    invoke-virtual {p4, p6, p6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1452
    :cond_0
    invoke-interface {p2}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getStyle()Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object p4

    invoke-interface {p4}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object p4

    sget-object p5, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne p4, p5, :cond_1

    .line 1453
    check-cast p3, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;

    invoke-virtual {p3, p1, p2}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->draw(Lcom/metamoji/df/sprite/Context;Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;)V

    goto :goto_0

    .line 1455
    :cond_1
    invoke-interface {p3, p1}, Lcom/metamoji/mazecclient/strokedraw/IStrokeDraw;->draw(Lcom/metamoji/df/sprite/Context;)V

    .line 1456
    :goto_0
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method private drawMMJHandwriteStrokes(Lcom/metamoji/df/sprite/Context;Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;Lcom/metamoji/un/text/model/attr/StrokeAttributes;Landroid/graphics/RectF;FLandroid/graphics/PointF;Landroid/graphics/RectF;)V
    .locals 10

    move-object/from16 v0, p6

    .line 1403
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 1404
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 1407
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1408
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1410
    invoke-virtual {p0}, Lcom/metamoji/un/text/sprite/TextSprite;->isVerticalWriting()Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x42b40000    # 90.0f

    .line 1412
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    :cond_0
    neg-float v2, v2

    neg-float v0, v0

    move-object/from16 v3, p7

    .line 1415
    invoke-static {v3, v2, v0}, Lcom/metamoji/cm/RectUtils;->offset(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    move-result-object v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    .line 1417
    invoke-direct/range {v3 .. v9}, Lcom/metamoji/un/text/sprite/TextSprite;->drawMMJHandwriteStrokes(Lcom/metamoji/df/sprite/Context;Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;Lcom/metamoji/un/text/model/attr/StrokeAttributes;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 1419
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawMMJHandwriteStrokes(Lcom/metamoji/df/sprite/Context;Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;Lcom/metamoji/un/text/model/attr/StrokeAttributes;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V
    .locals 10

    const/4 v0, 0x0

    .line 1428
    :goto_0
    invoke-interface {p2}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getCountOfStroke()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1429
    invoke-interface {p2, v0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getStrokeAt(I)Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;

    move-result-object v4

    .line 1430
    invoke-interface {p2}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getBaseLine()F

    move-result v1

    invoke-interface {p2}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getTopLine()F

    move-result v2

    sub-float v7, v1, v2

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    move-object/from16 v9, p6

    .line 1431
    invoke-direct/range {v2 .. v9}, Lcom/metamoji/un/text/sprite/TextSprite;->drawMMJHandwriteStroke(Lcom/metamoji/df/sprite/Context;Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;Lcom/metamoji/un/text/model/attr/StrokeAttributes;Landroid/graphics/RectF;FFLandroid/graphics/RectF;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawNormalUnitBorder(Lcom/metamoji/df/sprite/Context;Landroid/graphics/RectF;III[FLandroid/graphics/RectF;)V
    .locals 2

    .line 570
    invoke-static {p2, p7}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 575
    invoke-static {p2, v0, v0}, Lcom/metamoji/cm/RectUtils;->inset(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1, p7}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p7

    if-eqz p7, :cond_1

    :goto_0
    return-void

    .line 580
    :cond_1
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    .line 582
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 583
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 585
    new-instance p7, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p7, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 586
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p7, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 587
    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz p6, :cond_2

    .line 591
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x0

    invoke-direct {v0, p6, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_2
    const/16 p6, 0xff

    .line 593
    invoke-static {p6, p3, p4, p5}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    invoke-virtual {p7, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p3, 0x3f000000    # 0.5f

    .line 596
    invoke-static {p2, p3, p3}, Lcom/metamoji/cm/RectUtils;->inset(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    move-result-object p2

    .line 597
    invoke-virtual {p1, p2, p7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 599
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawRangeBack(Lcom/metamoji/df/sprite/Context;Lcom/metamoji/un/text/model/TextRange;ILjava/lang/Integer;Z)V
    .locals 9

    .line 1064
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    .line 1065
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1066
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1067
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1069
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 1070
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1071
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p4, :cond_0

    .line 1075
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 1076
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1077
    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1078
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 1081
    :goto_0
    iget-object p4, p0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {p4}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object p4

    .line 1082
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getNormalizedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p2

    .line 1083
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    .line 1084
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    .line 1086
    invoke-virtual {p4, v3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v4

    .line 1087
    invoke-virtual {p4, p2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 1091
    invoke-virtual {p4, v4}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoGetterAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p5

    .line 1092
    iget-object v2, p0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {p4, v3, v2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;

    move-result-object v2

    .line 1093
    iget-object v3, p0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {p4, p2, v3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;

    move-result-object p2

    .line 1096
    invoke-virtual {p0}, Lcom/metamoji/un/text/sprite/TextSprite;->isVerticalWriting()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1097
    iget-object p4, p5, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget p4, p4, Landroid/graphics/PointF;->x:F

    iput p4, v2, Landroid/graphics/RectF;->left:F

    .line 1098
    iget-object p4, p5, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget p4, p4, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v2, p4}, Lcom/metamoji/cm/RectUtils;->setWidth(Landroid/graphics/RectF;F)V

    .line 1099
    iget p2, p2, Landroid/graphics/RectF;->top:F

    iput p2, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 1102
    :cond_1
    iget-object p4, p5, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget p4, p4, Landroid/graphics/PointF;->y:F

    iput p4, v2, Landroid/graphics/RectF;->top:F

    .line 1103
    iget-object p4, p5, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget p4, p4, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v2, p4}, Lcom/metamoji/cm/RectUtils;->setHeight(Landroid/graphics/RectF;F)V

    .line 1104
    iget p2, p2, Landroid/graphics/RectF;->left:F

    iput p2, v2, Landroid/graphics/RectF;->right:F

    .line 1107
    :goto_1
    invoke-static {v0, v2}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 1108
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eqz p3, :cond_d

    .line 1116
    invoke-virtual {p1, v2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 1123
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/un/text/sprite/TextSprite;->renderingRect()Landroid/graphics/RectF;

    move-result-object v6

    .line 1126
    invoke-virtual {p4, v4}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoGetterAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v7

    .line 1127
    iget-object v8, p0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {p4, v3, v8}, Lcom/metamoji/un/text/model/linetable/LineTable;->getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;

    move-result-object v3

    .line 1128
    invoke-virtual {p0}, Lcom/metamoji/un/text/sprite/TextSprite;->isVerticalWriting()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1129
    iget-object v8, v7, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iput v8, v3, Landroid/graphics/RectF;->left:F

    .line 1130
    iget-object v8, v7, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v8, v8, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v3, v8}, Lcom/metamoji/cm/RectUtils;->setWidth(Landroid/graphics/RectF;F)V

    if-eqz p5, :cond_3

    .line 1132
    iget-object v8, v7, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v8, v8, Lcom/metamoji/cm/SizeF;->height:F

    iget-object v7, v7, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v7

    iput v8, v3, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 1135
    :cond_3
    iget v7, v6, Landroid/graphics/RectF;->bottom:F

    iput v7, v3, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 1139
    :cond_4
    iget-object v8, v7, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iput v8, v3, Landroid/graphics/RectF;->top:F

    .line 1140
    iget-object v8, v7, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v8, v8, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v3, v8}, Lcom/metamoji/cm/RectUtils;->setHeight(Landroid/graphics/RectF;F)V

    if-eqz p5, :cond_5

    .line 1142
    iget-object v8, v7, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v8, v8, Lcom/metamoji/cm/SizeF;->width:F

    iget-object v7, v7, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v7

    iput v8, v3, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 1145
    :cond_5
    iget v7, v6, Landroid/graphics/RectF;->right:F

    iput v7, v3, Landroid/graphics/RectF;->right:F

    .line 1148
    :goto_2
    invoke-static {v0, v3}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1149
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eqz p3, :cond_6

    .line 1157
    invoke-virtual {p1, v3, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_6
    add-int/2addr v4, v2

    if-ge v4, v5, :cond_b

    .line 1165
    invoke-virtual {p0}, Lcom/metamoji/un/text/sprite/TextSprite;->isVerticalWriting()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1166
    iget v2, v6, Landroid/graphics/RectF;->top:F

    iput v2, v3, Landroid/graphics/RectF;->top:F

    .line 1167
    iget v2, v6, Landroid/graphics/RectF;->bottom:F

    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    .line 1170
    :cond_7
    iget v2, v6, Landroid/graphics/RectF;->left:F

    iput v2, v3, Landroid/graphics/RectF;->left:F

    .line 1171
    iget v2, v6, Landroid/graphics/RectF;->right:F

    iput v2, v3, Landroid/graphics/RectF;->right:F

    :goto_3
    if-ge v4, v5, :cond_b

    .line 1174
    invoke-virtual {p4, v4}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoGetterAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v2

    if-eqz p5, :cond_8

    .line 1176
    iget-object v7, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget-object v2, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-static {v3, v7, v2}, Lcom/metamoji/cm/RectUtils;->setOriginSize(Landroid/graphics/RectF;Landroid/graphics/PointF;Lcom/metamoji/cm/SizeF;)V

    goto :goto_4

    .line 1179
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/un/text/sprite/TextSprite;->isVerticalWriting()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1180
    iget-object v7, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iput v7, v3, Landroid/graphics/RectF;->left:F

    .line 1181
    iget-object v2, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v3, v2}, Lcom/metamoji/cm/RectUtils;->setWidth(Landroid/graphics/RectF;F)V

    goto :goto_4

    .line 1184
    :cond_9
    iget-object v7, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iput v7, v3, Landroid/graphics/RectF;->top:F

    .line 1185
    iget-object v2, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v3, v2}, Lcom/metamoji/cm/RectUtils;->setHeight(Landroid/graphics/RectF;F)V

    .line 1189
    :goto_4
    invoke-static {v0, v3}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1190
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eqz p3, :cond_a

    .line 1198
    invoke-virtual {p1, v3, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1204
    :cond_b
    invoke-virtual {p4, v5}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoGetterAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p5

    .line 1206
    iget-object v2, p0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {p4, p2, v2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;

    move-result-object p2

    .line 1207
    invoke-virtual {p0}, Lcom/metamoji/un/text/sprite/TextSprite;->isVerticalWriting()Z

    move-result p4

    if-eqz p4, :cond_c

    .line 1208
    iget p4, p2, Landroid/graphics/RectF;->top:F

    iput p4, p2, Landroid/graphics/RectF;->bottom:F

    .line 1209
    iget p4, v6, Landroid/graphics/RectF;->top:F

    iput p4, p2, Landroid/graphics/RectF;->top:F

    .line 1210
    iget-object p4, p5, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget p4, p4, Landroid/graphics/PointF;->x:F

    iput p4, p2, Landroid/graphics/RectF;->left:F

    .line 1211
    iget-object p4, p5, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget p4, p4, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {p2, p4}, Lcom/metamoji/cm/RectUtils;->setWidth(Landroid/graphics/RectF;F)V

    goto :goto_5

    .line 1214
    :cond_c
    iget p4, p2, Landroid/graphics/RectF;->left:F

    iput p4, p2, Landroid/graphics/RectF;->right:F

    .line 1215
    iget p4, v6, Landroid/graphics/RectF;->left:F

    iput p4, p2, Landroid/graphics/RectF;->left:F

    .line 1216
    iget-object p4, p5, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget p4, p4, Landroid/graphics/PointF;->y:F

    iput p4, p2, Landroid/graphics/RectF;->top:F

    .line 1217
    iget-object p4, p5, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget p4, p4, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {p2, p4}, Lcom/metamoji/cm/RectUtils;->setHeight(Landroid/graphics/RectF;F)V

    .line 1219
    :goto_5
    invoke-static {v0, p2}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p4

    if-eqz p4, :cond_d

    .line 1220
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eqz p3, :cond_d

    .line 1228
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1233
    :cond_d
    :goto_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawRuledLine(Lcom/metamoji/df/sprite/Context;Landroid/graphics/RectF;)V
    .locals 11

    .line 657
    iget-object v0, p0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getRuledLineStyle()Lcom/metamoji/un/text/model/RuledLineStyle;

    move-result-object v0

    .line 658
    sget-object v1, Lcom/metamoji/un/text/model/RuledLineStyle;->None:Lcom/metamoji/un/text/model/RuledLineStyle;

    if-ne v1, v0, :cond_0

    goto/16 :goto_0

    .line 661
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getDefaultFontHeight()F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getLineSpacing()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    mul-float v8, v1, v2

    const/4 v1, 0x0

    cmpl-float v1, v8, v1

    if-lez v1, :cond_1

    .line 663
    sget-object v1, Lcom/metamoji/un/text/sprite/TextSprite$2;->$SwitchMap$com$metamoji$un$text$model$RuledLineStyle:[I

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/RuledLineStyle;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/16 v6, 0xaa

    const/16 v7, 0xaa

    const/16 v5, 0xaa

    move-object v3, p0

    move-object v4, p1

    move-object v9, p2

    .line 701
    invoke-direct/range {v3 .. v9}, Lcom/metamoji/un/text/sprite/TextSprite;->drawRuledLineSolid(Lcom/metamoji/df/sprite/Context;IIIFLandroid/graphics/RectF;)V

    return-void

    :pswitch_1
    move-object v3, p0

    move-object v4, p1

    move-object v9, p2

    .line 698
    invoke-direct {p0, v4, v8, v9}, Lcom/metamoji/un/text/sprite/TextSprite;->drawRuledLineStyledLine20(Lcom/metamoji/df/sprite/Context;FLandroid/graphics/RectF;)V

    return-void

    :pswitch_2
    move-object v3, p0

    move-object v4, p1

    move-object v10, p2

    move v9, v8

    .line 693
    new-array v8, v1, [F

    fill-array-data v8, :array_0

    const/16 v6, 0xdd

    const/16 v7, 0xdd

    const/16 v5, 0xdd

    .line 694
    invoke-direct/range {v3 .. v10}, Lcom/metamoji/un/text/sprite/TextSprite;->drawRuledLineDashed(Lcom/metamoji/df/sprite/Context;III[FFLandroid/graphics/RectF;)V

    return-void

    :pswitch_3
    move-object v4, p1

    move-object v9, p2

    .line 687
    new-array p1, v1, [F

    fill-array-data p1, :array_1

    const/16 v6, 0xdd

    const/16 v7, 0xdd

    const/16 v5, 0xdd

    move-object v3, p0

    move-object v10, v9

    move v9, v8

    move-object v8, p1

    .line 688
    invoke-direct/range {v3 .. v10}, Lcom/metamoji/un/text/sprite/TextSprite;->drawRuledLineDashed(Lcom/metamoji/df/sprite/Context;III[FFLandroid/graphics/RectF;)V

    return-void

    :pswitch_4
    move-object v4, p1

    move-object v9, p2

    .line 681
    new-array p1, v1, [F

    fill-array-data p1, :array_2

    const/16 v6, 0xdd

    const/16 v7, 0xdd

    const/16 v5, 0xdd

    move-object v3, p0

    move-object v10, v9

    move v9, v8

    move-object v8, p1

    .line 682
    invoke-direct/range {v3 .. v10}, Lcom/metamoji/un/text/sprite/TextSprite;->drawRuledLineDashed(Lcom/metamoji/df/sprite/Context;III[FFLandroid/graphics/RectF;)V

    return-void

    :pswitch_5
    move-object v4, p1

    move-object v9, p2

    const/16 v6, 0xdd

    const/16 v7, 0xdd

    const/16 v5, 0xdd

    move-object v3, p0

    .line 677
    invoke-direct/range {v3 .. v9}, Lcom/metamoji/un/text/sprite/TextSprite;->drawRuledLineSolid(Lcom/metamoji/df/sprite/Context;IIIFLandroid/graphics/RectF;)V

    return-void

    :pswitch_6
    move-object v4, p1

    move-object v9, p2

    const/16 v6, 0xcc

    const/16 v7, 0xaa

    const/16 v5, 0xff

    move-object v3, p0

    .line 674
    invoke-direct/range {v3 .. v9}, Lcom/metamoji/un/text/sprite/TextSprite;->drawRuledLineSolid(Lcom/metamoji/df/sprite/Context;IIIFLandroid/graphics/RectF;)V

    return-void

    :pswitch_7
    move-object v4, p1

    move-object v9, p2

    const/16 v6, 0xaa

    const/16 v7, 0xcc

    const/16 v5, 0xff

    move-object v3, p0

    .line 671
    invoke-direct/range {v3 .. v9}, Lcom/metamoji/un/text/sprite/TextSprite;->drawRuledLineSolid(Lcom/metamoji/df/sprite/Context;IIIFLandroid/graphics/RectF;)V

    return-void

    :pswitch_8
    move-object v4, p1

    move-object v9, p2

    const/16 v6, 0xee

    const/16 v7, 0xbb

    const/16 v5, 0x99

    move-object v3, p0

    .line 668
    invoke-direct/range {v3 .. v9}, Lcom/metamoji/un/text/sprite/TextSprite;->drawRuledLineSolid(Lcom/metamoji/df/sprite/Context;IIIFLandroid/graphics/RectF;)V

    return-void

    :pswitch_9
    move-object v4, p1

    move-object v9, p2

    const/16 v6, 0xcc

    const/16 v7, 0xff

    const/16 v5, 0xaa

    move-object v3, p0

    .line 665
    invoke-direct/range {v3 .. v9}, Lcom/metamoji/un/text/sprite/TextSprite;->drawRuledLineSolid(Lcom/metamoji/df/sprite/Context;IIIFLandroid/graphics/RectF;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x41800000    # 16.0f
        0x40800000    # 4.0f
    .end array-data

    :array_1
    .array-data 4
        0x41000000    # 8.0f
        0x41000000    # 8.0f
    .end array-data

    :array_2
    .array-data 4
        0x40400000    # 3.0f
        0x40400000    # 3.0f
    .end array-data
.end method

.method private drawRuledLineDashed(Lcom/metamoji/df/sprite/Context;III[FFLandroid/graphics/RectF;)V
    .locals 7

    .line 746
    new-instance v5, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 747
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 748
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v6, 0x0

    if-eqz p5, :cond_0

    .line 752
    new-instance v0, Landroid/graphics/DashPathEffect;

    invoke-direct {v0, p5, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_0
    const/16 p5, 0xff

    .line 754
    invoke-static {p5, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 756
    invoke-direct {p0}, Lcom/metamoji/un/text/sprite/TextSprite;->renderingRect()Landroid/graphics/RectF;

    move-result-object p2

    .line 759
    iget-object p3, p0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {p3}, Lcom/metamoji/un/text/model/TextModel;->getDefaultFontHeight()F

    move-result p3

    .line 760
    invoke-virtual {p0}, Lcom/metamoji/un/text/sprite/TextSprite;->isVerticalWriting()Z

    move-result p4

    const p5, 0x3f6147ae    # 0.88f

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p4, :cond_2

    .line 763
    iget p4, p2, Landroid/graphics/RectF;->right:F

    sub-float v1, p6, p3

    div-float/2addr v1, v0

    sub-float/2addr p4, v1

    mul-float/2addr p3, p5

    sub-float/2addr p4, p3

    .line 769
    :goto_0
    iget p3, p2, Landroid/graphics/RectF;->left:F

    cmpl-float p3, p4, p3

    if-ltz p3, :cond_4

    .line 772
    iget p3, p7, Landroid/graphics/RectF;->right:F

    sub-float p5, p4, v6

    cmpl-float p3, p3, p5

    if-ltz p3, :cond_1

    iget p3, p7, Landroid/graphics/RectF;->left:F

    cmpl-float p3, p5, p3

    if-ltz p3, :cond_1

    .line 775
    iget p3, p7, Landroid/graphics/RectF;->top:F

    iget p5, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float p3, p3, p5

    if-gtz p3, :cond_1

    iget p3, p2, Landroid/graphics/RectF;->top:F

    iget p5, p7, Landroid/graphics/RectF;->bottom:F

    cmpg-float p3, p3, p5

    if-gtz p3, :cond_1

    add-float v1, p4, v6

    .line 778
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    sub-float/2addr p4, p6

    goto :goto_0

    .line 785
    :cond_2
    iget p4, p2, Landroid/graphics/RectF;->top:F

    sub-float v1, p6, p3

    div-float/2addr v1, v0

    add-float/2addr p4, v1

    mul-float/2addr p3, p5

    add-float/2addr p4, p3

    .line 792
    :goto_1
    iget p3, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float p3, p4, p3

    if-gtz p3, :cond_4

    .line 795
    iget p3, p7, Landroid/graphics/RectF;->top:F

    add-float v2, p4, v6

    cmpg-float p3, p3, v2

    if-gtz p3, :cond_3

    iget p3, p7, Landroid/graphics/RectF;->bottom:F

    cmpg-float p3, v2, p3

    if-gtz p3, :cond_3

    .line 798
    iget p3, p7, Landroid/graphics/RectF;->left:F

    iget p5, p2, Landroid/graphics/RectF;->right:F

    cmpg-float p3, p3, p5

    if-gtz p3, :cond_3

    iget p3, p2, Landroid/graphics/RectF;->left:F

    iget p5, p7, Landroid/graphics/RectF;->right:F

    cmpg-float p3, p3, p5

    if-gtz p3, :cond_3

    .line 801
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    add-float/2addr p4, p6

    goto :goto_1

    :cond_4
    return-void
.end method

.method private drawRuledLineSolid(Lcom/metamoji/df/sprite/Context;IIIFLandroid/graphics/RectF;)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move-object v7, p6

    .line 723
    invoke-direct/range {v0 .. v7}, Lcom/metamoji/un/text/sprite/TextSprite;->drawRuledLineDashed(Lcom/metamoji/df/sprite/Context;III[FFLandroid/graphics/RectF;)V

    return-void
.end method

.method private drawRuledLineStyledLine20(Lcom/metamoji/df/sprite/Context;FLandroid/graphics/RectF;)V
    .locals 11

    .line 819
    new-instance v5, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 820
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 821
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v0, 0xff

    const/16 v1, 0xdd

    .line 824
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 826
    invoke-direct {p0}, Lcom/metamoji/un/text/sprite/TextSprite;->renderingRect()Landroid/graphics/RectF;

    move-result-object v7

    .line 829
    iget-object v0, p0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultFontHeight()F

    move-result v0

    .line 830
    invoke-virtual {p0}, Lcom/metamoji/un/text/sprite/TextSprite;->isVerticalWriting()Z

    move-result v1

    const v2, 0x3f6147ae    # 0.88f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x0

    if-eqz v1, :cond_1

    .line 833
    iget v1, v7, Landroid/graphics/RectF;->right:F

    sub-float v3, p2, v0

    div-float/2addr v3, v8

    sub-float/2addr v1, v3

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    move v10, v1

    .line 839
    :goto_0
    iget v0, v7, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v10, v0

    if-ltz v0, :cond_3

    .line 842
    iget v0, p3, Landroid/graphics/RectF;->right:F

    sub-float v1, v10, v9

    move v2, v1

    add-float v1, v2, v6

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sub-float v0, v2, v6

    iget v2, p3, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 843
    iget v0, p3, Landroid/graphics/RectF;->top:F

    iget v2, v7, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, v7, Landroid/graphics/RectF;->top:F

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 845
    iget v2, v7, Landroid/graphics/RectF;->top:F

    .line 846
    iget v4, v7, Landroid/graphics/RectF;->bottom:F

    .line 849
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float/2addr v1, v8

    .line 851
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    sub-float/2addr v10, p2

    goto :goto_0

    .line 859
    :cond_1
    iget v1, v7, Landroid/graphics/RectF;->top:F

    sub-float v3, p2, v0

    div-float/2addr v3, v8

    add-float/2addr v1, v3

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    move v10, v1

    .line 866
    :goto_1
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v10, v0

    if-gtz v0, :cond_3

    .line 869
    iget v0, p3, Landroid/graphics/RectF;->top:F

    add-float v1, v10, v9

    sub-float v2, v1, v6

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    add-float/2addr v1, v6

    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_2

    .line 870
    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, v7, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 872
    iget v1, v7, Landroid/graphics/RectF;->left:F

    .line 873
    iget v3, v7, Landroid/graphics/RectF;->right:F

    .line 876
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v2, v8

    .line 878
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    add-float/2addr v10, p2

    goto :goto_1

    :cond_3
    return-void
.end method

.method private drawSearchResults(Lcom/metamoji/df/sprite/Context;)V
    .locals 8

    .line 1242
    iget-object v0, p0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSearchResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/metamoji/un/text/model/TextRange;

    const/16 v1, 0x33

    const/16 v2, 0x66

    const/16 v3, 0xe5

    .line 1244
    invoke-static {v1, v2, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/16 v1, 0xff

    .line 1245
    invoke-static {v1, v2, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    .line 1243
    invoke-direct/range {v2 .. v7}, Lcom/metamoji/un/text/sprite/TextSprite;->drawRangeBack(Lcom/metamoji/df/sprite/Context;Lcom/metamoji/un/text/model/TextRange;ILjava/lang/Integer;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawSelectedRange(Lcom/metamoji/df/sprite/Context;)V
    .locals 7

    .line 1054
    iget-object v0, p0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v3

    const/4 v0, 0x0

    const/16 v1, 0xff

    const/16 v2, 0x28

    invoke-static {v2, v0, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/un/text/sprite/TextSprite;->drawRangeBack(Lcom/metamoji/df/sprite/Context;Lcom/metamoji/un/text/model/TextRange;ILjava/lang/Integer;Z)V

    return-void
.end method

.method private drawStrokes(Lcom/metamoji/df/sprite/Context;Ljava/util/List;Ljava/util/List;Landroid/graphics/PointF;Lcom/metamoji/un/text/model/linetable/LineInfo;Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/sprite/Context;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StrokeAttributes;",
            ">;",
            "Landroid/graphics/PointF;",
            "Lcom/metamoji/un/text/model/linetable/LineInfo;",
            "Landroid/graphics/RectF;",
            ")",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1261
    new-instance v1, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v1, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 1262
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v12, 0x0

    .line 1264
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_3

    move-object/from16 v13, p2

    .line 1265
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    move-object/from16 v14, p3

    .line 1266
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    .line 1267
    iget-object v1, v0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/text/model/TextModel;->getRenderingStrokesZoomRatioPercent(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;Lcom/metamoji/un/text/model/attr/StrokeAttributes;)F

    move-result v5

    .line 1268
    invoke-interface {v2}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getBounds()Landroid/graphics/RectF;

    move-result-object v4

    .line 1269
    iget-object v1, v0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v1, v4, v5}, Lcom/metamoji/un/text/model/TextModel;->getZoomedBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v15

    .line 1270
    iget v1, v8, Landroid/graphics/PointF;->x:F

    iget v6, v8, Landroid/graphics/PointF;->y:F

    invoke-static {v15, v1, v6}, Lcom/metamoji/cm/RectUtils;->offset(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    move-result-object v1

    .line 1272
    new-instance v6, Landroid/graphics/PointF;

    iget v7, v8, Landroid/graphics/PointF;->x:F

    move/from16 v16, v10

    iget v10, v8, Landroid/graphics/PointF;->y:F

    invoke-direct {v6, v7, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1273
    invoke-virtual {v0}, Lcom/metamoji/un/text/sprite/TextSprite;->isVerticalWriting()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1275
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v10, 0x42b40000    # 90.0f

    .line 1276
    invoke-virtual {v7, v10}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1279
    iget v10, v15, Landroid/graphics/RectF;->left:F

    const/16 v17, 0x0

    .line 1280
    iget v11, v15, Landroid/graphics/RectF;->bottom:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v10, v0, v17

    aput v11, v0, v16

    .line 1281
    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1282
    aget v7, v0, v17

    aget v0, v0, v16

    invoke-static {v1, v7, v0}, Lcom/metamoji/cm/RectUtils;->setOrigin(Landroid/graphics/RectF;FF)V

    .line 1283
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-static {v1, v0, v7}, Lcom/metamoji/cm/RectUtils;->setSize(Landroid/graphics/RectF;FF)V

    .line 1284
    iget v0, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, v9, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v7, v7, Lcom/metamoji/cm/SizeF;->width:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v7, v10

    sub-float/2addr v0, v7

    iput v0, v6, Landroid/graphics/PointF;->x:F

    .line 1285
    iget v0, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, v9, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v7, v7, Lcom/metamoji/cm/SizeF;->width:F

    const v10, 0x3df5c28f    # 0.12f

    mul-float/2addr v7, v10

    add-float/2addr v0, v7

    iput v0, v6, Landroid/graphics/PointF;->x:F

    .line 1286
    iget v0, v6, Landroid/graphics/PointF;->x:F

    iget v7, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v7}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_1

    :cond_0
    const/16 v17, 0x0

    :goto_1
    move-object/from16 v7, p6

    .line 1298
    invoke-static {v1, v7}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1300
    invoke-direct/range {v0 .. v7}, Lcom/metamoji/un/text/sprite/TextSprite;->drawMMJHandwriteStrokes(Lcom/metamoji/df/sprite/Context;Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;Lcom/metamoji/un/text/model/attr/StrokeAttributes;Landroid/graphics/RectF;FLandroid/graphics/PointF;Landroid/graphics/RectF;)V

    move-object v4, v6

    move-object v6, v7

    move-object v5, v9

    .line 1301
    invoke-direct/range {v0 .. v6}, Lcom/metamoji/un/text/sprite/TextSprite;->drawStrokesLines(Lcom/metamoji/df/sprite/Context;Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;Lcom/metamoji/un/text/model/attr/StrokeAttributes;Landroid/graphics/PointF;Lcom/metamoji/un/text/model/linetable/LineInfo;Landroid/graphics/RectF;)V

    .line 1312
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/sprite/TextSprite;->isVerticalWriting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1313
    iget v0, v8, Landroid/graphics/PointF;->y:F

    iget v1, v15, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    iput v0, v8, Landroid/graphics/PointF;->y:F

    goto :goto_2

    .line 1315
    :cond_2
    iget v0, v8, Landroid/graphics/PointF;->x:F

    iget v1, v15, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    iput v0, v8, Landroid/graphics/PointF;->x:F

    :goto_2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v9, p5

    move/from16 v10, v16

    goto/16 :goto_0

    :cond_3
    return-object v8
.end method

.method private drawStrokesLines(Lcom/metamoji/df/sprite/Context;Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;Lcom/metamoji/un/text/model/attr/StrokeAttributes;Landroid/graphics/PointF;Lcom/metamoji/un/text/model/linetable/LineInfo;Landroid/graphics/RectF;)V
    .locals 5

    .line 1329
    invoke-virtual {p3}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;->isUnderline()Z

    move-result p6

    if-nez p6, :cond_0

    invoke-virtual {p3}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;->isStrikeout()Z

    move-result p6

    if-nez p6, :cond_0

    return-void

    .line 1333
    :cond_0
    iget-object p6, p0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {p6, p2, p3}, Lcom/metamoji/un/text/model/TextModel;->getRenderingStrokesBounds(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;Lcom/metamoji/un/text/model/attr/StrokeAttributes;)Landroid/graphics/RectF;

    move-result-object p6

    .line 1338
    invoke-interface {p2}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getCountOfStroke()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 1339
    invoke-interface {p2, v0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getStrokeAt(I)Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;

    move-result-object v0

    .line 1340
    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getStyle()Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineColor()I

    move-result v0

    goto :goto_0

    .line 1343
    :cond_1
    invoke-virtual {p3}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;->isUseColor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1344
    invoke-virtual {p3}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;->getColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result v0

    goto :goto_0

    :cond_2
    const/high16 v0, -0x1000000

    .line 1348
    :goto_0
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 1349
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1350
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1351
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1354
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1356
    invoke-virtual {p3}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;->isUnderline()Z

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v3, :cond_4

    .line 1358
    invoke-virtual {p0}, Lcom/metamoji/un/text/sprite/TextSprite;->isVerticalWriting()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1359
    iget-object v3, p5, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object p5, p5, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget p5, p5, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v3, p5

    sub-float/2addr v3, v2

    add-float/2addr v3, v4

    .line 1361
    iget p5, p4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, p5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1362
    iget p5, p4, Landroid/graphics/PointF;->y:F

    iget v2, p6, Landroid/graphics/RectF;->right:F

    add-float/2addr p5, v2

    invoke-virtual {v0, v3, p5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 1365
    :cond_3
    iget p5, p4, Landroid/graphics/PointF;->y:F

    add-float/2addr p5, v2

    add-float/2addr p5, v4

    .line 1367
    iget v2, p4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v2, p5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1368
    iget v2, p4, Landroid/graphics/PointF;->x:F

    iget v3, p6, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v2, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1371
    :cond_4
    :goto_1
    invoke-virtual {p3}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;->isStrikeout()Z

    move-result p5

    if-eqz p5, :cond_6

    .line 1372
    iget-object p5, p0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {p5, p2, p3}, Lcom/metamoji/un/text/model/TextModel;->getCutOffHeight(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;Lcom/metamoji/un/text/model/attr/StrokeAttributes;)F

    move-result p2

    .line 1373
    invoke-virtual {p0}, Lcom/metamoji/un/text/sprite/TextSprite;->isVerticalWriting()Z

    move-result p3

    const/high16 p5, 0x40000000    # 2.0f

    if-eqz p3, :cond_5

    .line 1374
    iget p3, p4, Landroid/graphics/PointF;->x:F

    div-float/2addr p2, p5

    add-float/2addr p3, p2

    add-float/2addr p3, v4

    .line 1377
    iget p2, p4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p3, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1378
    iget p2, p4, Landroid/graphics/PointF;->y:F

    iget p4, p6, Landroid/graphics/RectF;->right:F

    add-float/2addr p2, p4

    invoke-virtual {v0, p3, p2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 1381
    :cond_5
    iget p3, p4, Landroid/graphics/PointF;->y:F

    div-float/2addr p2, p5

    sub-float/2addr p3, p2

    add-float/2addr p3, v4

    .line 1384
    iget p2, p4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1385
    iget p2, p4, Landroid/graphics/PointF;->x:F

    iget p4, p6, Landroid/graphics/RectF;->right:F

    add-float/2addr p2, p4

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1390
    :cond_6
    :goto_2
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawUnitBorder(Lcom/metamoji/df/sprite/Context;Landroid/graphics/RectF;Lcom/metamoji/un/text/model/UnitBorderStyle;)V
    .locals 8

    .line 508
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/metamoji/un/text/sprite/TextSprite;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/text/sprite/TextSprite;->getHeight()F

    move-result v1

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 511
    sget-object v0, Lcom/metamoji/un/text/sprite/TextSprite$2;->$SwitchMap$com$metamoji$un$text$model$UnitBorderStyle:[I

    invoke-virtual {p3}, Lcom/metamoji/un/text/model/UnitBorderStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    goto/16 :goto_1

    .line 541
    :pswitch_0
    invoke-direct {p0, p1, v2, p2}, Lcom/metamoji/un/text/sprite/TextSprite;->drawBonyariUnitBorder(Lcom/metamoji/df/sprite/Context;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 535
    :pswitch_1
    new-array v6, v1, [F

    fill-array-data v6, :array_0

    const/16 v4, 0xcc

    const/16 v5, 0xcc

    const/16 v3, 0xcc

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    .line 536
    invoke-direct/range {v0 .. v7}, Lcom/metamoji/un/text/sprite/TextSprite;->drawNormalUnitBorder(Lcom/metamoji/df/sprite/Context;Landroid/graphics/RectF;III[FLandroid/graphics/RectF;)V

    goto/16 :goto_1

    :pswitch_2
    move-object v7, p2

    .line 529
    new-array v6, v1, [F

    fill-array-data v6, :array_1

    const/16 v4, 0xcc

    const/16 v5, 0xcc

    const/16 v3, 0xcc

    move-object v0, p0

    move-object v1, p1

    .line 530
    invoke-direct/range {v0 .. v7}, Lcom/metamoji/un/text/sprite/TextSprite;->drawNormalUnitBorder(Lcom/metamoji/df/sprite/Context;Landroid/graphics/RectF;III[FLandroid/graphics/RectF;)V

    goto :goto_1

    :pswitch_3
    move-object v1, p1

    move-object v7, p2

    const/16 v5, 0xcc

    const/4 v6, 0x0

    const/16 v3, 0xcc

    const/16 v4, 0xcc

    move-object v0, p0

    .line 525
    invoke-direct/range {v0 .. v7}, Lcom/metamoji/un/text/sprite/TextSprite;->drawNormalUnitBorder(Lcom/metamoji/df/sprite/Context;Landroid/graphics/RectF;III[FLandroid/graphics/RectF;)V

    goto :goto_1

    :pswitch_4
    move-object v1, p1

    move-object v7, p2

    const/16 v5, 0xaa

    const/4 v6, 0x0

    const/16 v3, 0xff

    const/16 v4, 0xcc

    move-object v0, p0

    .line 522
    invoke-direct/range {v0 .. v7}, Lcom/metamoji/un/text/sprite/TextSprite;->drawNormalUnitBorder(Lcom/metamoji/df/sprite/Context;Landroid/graphics/RectF;III[FLandroid/graphics/RectF;)V

    goto :goto_1

    :pswitch_5
    move-object v1, p1

    move-object v7, p2

    const/16 v5, 0xcc

    const/4 v6, 0x0

    const/16 v3, 0xff

    const/16 v4, 0xaa

    move-object v0, p0

    .line 519
    invoke-direct/range {v0 .. v7}, Lcom/metamoji/un/text/sprite/TextSprite;->drawNormalUnitBorder(Lcom/metamoji/df/sprite/Context;Landroid/graphics/RectF;III[FLandroid/graphics/RectF;)V

    goto :goto_1

    :pswitch_6
    move-object v1, p1

    move-object v7, p2

    const/16 v5, 0xbb

    const/4 v6, 0x0

    const/16 v3, 0x99

    const/16 v4, 0xee

    move-object v0, p0

    .line 516
    invoke-direct/range {v0 .. v7}, Lcom/metamoji/un/text/sprite/TextSprite;->drawNormalUnitBorder(Lcom/metamoji/df/sprite/Context;Landroid/graphics/RectF;III[FLandroid/graphics/RectF;)V

    goto :goto_1

    :pswitch_7
    move-object v1, p1

    move-object v7, p2

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/16 v3, 0xaa

    const/16 v4, 0xcc

    move-object v0, p0

    .line 513
    invoke-direct/range {v0 .. v7}, Lcom/metamoji/un/text/sprite/TextSprite;->drawNormalUnitBorder(Lcom/metamoji/df/sprite/Context;Landroid/graphics/RectF;III[FLandroid/graphics/RectF;)V

    .line 549
    :goto_1
    iget-boolean p1, p3, Lcom/metamoji/un/text/model/UnitBorderStyle;->_plusBonyari:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/metamoji/un/text/model/UnitBorderStyle;->StyleBonyari:Lcom/metamoji/un/text/model/UnitBorderStyle;

    if-eq p1, p3, :cond_0

    .line 550
    invoke-direct {p0, v1, v2, v7}, Lcom/metamoji/un/text/sprite/TextSprite;->drawBonyariUnitBorder(Lcom/metamoji/df/sprite/Context;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x40400000    # 3.0f
        0x40400000    # 3.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private drawerForAllWithPoints(Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;FLandroid/graphics/RectF;)Lcom/metamoji/mazecclient/strokedraw/IStrokeDraw;
    .locals 3

    if-nez p2, :cond_0

    .line 1490
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getStyle()Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object p2

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1493
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getSegmentAttr()Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1, p2, v0}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;->drawer(Ljava/util/List;Ljava/util/List;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/strokedraw/StrokeCIParams;)Lcom/metamoji/mazecclient/strokedraw/IStrokeDraw;

    move-result-object p1

    .line 1494
    invoke-interface {p1, p3}, Lcom/metamoji/mazecclient/strokedraw/IStrokeDraw;->setLineWidth(F)V

    .line 1496
    invoke-interface {p2}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 1498
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->GRADIATION:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    invoke-interface {p3}, Lcom/metamoji/mazecclient/stroke/IStrokeInk;->getType()Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1501
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p4, Landroid/graphics/RectF;->left:F

    iget v2, p4, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1502
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p4, Landroid/graphics/RectF;->right:F

    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v2, p4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1504
    invoke-interface {p2}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineColor()I

    move-result p2

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    .line 1507
    invoke-interface {p3}, Lcom/metamoji/mazecclient/stroke/IStrokeInk;->getGradationStartColor()I

    move-result p4

    invoke-static {p4, p2}, Lcom/metamoji/cm/ColorUtils;->colorWithAlpha(II)I

    move-result p4

    .line 1508
    invoke-interface {p3}, Lcom/metamoji/mazecclient/stroke/IStrokeInk;->getGradationEndColor()I

    move-result p3

    invoke-static {p3, p2}, Lcom/metamoji/cm/ColorUtils;->colorWithAlpha(II)I

    move-result p2

    .line 1510
    invoke-static {v0, v1, p4, p2}, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;->linearGradation(Landroid/graphics/PointF;Landroid/graphics/PointF;II)Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;

    move-result-object p2

    .line 1512
    invoke-interface {p1, p2}, Lcom/metamoji/mazecclient/strokedraw/IStrokeDraw;->setGradationParams(Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;)V

    :cond_1
    return-object p1

    :cond_2
    return-object v0
.end method

.method private getColorComponentForBackground(Lcom/metamoji/un/text/model/attr/Attributes;)Lcom/metamoji/un/text/model/ColorComponent;
    .locals 1

    if-eqz p1, :cond_0

    .line 1020
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/Attributes;->isUseBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/Attributes;->getBackgroundColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getRenderingLineWidth(Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;Lcom/metamoji/un/text/model/attr/StrokeAttributes;FF)F
    .locals 0

    .line 1471
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getStyle()Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineWidthRatio()F

    move-result p1

    mul-float/2addr p1, p3

    const/high16 p2, 0x41400000    # 12.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p4, p2

    mul-float/2addr p1, p4

    return p1
.end method

.method public static getSizeOfStringWithFont(Ljava/lang/String;Ljava/lang/String;F)Lcom/metamoji/cm/SizeF;
    .locals 1

    .line 1522
    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0xc1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    .line 1523
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1525
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    .line 1526
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    .line 1527
    new-instance p1, Lcom/metamoji/cm/SizeF;

    iget v0, p2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v0, p2

    invoke-direct {p1, p0, v0}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object p1
.end method

.method private renderingRect()Landroid/graphics/RectF;
    .locals 6

    .line 890
    iget-object v0, p0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getPaddingRect()Lcom/metamoji/cm/EdgeInsets;

    move-result-object v0

    .line 891
    iget-object v1, p0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v1

    .line 892
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result v1

    .line 893
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/metamoji/un/text/sprite/TextSprite;->getWidth()F

    move-result v3

    invoke-virtual {p0}, Lcom/metamoji/un/text/sprite/TextSprite;->getHeight()F

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 894
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v0, Lcom/metamoji/cm/EdgeInsets;->left:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 895
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v0, Lcom/metamoji/cm/EdgeInsets;->top:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 896
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v0, Lcom/metamoji/cm/EdgeInsets;->right:F

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 897
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Lcom/metamoji/cm/EdgeInsets;->bottom:F

    mul-float/2addr v0, v1

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    return-object v2
.end method


# virtual methods
.method public buildBounds(Landroid/graphics/RectF;)Z
    .locals 4

    .line 144
    invoke-virtual {p0}, Lcom/metamoji/un/text/sprite/TextSprite;->getWidth()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/metamoji/un/text/sprite/TextSprite;->getHeight()F

    move-result v3

    add-float/2addr v3, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v3, v1

    const/high16 v1, -0x41000000    # -0.5f

    .line 143
    invoke-virtual {p1, v1, v1, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 p1, 0x1

    return p1
.end method

.method f2i(F)I
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method i2f(I)F
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    return p1
.end method

.method public isRedererCursor()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/metamoji/un/text/sprite/TextSprite;->isRenderCursor:Z

    return v0
.end method

.method public isRenderSpellErrorMark()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/metamoji/un/text/sprite/TextSprite;->_renderSpellErrorMark:Z

    return v0
.end method

.method public isRendererMarkInViewMode()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/metamoji/un/text/sprite/TextSprite;->isRenderMarkInViewMode:Z

    return v0
.end method

.method public isVerticalWriting()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/metamoji/un/text/sprite/TextSprite;->verticalWriting:Z

    return v0
.end method

.method protected paintContent(Lcom/metamoji/df/sprite/Context;)V
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 164
    iget-object v0, v1, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v8

    if-nez v8, :cond_0

    return-void

    .line 174
    :cond_0
    iget-object v0, v1, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getUnitBorderStyleForRendering()Lcom/metamoji/un/text/model/UnitBorderStyle;

    move-result-object v0

    .line 176
    iget-object v3, v1, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v9

    .line 177
    invoke-interface {v8}, Lcom/metamoji/df/model/IModelManager;->lock()V

    .line 181
    :try_start_0
    new-instance v3, Landroid/graphics/RectF;

    invoke-interface {v2}, Lcom/metamoji/df/sprite/Context;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 183
    invoke-interface {v2}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 185
    invoke-interface {v2}, Lcom/metamoji/df/sprite/Context;->getAlpha()F

    move-result v11

    float-to-double v4, v11

    const-wide v6, 0x3feff7ced916872bL    # 0.999

    cmpg-double v12, v4, v6

    const/high16 v13, 0x3f800000    # 1.0f

    if-gez v12, :cond_1

    .line 188
    invoke-interface {v2, v13}, Lcom/metamoji/df/sprite/Context;->setAlpha(F)V

    .line 190
    invoke-interface {v2}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v4

    invoke-virtual {v1, v11}, Lcom/metamoji/un/text/sprite/TextSprite;->f2i(F)I

    move-result v5

    const/16 v6, 0x1f

    invoke-virtual {v4, v3, v5, v6}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 194
    :cond_1
    invoke-direct {v1, v2, v3}, Lcom/metamoji/un/text/sprite/TextSprite;->drawBackground(Lcom/metamoji/df/sprite/Context;Landroid/graphics/RectF;)V

    .line 196
    invoke-direct {v1, v2, v3, v0}, Lcom/metamoji/un/text/sprite/TextSprite;->drawUnitBorder(Lcom/metamoji/df/sprite/Context;Landroid/graphics/RectF;Lcom/metamoji/un/text/model/UnitBorderStyle;)V

    .line 198
    invoke-direct {v1, v2, v3}, Lcom/metamoji/un/text/sprite/TextSprite;->drawRuledLine(Lcom/metamoji/df/sprite/Context;Landroid/graphics/RectF;)V

    .line 200
    invoke-interface {v2}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 201
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/metamoji/un/text/sprite/TextSprite;->getWidth()F

    move-result v3

    invoke-virtual {v1}, Lcom/metamoji/un/text/sprite/TextSprite;->getHeight()F

    move-result v4

    const/4 v14, 0x0

    invoke-direct {v0, v14, v14, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v2, v0}, Lcom/metamoji/df/sprite/Context;->clipRect(Landroid/graphics/RectF;)V

    .line 202
    new-instance v7, Landroid/graphics/RectF;

    invoke-interface {v2}, Lcom/metamoji/df/sprite/Context;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 206
    new-instance v0, Landroid/text/TextPaint;

    const/16 v3, 0xc1

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    .line 207
    iget-object v3, v1, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v3

    iget-object v4, v1, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/metamoji/un/text/model/attr/StringAttributes;->updateDrawState(Landroid/graphics/Paint;Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    .line 213
    iget-object v3, v1, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v3

    .line 215
    invoke-virtual {v9}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineCount()I

    move-result v4

    .line 217
    new-instance v5, Lcom/metamoji/cm/mutable/MutableFloat;

    invoke-direct {v5}, Lcom/metamoji/cm/mutable/MutableFloat;-><init>()V

    const/4 v15, 0x0

    const/16 v23, 0x0

    :goto_0
    if-ge v15, v4, :cond_19

    move/from16 v26, v13

    .line 220
    invoke-virtual {v9, v15}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoGetterAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v13

    add-int/lit8 v14, v15, 0x1

    const/16 v24, 0x0

    if-ge v14, v4, :cond_2

    .line 223
    invoke-virtual {v9, v14}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoGetterAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v16

    move-object/from16 v6, v16

    goto :goto_1

    :cond_2
    move-object/from16 v6, v24

    :goto_1
    move/from16 v29, v4

    .line 224
    iget-object v4, v13, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    invoke-static {v4}, Lcom/metamoji/cm/PointUtils;->PointF(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v4

    move-object/from16 v25, v5

    .line 226
    iget-boolean v5, v1, Lcom/metamoji/un/text/sprite/TextSprite;->verticalWriting:Z

    move/from16 v16, v5

    if-eqz v16, :cond_3

    const/high16 v30, 0x40000000    # 2.0f

    .line 227
    iget v5, v4, Landroid/graphics/PointF;->x:F

    move/from16 v16, v5

    iget-object v5, v13, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v5, v5, Lcom/metamoji/cm/SizeF;->width:F

    div-float v5, v5, v30

    add-float v5, v16, v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    goto :goto_2

    :cond_3
    const/high16 v30, 0x40000000    # 2.0f

    .line 229
    iget v5, v4, Landroid/graphics/PointF;->y:F

    move/from16 v16, v5

    iget-object v5, v13, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v5, v5, Lcom/metamoji/cm/SizeF;->height:F

    const v17, 0x3f6147ae    # 0.88f

    mul-float v5, v5, v17

    add-float v5, v16, v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 234
    :goto_2
    iget-object v5, v13, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    iget v5, v5, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 235
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v16

    move/from16 v31, v5

    const/4 v5, 0x1

    add-int/lit8 v16, v16, -0x1

    if-eqz v6, :cond_4

    .line 237
    iget-object v5, v6, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    iget v5, v5, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    move/from16 v32, v5

    goto :goto_3

    :cond_4
    move/from16 v32, v16

    .line 242
    :goto_3
    iget-object v5, v13, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v33, v8

    :try_start_1
    iget-object v8, v13, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-static {v5, v8}, Lcom/metamoji/cm/RectUtils;->Rect(Landroid/graphics/PointF;Lcom/metamoji/cm/SizeF;)Landroid/graphics/RectF;

    move-result-object v5

    .line 248
    iget v8, v5, Landroid/graphics/RectF;->top:F

    move/from16 v16, v8

    iget-object v8, v13, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v8, v8, Lcom/metamoji/cm/SizeF;->height:F

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v8, v8, v17

    sub-float v8, v16, v8

    iput v8, v5, Landroid/graphics/RectF;->top:F

    .line 249
    iget v8, v5, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v8

    iget-object v8, v13, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v8, v8, Lcom/metamoji/cm/SizeF;->height:F

    mul-float v8, v8, v17

    mul-float v8, v8, v30

    add-float v8, v16, v8

    iput v8, v5, Landroid/graphics/RectF;->bottom:F

    .line 250
    invoke-static {v7, v5}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 257
    invoke-direct {v1, v2, v13, v6}, Lcom/metamoji/un/text/sprite/TextSprite;->drawCharAttrBackgroundColor(Lcom/metamoji/df/sprite/Context;Lcom/metamoji/un/text/model/linetable/LineInfo;Lcom/metamoji/un/text/model/linetable/LineInfo;)V

    .line 260
    :cond_5
    invoke-virtual {v13}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnTable()Lcom/metamoji/un/text/model/linetable/ColumnTable;

    move-result-object v5

    .line 261
    new-instance v2, Lcom/metamoji/cm/mutable/MutableInt;

    move-object/from16 v34, v5

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/metamoji/cm/mutable/MutableInt;-><init>(I)V

    .line 264
    iget-boolean v5, v13, Lcom/metamoji/un/text/model/linetable/LineInfo;->paragraphTop:Z

    if-eqz v5, :cond_9

    .line 266
    iget-object v5, v1, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v5, v15}, Lcom/metamoji/un/text/model/TextModel;->getListPrefixSnapshot(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v5

    if-eqz v5, :cond_7

    move-object/from16 v35, v2

    move-object/from16 v36, v7

    const/4 v2, 0x0

    .line 268
    invoke-virtual {v5, v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLineRef(I)Lcom/metamoji/un/text/model/TextLine;

    move-result-object v7

    .line 271
    iget-object v2, v1, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v2

    invoke-virtual {v5, v7, v0, v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getImageWidth(Lcom/metamoji/un/text/model/TextLine;Landroid/text/TextPaint;Lcom/metamoji/un/text/model/attr/StringAttributes;)F

    move-result v2

    move-object/from16 v21, v0

    .line 273
    iget-boolean v0, v1, Lcom/metamoji/un/text/sprite/TextSprite;->verticalWriting:Z

    if-eqz v0, :cond_6

    .line 274
    invoke-interface/range {p1 .. p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v16

    iget v0, v4, Landroid/graphics/PointF;->x:F

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/PointF;->y:F

    sub-float v19, v0, v2

    iget-object v0, v1, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v22

    move-object/from16 v17, v7

    move-object/from16 v20, v13

    move v0, v15

    move-object v15, v5

    invoke-virtual/range {v15 .. v22}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->draw(Landroid/graphics/Canvas;Lcom/metamoji/un/text/model/TextLine;FFLcom/metamoji/un/text/model/linetable/LineInfo;Landroid/text/TextPaint;Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    move-object/from16 v2, v20

    goto :goto_4

    :cond_6
    move-object/from16 v17, v7

    move-object/from16 v20, v13

    move v0, v15

    move-object v15, v5

    .line 276
    invoke-interface/range {p1 .. p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v16

    iget v5, v4, Landroid/graphics/PointF;->x:F

    sub-float v18, v5, v2

    iget v2, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, v1, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v22

    move/from16 v19, v2

    invoke-virtual/range {v15 .. v22}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->draw(Landroid/graphics/Canvas;Lcom/metamoji/un/text/model/TextLine;FFLcom/metamoji/un/text/model/linetable/LineInfo;Landroid/text/TextPaint;Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    move-object/from16 v2, v20

    goto :goto_4

    :cond_7
    move-object/from16 v21, v0

    move-object/from16 v35, v2

    move-object/from16 v36, v7

    move-object v2, v13

    move v0, v15

    .line 294
    :goto_4
    iget-object v5, v1, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v5, v0}, Lcom/metamoji/un/text/model/TextModel;->getParagraphMarkOfLine(I)Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    move-result-object v0

    .line 295
    iget-boolean v5, v1, Lcom/metamoji/un/text/sprite/TextSprite;->isRenderMarkInViewMode:Z

    if-eqz v5, :cond_a

    .line 296
    sget-object v5, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;->Voice:Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    if-ne v5, v0, :cond_a

    .line 301
    new-instance v0, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 302
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v5, v30

    .line 303
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v5, 0xff

    const/16 v7, 0xe6

    const/16 v13, 0x5a

    .line 304
    invoke-static {v5, v13, v7, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    iget-boolean v5, v1, Lcom/metamoji/un/text/sprite/TextSprite;->verticalWriting:Z

    if-eqz v5, :cond_8

    .line 312
    iget-object v5, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object v7, v4

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-float v17, v4, v26

    .line 313
    invoke-interface/range {p1 .. p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v15

    iget-object v4, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    .line 314
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getLineRect()Landroid/graphics/RectF;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    add-float v18, v5, v13

    move/from16 v19, v17

    move-object/from16 v20, v0

    move/from16 v16, v4

    .line 313
    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_8
    move-object/from16 v20, v0

    move-object v7, v4

    .line 318
    iget-object v0, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v0, v4

    add-float v16, v0, v26

    .line 319
    invoke-interface/range {p1 .. p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v15

    iget-object v0, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v4, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 320
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getLineRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float v19, v4, v5

    move/from16 v18, v16

    move/from16 v17, v0

    .line 319
    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_9
    move-object/from16 v21, v0

    move-object/from16 v35, v2

    move-object/from16 v36, v7

    move-object v2, v13

    :cond_a
    move-object v7, v4

    :goto_5
    move-object v5, v7

    move-object/from16 v4, v24

    move/from16 v0, v31

    .line 332
    :goto_6
    invoke-virtual {v3, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v15

    if-eqz v4, :cond_b

    if-eq v4, v15, :cond_b

    const/4 v13, 0x0

    goto :goto_7

    :cond_b
    move/from16 v13, v23

    :goto_7
    if-eqz v15, :cond_15

    .line 340
    invoke-virtual {v15}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_10

    .line 342
    :try_start_2
    invoke-virtual {v15}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLineRefCount()I

    move-result v4

    if-lez v4, :cond_e

    if-eqz v8, :cond_d

    .line 346
    invoke-virtual {v15, v13}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLineRef(I)Lcom/metamoji/un/text/model/TextLine;

    move-result-object v17

    .line 347
    invoke-virtual/range {v17 .. v17}, Lcom/metamoji/un/text/model/TextLine;->getLength()I

    move-result v7

    if-lez v7, :cond_d

    .line 348
    iget-boolean v7, v1, Lcom/metamoji/un/text/sprite/TextSprite;->verticalWriting:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_c

    .line 349
    :try_start_3
    invoke-interface/range {p1 .. p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v16

    iget v7, v5, Landroid/graphics/PointF;->x:F

    move-object/from16 v20, v2

    iget-boolean v2, v1, Lcom/metamoji/un/text/sprite/TextSprite;->_renderSpellErrorMark:Z

    move/from16 v23, v2

    iget-object v2, v1, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v2

    move/from16 v18, v7

    move-object/from16 v24, v21

    move-object/from16 v22, v25

    move-object/from16 v19, v34

    move-object/from16 v25, v2

    move-object/from16 v21, v20

    move-object/from16 v20, v35

    invoke-virtual/range {v15 .. v25}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->draw(Landroid/graphics/Canvas;Lcom/metamoji/un/text/model/TextLine;FLcom/metamoji/un/text/model/linetable/ColumnTable;Lcom/metamoji/cm/mutable/MutableInt;Lcom/metamoji/un/text/model/linetable/LineInfo;Lcom/metamoji/cm/mutable/MutableFloat;ZLandroid/text/TextPaint;Lcom/metamoji/un/text/model/attr/StringAttributes;)F

    move-result v2

    move-object/from16 v35, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v24

    .line 350
    iget v7, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v2

    iput v7, v5, Landroid/graphics/PointF;->y:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v1, v20

    move-object/from16 v7, v22

    goto :goto_8

    :cond_c
    move-object/from16 v20, v2

    move-object/from16 v22, v25

    move-object/from16 v19, v34

    .line 353
    :try_start_4
    invoke-interface/range {p1 .. p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v16

    iget v2, v5, Landroid/graphics/PointF;->y:F

    iget-boolean v7, v1, Lcom/metamoji/un/text/sprite/TextSprite;->_renderSpellErrorMark:Z

    move/from16 v18, v2

    iget-object v2, v1, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v25

    move/from16 v23, v7

    move-object/from16 v24, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v35

    invoke-virtual/range {v15 .. v25}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->draw(Landroid/graphics/Canvas;Lcom/metamoji/un/text/model/TextLine;FLcom/metamoji/un/text/model/linetable/ColumnTable;Lcom/metamoji/cm/mutable/MutableInt;Lcom/metamoji/un/text/model/linetable/LineInfo;Lcom/metamoji/cm/mutable/MutableFloat;ZLandroid/text/TextPaint;Lcom/metamoji/un/text/model/attr/StringAttributes;)F

    move-result v2

    move-object/from16 v35, v20

    move-object/from16 v1, v21

    move-object/from16 v7, v22

    move-object/from16 v21, v24

    move/from16 v16, v2

    .line 354
    iget v2, v5, Landroid/graphics/PointF;->x:F

    add-float v2, v2, v16

    iput v2, v5, Landroid/graphics/PointF;->x:F

    goto :goto_8

    :cond_d
    move-object v1, v2

    move-object/from16 v7, v25

    move-object/from16 v19, v34

    :goto_8
    add-int/lit8 v2, v13, 0x1

    if-lt v2, v4, :cond_f

    const/4 v2, 0x0

    goto :goto_9

    :cond_e
    move-object v1, v2

    move-object/from16 v7, v25

    move-object/from16 v19, v34

    move v2, v13

    :cond_f
    :goto_9
    move/from16 v17, v0

    move-object/from16 v20, v1

    move/from16 v23, v2

    move-object/from16 v16, v3

    move-object v0, v6

    move-object/from16 v22, v7

    move/from16 v18, v8

    move/from16 v8, v32

    move-object/from16 v3, v35

    move-object/from16 v7, v36

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_f

    :cond_10
    move-object v1, v2

    move-object/from16 v7, v25

    move-object/from16 v19, v34

    const/4 v2, 0x0

    .line 367
    invoke-virtual {v7, v2}, Lcom/metamoji/cm/mutable/MutableFloat;->setValue(F)V

    if-eqz v8, :cond_14

    if-eqz v6, :cond_12

    .line 372
    iget-object v4, v6, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    iget v4, v4, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ne v4, v0, :cond_12

    .line 376
    iget-object v4, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    iget v4, v4, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ne v4, v0, :cond_11

    .line 378
    new-instance v4, Lcom/metamoji/cm/Range;

    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    iget v2, v2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    move-object/from16 v16, v3

    iget-object v3, v6, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    iget v3, v3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    move/from16 v17, v3

    iget-object v3, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    iget v3, v3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int v3, v17, v3

    invoke-direct {v4, v2, v3}, Lcom/metamoji/cm/Range;-><init>(II)V

    goto :goto_a

    :cond_11
    move-object/from16 v16, v3

    .line 382
    new-instance v4, Lcom/metamoji/cm/Range;

    iget-object v2, v6, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    iget v2, v2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    const/4 v3, 0x0

    invoke-direct {v4, v3, v2}, Lcom/metamoji/cm/Range;-><init>(II)V

    :goto_a
    move/from16 v17, v0

    goto :goto_b

    :cond_12
    move-object/from16 v16, v3

    .line 386
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    iget v2, v2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ne v2, v0, :cond_13

    .line 388
    new-instance v4, Lcom/metamoji/cm/Range;

    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    iget v2, v2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 389
    invoke-virtual {v15}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v3

    move/from16 v17, v0

    iget-object v0, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    iget v0, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr v3, v0

    invoke-direct {v4, v2, v3}, Lcom/metamoji/cm/Range;-><init>(II)V

    :goto_b
    const/4 v2, 0x0

    goto :goto_c

    :cond_13
    move/from16 v17, v0

    .line 392
    new-instance v4, Lcom/metamoji/cm/Range;

    invoke-virtual {v15}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {v4, v2, v0}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 396
    :goto_c
    invoke-virtual {v15, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v3

    .line 397
    invoke-virtual {v15, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokeAttributesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v28, v2

    move-object v0, v6

    move-object/from16 v22, v7

    move/from16 v18, v8

    move/from16 v8, v32

    move-object/from16 v7, v36

    const/16 v27, 0x0

    move-object/from16 v2, p1

    move-object v6, v1

    move-object/from16 v1, p0

    .line 400
    :try_start_5
    invoke-direct/range {v1 .. v7}, Lcom/metamoji/un/text/sprite/TextSprite;->drawStrokes(Lcom/metamoji/df/sprite/Context;Ljava/util/List;Ljava/util/List;Landroid/graphics/PointF;Lcom/metamoji/un/text/model/linetable/LineInfo;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v4

    move-object/from16 v20, v6

    .line 401
    invoke-virtual/range {v35 .. v35}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v5, v3

    move-object/from16 v3, v35

    invoke-virtual {v3, v5}, Lcom/metamoji/cm/mutable/MutableInt;->setValue(I)V

    move-object v5, v4

    goto :goto_e

    :cond_14
    move-object/from16 v20, v1

    move/from16 v27, v2

    move-object/from16 v22, v7

    move-object/from16 v1, p0

    goto :goto_d

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_10

    :cond_15
    move-object/from16 v20, v2

    move-object/from16 v22, v25

    move-object/from16 v19, v34

    const/16 v27, 0x0

    :goto_d
    move/from16 v17, v0

    move-object/from16 v16, v3

    move-object v0, v6

    move/from16 v18, v8

    move/from16 v8, v32

    move-object/from16 v3, v35

    move-object/from16 v7, v36

    const/16 v28, 0x0

    move-object/from16 v2, p1

    :goto_e
    move/from16 v23, v13

    :goto_f
    add-int/lit8 v4, v17, 0x1

    if-eqz v0, :cond_16

    .line 406
    iget-object v6, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    iget v6, v6, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-eqz v6, :cond_16

    if-eq v4, v8, :cond_18

    :cond_16
    if-nez v0, :cond_17

    if-eq v4, v8, :cond_18

    :cond_17
    if-lt v4, v8, :cond_18

    move v15, v14

    move-object/from16 v3, v16

    move-object/from16 v0, v21

    move-object/from16 v5, v22

    move/from16 v13, v26

    move/from16 v14, v27

    move/from16 v4, v29

    move-object/from16 v8, v33

    goto/16 :goto_0

    :cond_18
    move-object v6, v0

    move-object/from16 v35, v3

    move v0, v4

    move-object/from16 v36, v7

    move/from16 v32, v8

    move-object v4, v15

    move-object/from16 v3, v16

    move/from16 v8, v18

    move-object/from16 v34, v19

    move-object/from16 v2, v20

    move-object/from16 v25, v22

    goto/16 :goto_6

    :cond_19
    move-object/from16 v33, v8

    .line 412
    iget-object v0, v1, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getSearchResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 413
    invoke-direct/range {p0 .. p1}, Lcom/metamoji/un/text/sprite/TextSprite;->drawSearchResults(Lcom/metamoji/df/sprite/Context;)V

    .line 417
    :cond_1a
    invoke-interface {v2}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 418
    iget-boolean v0, v1, Lcom/metamoji/un/text/sprite/TextSprite;->isRenderCursor:Z

    if-eqz v0, :cond_1b

    .line 419
    invoke-direct/range {p0 .. p1}, Lcom/metamoji/un/text/sprite/TextSprite;->drawCaret(Lcom/metamoji/df/sprite/Context;)V

    :cond_1b
    if-gez v12, :cond_1c

    .line 424
    invoke-interface {v2, v11}, Lcom/metamoji/df/sprite/Context;->setAlpha(F)V

    .line 426
    :cond_1c
    invoke-interface {v2}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 428
    iget-object v0, v1, Lcom/metamoji/un/text/sprite/TextSprite;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/metamoji/un/text/sprite/TextSprite$1;

    invoke-direct {v3, v1}, Lcom/metamoji/un/text/sprite/TextSprite$1;-><init>(Lcom/metamoji/un/text/sprite/TextSprite;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    invoke-super/range {p0 .. p1}, Lcom/metamoji/df/sprite/Sprite;->paintContent(Lcom/metamoji/df/sprite/Context;)V

    .line 441
    invoke-direct {v1, v2, v7}, Lcom/metamoji/un/text/sprite/TextSprite;->drawForeground(Lcom/metamoji/df/sprite/Context;Landroid/graphics/RectF;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 445
    invoke-interface/range {v33 .. v33}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object/from16 v33, v8

    :goto_10
    invoke-interface/range {v33 .. v33}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 446
    throw v0
.end method

.method public setRenderSpellErrorMark(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/metamoji/un/text/sprite/TextSprite;->_renderSpellErrorMark:Z

    return-void
.end method

.method public setRendererCursor(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/metamoji/un/text/sprite/TextSprite;->isRenderCursor:Z

    return-void
.end method

.method public setRendererMarkInViewMode(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/metamoji/un/text/sprite/TextSprite;->isRenderMarkInViewMode:Z

    return-void
.end method

.method public setTextModel(Lcom/metamoji/un/text/model/TextModel;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/metamoji/un/text/sprite/TextSprite;->textModel:Lcom/metamoji/un/text/model/TextModel;

    return-void
.end method

.method public setVerticalWriting(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/metamoji/un/text/sprite/TextSprite;->verticalWriting:Z

    return-void
.end method
