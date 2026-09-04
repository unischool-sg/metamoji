.class public Lcom/metamoji/ui/ImageButtonWithText;
.super Landroid/widget/ImageButton;
.source "ImageButtonWithText.java"


# static fields
.field private static final ELLIPSIS_NORMAL:Ljava/lang/String; = "..."


# instance fields
.field private _drawPt:Landroid/graphics/PointF;

.field private _ellipsisCount:I

.field private _ellipsisStart:I

.field private _layout:Landroid/text/StaticLayout;

.field private _minTextSize:I

.field private _paint:Landroid/text/TextPaint;

.field private _text:Ljava/lang/String;

.field private _textHAlign:I

.field private _textSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/ImageButtonWithText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/ImageButtonWithText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/ImageButtonWithText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private calculateEllipsis()V
    .locals 7

    .line 186
    invoke-virtual {p0}, Lcom/metamoji/ui/ImageButtonWithText;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/ui/ImageButtonWithText;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/metamoji/ui/ImageButtonWithText;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 188
    iput v1, p0, Lcom/metamoji/ui/ImageButtonWithText;->_ellipsisStart:I

    .line 189
    iput v1, p0, Lcom/metamoji/ui/ImageButtonWithText;->_ellipsisCount:I

    .line 191
    iget-object v2, p0, Lcom/metamoji/ui/ImageButtonWithText;->_text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 192
    new-array v3, v2, [F

    .line 193
    iget-object v4, p0, Lcom/metamoji/ui/ImageButtonWithText;->_paint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/metamoji/ui/ImageButtonWithText;->_text:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v3}, Lcom/metamoji/ui/ImageButtonWithText;->getTextWidths(Landroid/graphics/Paint;Ljava/lang/String;[F)F

    move-result v4

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v4, p0, Lcom/metamoji/ui/ImageButtonWithText;->_paint:Landroid/text/TextPaint;

    const-string v5, "..."

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 231
    aget v6, v3, v1

    add-float/2addr v5, v6

    add-float v6, v5, v4

    cmpl-float v6, v6, v0

    if-lez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_2
    :goto_1
    iput v1, p0, Lcom/metamoji/ui/ImageButtonWithText;->_ellipsisStart:I

    sub-int/2addr v2, v1

    .line 239
    iput v2, p0, Lcom/metamoji/ui/ImageButtonWithText;->_ellipsisCount:I

    return-void
.end method

.method private getTextWidths(Landroid/graphics/Paint;Ljava/lang/String;[F)F
    .locals 17

    move-object/from16 v0, p0

    .line 155
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez p3, :cond_0

    .line 157
    new-array v2, v1, [F

    goto :goto_0

    :cond_0
    move-object/from16 v2, p3

    :goto_0
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 159
    invoke-virtual {v3, v4, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v7, v3

    move v15, v4

    :goto_1
    if-ge v7, v1, :cond_2

    add-int/lit8 v5, v7, 0x1

    if-ge v5, v1, :cond_1

    .line 163
    iget-object v6, v0, Lcom/metamoji/ui/ImageButtonWithText;->_text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v8, v0, Lcom/metamoji/ui/ImageButtonWithText;->_text:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v5

    .line 165
    new-instance v5, Landroid/text/StaticLayout;

    move v8, v6

    iget-object v6, v0, Lcom/metamoji/ui/ImageButtonWithText;->_text:Ljava/lang/String;

    move v9, v8

    add-int/lit8 v8, v7, 0x2

    move v10, v9

    iget-object v9, v0, Lcom/metamoji/ui/ImageButtonWithText;->_paint:Landroid/text/TextPaint;

    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v12, v10

    const v10, 0x7fffffff

    move/from16 v16, v12

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct/range {v5 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 166
    invoke-virtual {v5, v3}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v5

    .line 167
    aput v5, v2, v7

    .line 168
    aput v4, v2, v16

    add-float/2addr v15, v5

    move/from16 v7, v16

    goto :goto_2

    .line 173
    :cond_1
    aget v5, v2, v7

    add-float/2addr v15, v5

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    return v15
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 63
    sget-object v0, Lcom/metamoji/noteanytime/R$styleable;->ImageButtonWithText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 65
    sget p2, Lcom/metamoji/noteanytime/R$styleable;->ImageButtonWithText_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ui/ImageButtonWithText;->_text:Ljava/lang/String;

    .line 66
    sget p2, Lcom/metamoji/noteanytime/R$styleable;->ImageButtonWithText_textSize:I

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->spToPx(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/ImageButtonWithText;->_textSize:I

    .line 67
    sget p2, Lcom/metamoji/noteanytime/R$styleable;->ImageButtonWithText_minTextSize:I

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->spToPx(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/ImageButtonWithText;->_minTextSize:I

    .line 68
    sget p2, Lcom/metamoji/noteanytime/R$styleable;->ImageButtonWithText_textHorizontalAlign:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/ImageButtonWithText;->_textHAlign:I

    .line 70
    :cond_0
    new-instance p1, Landroid/text/TextPaint;

    const/16 p2, 0xc1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/ui/ImageButtonWithText;->_paint:Landroid/text/TextPaint;

    const/high16 p2, -0x1000000

    .line 71
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 138
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 140
    iget-object v0, p0, Lcom/metamoji/ui/ImageButtonWithText;->_layout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 142
    iget-object v0, p0, Lcom/metamoji/ui/ImageButtonWithText;->_drawPt:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/metamoji/ui/ImageButtonWithText;->_drawPt:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 143
    iget-object v0, p0, Lcom/metamoji/ui/ImageButtonWithText;->_layout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 81
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onMeasure(II)V

    .line 83
    iget-object p1, p0, Lcom/metamoji/ui/ImageButtonWithText;->_text:Ljava/lang/String;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 84
    iput-object p2, p0, Lcom/metamoji/ui/ImageButtonWithText;->_layout:Landroid/text/StaticLayout;

    return-void

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/ImageButtonWithText;->_paint:Landroid/text/TextPaint;

    iget v0, p0, Lcom/metamoji/ui/ImageButtonWithText;->_textSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 92
    iget p1, p0, Lcom/metamoji/ui/ImageButtonWithText;->_textSize:I

    .line 93
    iget-object v0, p0, Lcom/metamoji/ui/ImageButtonWithText;->_paint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 94
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v1, v0

    .line 96
    invoke-virtual {p0}, Lcom/metamoji/ui/ImageButtonWithText;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/ui/ImageButtonWithText;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/metamoji/ui/ImageButtonWithText;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 97
    invoke-virtual {p0}, Lcom/metamoji/ui/ImageButtonWithText;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/metamoji/ui/ImageButtonWithText;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/metamoji/ui/ImageButtonWithText;->getPaddingRight()I

    move-result v3

    sub-int v7, v2, v3

    int-to-float v2, v0

    cmpg-float v3, v2, v1

    if-gez v3, :cond_1

    int-to-float p1, p1

    div-float/2addr v2, v1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    .line 102
    :cond_1
    iget v1, p0, Lcom/metamoji/ui/ImageButtonWithText;->_textSize:I

    .line 103
    iget-object v2, p0, Lcom/metamoji/ui/ImageButtonWithText;->_paint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/metamoji/ui/ImageButtonWithText;->_text:Ljava/lang/String;

    invoke-direct {p0, v2, v3, p2}, Lcom/metamoji/ui/ImageButtonWithText;->getTextWidths(Landroid/graphics/Paint;Ljava/lang/String;[F)F

    move-result v2

    int-to-float v3, v7

    cmpg-float v4, v3, v2

    if-gez v4, :cond_2

    int-to-float v1, v1

    div-float v4, v3, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 108
    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 109
    iget v1, p0, Lcom/metamoji/ui/ImageButtonWithText;->_minTextSize:I

    if-ge p1, v1, :cond_3

    move p1, v1

    .line 111
    :cond_3
    iget-object v1, p0, Lcom/metamoji/ui/ImageButtonWithText;->_paint:Landroid/text/TextPaint;

    int-to-float v4, p1

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 114
    iget-object v1, p0, Lcom/metamoji/ui/ImageButtonWithText;->_paint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 116
    new-instance v4, Landroid/graphics/PointF;

    .line 117
    invoke-virtual {p0}, Lcom/metamoji/ui/ImageButtonWithText;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    .line 118
    invoke-virtual {p0}, Lcom/metamoji/ui/ImageButtonWithText;->getPaddingTop()I

    move-result v6

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v6, v0

    int-to-float v0, v6

    iget v6, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v6, v6

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v6, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v6, v1

    sub-float/2addr v0, v6

    invoke-direct {v4, v5, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, p0, Lcom/metamoji/ui/ImageButtonWithText;->_drawPt:Landroid/graphics/PointF;

    .line 120
    iget v0, p0, Lcom/metamoji/ui/ImageButtonWithText;->_textHAlign:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_5

    .line 121
    iget v0, p0, Lcom/metamoji/ui/ImageButtonWithText;->_textSize:I

    if-eq v0, p1, :cond_4

    .line 122
    iget-object p1, p0, Lcom/metamoji/ui/ImageButtonWithText;->_paint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/metamoji/ui/ImageButtonWithText;->_text:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/metamoji/ui/ImageButtonWithText;->getTextWidths(Landroid/graphics/Paint;Ljava/lang/String;[F)F

    move-result v2

    :cond_4
    cmpg-float p1, v2, v3

    if-gez p1, :cond_5

    .line 125
    iget-object p1, p0, Lcom/metamoji/ui/ImageButtonWithText;->_drawPt:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->x:F

    div-int/lit8 v0, v7, 0x2

    int-to-float v0, v0

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/PointF;->x:F

    .line 130
    :cond_5
    invoke-direct {p0}, Lcom/metamoji/ui/ImageButtonWithText;->calculateEllipsis()V

    .line 132
    iget p1, p0, Lcom/metamoji/ui/ImageButtonWithText;->_ellipsisCount:I

    iget-object p2, p0, Lcom/metamoji/ui/ImageButtonWithText;->_text:Ljava/lang/String;

    if-lez p1, :cond_6

    const/4 p1, 0x0

    iget v0, p0, Lcom/metamoji/ui/ImageButtonWithText;->_ellipsisStart:I

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "..."

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_6
    move-object v5, p2

    .line 133
    new-instance v4, Landroid/text/StaticLayout;

    iget-object v6, p0, Lcom/metamoji/ui/ImageButtonWithText;->_paint:Landroid/text/TextPaint;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v4, p0, Lcom/metamoji/ui/ImageButtonWithText;->_layout:Landroid/text/StaticLayout;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/metamoji/ui/ImageButtonWithText;->_text:Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Lcom/metamoji/ui/ImageButtonWithText;->requestLayout()V

    .line 151
    invoke-virtual {p0}, Lcom/metamoji/ui/ImageButtonWithText;->invalidate()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/metamoji/ui/ImageButtonWithText;->_paint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
