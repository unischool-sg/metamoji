.class public Lcom/metamoji/mazec/ui/RecognizeUserCharView;
.super Landroid/view/View;
.source "RecognizeUserCharView.java"


# static fields
.field private static final SELECTED_BORDER_COLOR:I

.field private static final TEXT_COLOR:I = -0x1000000


# instance fields
.field private mBorderAreaWidth:F

.field private mBorderLineWidth:F

.field private mColor:I

.field private mFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mPaint:Landroid/graphics/Paint;

.field private mText:Ljava/lang/String;

.field private mTextPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9f

    const/16 v1, 0xbe

    const/16 v2, 0xd

    .line 23
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->SELECTED_BORDER_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->initCommon(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->initCommon(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->initCommon(Landroid/content/Context;)V

    return-void
.end method

.method private initCommon(Landroid/content/Context;)V
    .locals 2

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 52
    const-string v0, "dimen.recog_user_char_text_size"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 53
    const-string v1, "dimen.recog_user_char_padding"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mTextPadding:F

    .line 54
    const-string v1, "dimen.recog_user_char_border_area_width"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mBorderAreaWidth:F

    .line 55
    const-string v1, "dimen.recog_user_char_border_line_width"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mBorderLineWidth:F

    .line 57
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 58
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object p1, p0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 60
    iget-object p1, p0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 61
    iget-object p1, p0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 63
    iget-object p1, p0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    .line 110
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->getHeight()I

    move-result v2

    .line 112
    iget-object v3, v0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    iget-object v3, v0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget v6, v0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mBorderAreaWidth:F

    int-to-float v3, v1

    sub-float v8, v3, v6

    int-to-float v2, v2

    sub-float v9, v2, v6

    iget-object v10, v0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mPaint:Landroid/graphics/Paint;

    move v7, v6

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 117
    iget-object v4, v0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object v12, v0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mText:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    div-int/lit8 v1, v1, 0x2

    int-to-float v15, v1

    iget v1, v0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mBorderAreaWidth:F

    iget v4, v0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mTextPadding:F

    add-float/2addr v1, v4

    iget-object v4, v0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v4, v4

    add-float v16, v1, v4

    iget-object v1, v0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mPaint:Landroid/graphics/Paint;

    const/4 v13, 0x0

    move-object/from16 v11, p1

    move-object/from16 v17, v1

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 120
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, v0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object v1, v0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mPaint:Landroid/graphics/Paint;

    sget v4, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->SELECTED_BORDER_COLOR:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v1, v0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mBorderLineWidth:F

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    iget v1, v0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mBorderLineWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v12, v1, v4

    sub-float v14, v3, v12

    sub-float v15, v2, v12

    .line 125
    iget-object v1, v0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mPaint:Landroid/graphics/Paint;

    move v13, v12

    move-object/from16 v11, p1

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 83
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 84
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 85
    iget-object v2, p0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v2, v2

    iget-object v3, p0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mTextPadding:F

    iget v4, p0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mBorderAreaWidth:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/high16 v3, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v0, v5, :cond_0

    move v4, p2

    goto :goto_0

    .line 90
    :cond_0
    iget-object v6, p0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mText:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v6

    iget v7, p0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mTextPadding:F

    iget v8, p0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mBorderAreaWidth:F

    add-float/2addr v7, v8

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 91
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ne v0, v3, :cond_1

    .line 93
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_1
    :goto_0
    if-ne v1, v5, :cond_2

    goto :goto_1

    :cond_2
    if-ne v1, v3, :cond_3

    .line 100
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    :cond_3
    move p2, v2

    .line 103
    :goto_1
    invoke-virtual {p0, v4, p2}, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setCategoryColor(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mColor:I

    .line 78
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->mText:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->requestLayout()V

    .line 73
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->invalidate()V

    return-void
.end method
