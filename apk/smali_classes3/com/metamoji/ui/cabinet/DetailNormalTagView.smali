.class public Lcom/metamoji/ui/cabinet/DetailNormalTagView;
.super Landroid/widget/ImageView;
.source "DetailNormalTagView.java"


# static fields
.field private static final ELLIPSIS_NORMAL:Ljava/lang/String; = "..."


# instance fields
.field private _ellipsisCount:I

.field private _ellipsisStart:I

.field private _layout:Landroid/text/StaticLayout;

.field private _paint:Landroid/text/TextPaint;

.field private _text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->init()V

    return-void
.end method

.method private calculateEllipsis()V
    .locals 17

    move-object/from16 v0, p0

    .line 101
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 103
    iput v2, v0, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->_ellipsisStart:I

    .line 104
    iput v2, v0, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->_ellipsisCount:I

    .line 112
    iget-object v3, v0, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->_text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 113
    new-array v4, v3, [F

    .line 114
    iget-object v5, v0, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->_paint:Landroid/text/TextPaint;

    iget-object v6, v0, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->_text:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    move v9, v2

    :goto_0
    const/4 v5, 0x0

    if-ge v9, v3, :cond_1

    add-int/lit8 v6, v9, 0x1

    if-ge v6, v3, :cond_0

    .line 116
    iget-object v7, v0, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->_text:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iget-object v8, v0, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->_text:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 118
    new-instance v7, Landroid/text/StaticLayout;

    iget-object v8, v0, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->_text:Ljava/lang/String;

    add-int/lit8 v10, v9, 0x2

    iget-object v11, v0, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->_paint:Landroid/text/TextPaint;

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v12, 0x7fffffff

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct/range {v7 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 119
    invoke-virtual {v7, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v7

    aput v7, v4, v9

    .line 120
    aput v5, v4, v6

    move v9, v6

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 125
    :cond_1
    iget-object v6, v0, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->_paint:Landroid/text/TextPaint;

    const-string v7, "..."

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    :goto_1
    if-ge v2, v3, :cond_3

    .line 158
    aget v7, v4, v2

    add-float/2addr v5, v7

    add-float v7, v5, v6

    cmpl-float v7, v7, v1

    if-lez v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 165
    :cond_3
    :goto_2
    iput v2, v0, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->_ellipsisStart:I

    sub-int/2addr v3, v2

    .line 166
    iput v3, v0, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->_ellipsisCount:I

    return-void
.end method

.method private init()V
    .locals 2

    .line 50
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->_paint:Landroid/text/TextPaint;

    const/high16 v1, -0x1000000

    .line 51
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 81
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 83
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 84
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->_layout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 58
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 61
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/metamoji/noteanytime/R$dimen;->cabinetNormalTagTextSize:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 62
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->_paint:Landroid/text/TextPaint;

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 63
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->_paint:Landroid/text/TextPaint;

    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    .line 64
    iget v0, p2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v0, p2

    .line 66
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    .line 67
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->getPaddingRight()I

    move-result v2

    sub-int v6, v1, v2

    int-to-float p2, p2

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    div-float/2addr p2, v0

    mul-float/2addr p1, p2

    .line 71
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->_paint:Landroid/text/TextPaint;

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 73
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->calculateEllipsis()V

    .line 75
    iget p1, p0, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->_ellipsisCount:I

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->_text:Ljava/lang/String;

    if-lez p1, :cond_1

    const/4 p1, 0x0

    iget v0, p0, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->_ellipsisStart:I

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "..."

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object v4, p2

    .line 76
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v5, p0, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->_paint:Landroid/text/TextPaint;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, p0, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->_layout:Landroid/text/StaticLayout;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->_text:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->requestLayout()V

    .line 91
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->invalidate()V

    return-void
.end method
