.class public Lcom/metamoji/ui/common/UiAngleSlider;
.super Landroid/view/View;
.source "UiAngleSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/common/UiAngleSlider$IOnValueChanged;
    }
.end annotation


# static fields
.field private static final m0dig:Ljava/lang/String; = "0\u00b0"

.field private static final m180dig:Ljava/lang/String; = "180\u00b0"

.field private static final m270dig:Ljava/lang/String; = "270\u00b0"

.field private static final m90dig:Ljava/lang/String; = "90\u00b0"


# instance fields
.field mAngle:F

.field mAxisMargin:F

.field mAxisStrokeWidth:F

.field mBallColor:I

.field mBallRadius:F

.field mCenterX:F

.field mCenterY:F

.field mCircleMargin:F

.field mCircleMarginRatio:F

.field mCircleStrokeWidth:F

.field mFontSize:F

.field mFontSizePx:I

.field mLineColor:I

.field mOnValueChanged:Lcom/metamoji/ui/common/UiAngleSlider$IOnValueChanged;

.field mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41000000    # 8.0f

    .line 77
    iput v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCircleStrokeWidth:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 78
    iput v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAxisStrokeWidth:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 79
    iput v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAxisMargin:F

    .line 80
    iput v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mBallRadius:F

    .line 81
    iput v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mFontSize:F

    const v0, 0x3e19999a    # 0.15f

    .line 82
    iput v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCircleMarginRatio:F

    const/16 v0, 0x4c

    const/16 v1, 0x5b

    const/16 v2, 0x42

    .line 83
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mLineColor:I

    const/16 v0, 0x9f

    const/16 v1, 0xbe

    const/16 v2, 0xd

    .line 84
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mBallColor:I

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAngle:F

    .line 96
    iput v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterX:F

    .line 97
    iput v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterY:F

    .line 98
    iput v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mRadius:F

    const/high16 v0, 0x42480000    # 50.0f

    .line 99
    iput v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCircleMargin:F

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mOnValueChanged:Lcom/metamoji/ui/common/UiAngleSlider$IOnValueChanged;

    const/4 v0, -0x1

    .line 102
    iput v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mFontSizePx:I

    .line 34
    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiAngleSlider;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/common/UiAngleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x41000000    # 8.0f

    .line 77
    iput p3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCircleStrokeWidth:F

    const/high16 p3, 0x40000000    # 2.0f

    .line 78
    iput p3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAxisStrokeWidth:F

    const/high16 p3, 0x41200000    # 10.0f

    .line 79
    iput p3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAxisMargin:F

    .line 80
    iput p3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mBallRadius:F

    .line 81
    iput p3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mFontSize:F

    const p3, 0x3e19999a    # 0.15f

    .line 82
    iput p3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCircleMarginRatio:F

    const/16 p3, 0x4c

    const/16 v0, 0x5b

    const/16 v1, 0x42

    .line 83
    invoke-static {v1, p3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mLineColor:I

    const/16 p3, 0x9f

    const/16 v0, 0xbe

    const/16 v1, 0xd

    .line 84
    invoke-static {v1, p3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mBallColor:I

    const/4 p3, 0x0

    .line 95
    iput p3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAngle:F

    .line 96
    iput p3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterX:F

    .line 97
    iput p3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterY:F

    .line 98
    iput p3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mRadius:F

    const/high16 p3, 0x42480000    # 50.0f

    .line 99
    iput p3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCircleMargin:F

    const/4 p3, 0x0

    .line 100
    iput-object p3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mOnValueChanged:Lcom/metamoji/ui/common/UiAngleSlider$IOnValueChanged;

    const/4 p3, -0x1

    .line 102
    iput p3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mFontSizePx:I

    .line 43
    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiAngleSlider;->init(Landroid/content/Context;)V

    .line 47
    sget-object p3, Lcom/metamoji/noteanytime/R$styleable;->UiAngleSlider:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    sget p2, Lcom/metamoji/noteanytime/R$styleable;->UiAngleSlider_circle_stroke_width:I

    iget p3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCircleStrokeWidth:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCircleStrokeWidth:F

    .line 53
    sget p2, Lcom/metamoji/noteanytime/R$styleable;->UiAngleSlider_axis_stroke_width:I

    iget p3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAxisStrokeWidth:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAxisStrokeWidth:F

    .line 56
    sget p2, Lcom/metamoji/noteanytime/R$styleable;->UiAngleSlider_axis_margin:I

    iget p3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAxisMargin:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAxisMargin:F

    .line 59
    sget p2, Lcom/metamoji/noteanytime/R$styleable;->UiAngleSlider_ball_radius:I

    iget p3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mBallRadius:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mBallRadius:F

    .line 62
    sget p2, Lcom/metamoji/noteanytime/R$styleable;->UiAngleSlider_font_size:I

    iget p3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mFontSize:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mFontSize:F

    .line 65
    sget p2, Lcom/metamoji/noteanytime/R$styleable;->UiAngleSlider_cirgle_margin_ratio:I

    iget p3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCircleMarginRatio:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCircleMarginRatio:F

    .line 68
    sget p2, Lcom/metamoji/noteanytime/R$styleable;->UiAngleSlider_line_color:I

    iget p3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mLineColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mLineColor:I

    .line 71
    sget p2, Lcom/metamoji/noteanytime/R$styleable;->UiAngleSlider_ball_color:I

    iget p3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mBallColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mBallColor:I

    .line 73
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 110
    iget v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mFontSizePx:I

    if-gez v0, :cond_0

    .line 111
    iget v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mFontSize:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mFontSizePx:I

    :cond_0
    return-void
.end method

.method private initDimmension(II)V
    .locals 3

    .line 174
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCircleStrokeWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAxisMargin:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mRadius:F

    if-ge p2, p1, :cond_0

    sub-float/2addr v0, v2

    .line 176
    iput v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mRadius:F

    .line 178
    :cond_0
    iget v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mRadius:F

    add-float/2addr v1, v0

    iget v2, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCircleMarginRatio:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCircleMargin:F

    sub-float/2addr v0, v1

    .line 179
    iput v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mRadius:F

    .line 180
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterX:F

    .line 181
    div-int/lit8 p2, p2, 0x2

    int-to-float p1, p2

    iput p1, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterY:F

    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    .line 167
    iget v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAngle:F

    return v0
.end method

.method public getAngleDegree()I
    .locals 4

    .line 139
    iget v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAngle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v2, 0x168

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 209
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiAngleSlider;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 210
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiAngleSlider;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 216
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiAngleSlider;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    float-to-int v0, v0

    float-to-int v1, v1

    .line 218
    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 219
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 223
    :cond_0
    new-instance v9, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {v9, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 224
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 225
    iget v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mLineColor:I

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCircleStrokeWidth:F

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 227
    iget v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterX:F

    iget v1, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterY:F

    iget v2, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mRadius:F

    invoke-virtual {p1, v0, v1, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 230
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 231
    iget v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAxisStrokeWidth:F

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 232
    iget v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterX:F

    iget v1, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mRadius:F

    sub-float v2, v0, v1

    iget v4, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAxisMargin:F

    sub-float v5, v2, v4

    iget v6, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterY:F

    add-float/2addr v0, v1

    add-float v7, v0, v4

    move v8, v6

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 233
    iget v5, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterX:F

    iget p1, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterY:F

    iget v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mRadius:F

    sub-float v1, p1, v0

    iget v2, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAxisMargin:F

    sub-float v6, v1, v2

    add-float/2addr p1, v0

    add-float v8, p1, v2

    move v7, v5

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 235
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiAngleSlider;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 237
    iget p1, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAngle:F

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    iget v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mRadius:F

    mul-float/2addr p1, v0

    .line 238
    iget v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAngle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mRadius:F

    mul-float/2addr v0, v1

    .line 239
    iget v1, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mBallColor:I

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 240
    iget v5, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterX:F

    iget v6, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterY:F

    add-float v7, v5, p1

    sub-float v8, v6, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 243
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 244
    iget v1, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterX:F

    add-float/2addr v1, p1

    iget p1, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterY:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mBallRadius:F

    invoke-virtual {v4, v1, p1, v0, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 247
    :cond_1
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 251
    :goto_0
    iget p1, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mLineColor:I

    invoke-virtual {v9, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    iget p1, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mFontSizePx:I

    int-to-float p1, p1

    invoke-virtual {v9, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 253
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v9, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 255
    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 258
    const-string v0, "0\u00b0"

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    .line 259
    iget v5, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterX:F

    iget v6, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mRadius:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAxisMargin:F

    add-float/2addr v5, v6

    add-float/2addr v5, v2

    iget v2, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterY:F

    iget v6, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v6, v7

    sub-float/2addr v2, v6

    invoke-virtual {v4, v0, v5, v2, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 261
    const-string v0, "180\u00b0"

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 262
    iget v5, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterX:F

    iget v6, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mRadius:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAxisMargin:F

    sub-float/2addr v5, v6

    sub-float/2addr v5, v2

    iget v2, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterY:F

    iget v6, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    div-float/2addr v6, v7

    sub-float/2addr v2, v6

    invoke-virtual {v4, v0, v5, v2, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 264
    const-string v0, "90\u00b0"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v9, v0, v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    .line 265
    iget v5, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterX:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    sub-float/2addr v5, v2

    iget v2, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterY:F

    iget v7, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mRadius:F

    sub-float/2addr v2, v7

    iget v7, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAxisMargin:F

    sub-float/2addr v2, v7

    iget v7, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v2, v7

    invoke-virtual {v4, v0, v5, v2, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 267
    const-string v0, "270\u00b0"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v9, v0, v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    .line 268
    iget v2, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterX:F

    div-float/2addr v1, v6

    sub-float/2addr v2, v1

    iget v1, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterY:F

    iget v3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mRadius:F

    add-float/2addr v1, v3

    iget v3, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAxisMargin:F

    add-float/2addr v1, v3

    iget v3, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v3

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v1, p1

    invoke-virtual {v4, v0, v2, v1, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 191
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 200
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 201
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiAngleSlider;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiAngleSlider;->getMeasuredHeight()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/common/UiAngleSlider;->initDimmension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiAngleSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 283
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterX:F

    sub-float/2addr v0, v2

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mCenterY:F

    sub-float/2addr p1, v2

    neg-float p1, p1

    mul-float v2, v0, v0

    mul-float v3, p1, p1

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 285
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    div-float/2addr v0, v2

    float-to-double v3, v0

    .line 287
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    double-to-float v0, v3

    div-float/2addr p1, v2

    float-to-double v2, p1

    .line 288
    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 289
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiAngleSlider;->isEnabled()Z

    move-result v2

    xor-int/2addr v2, v1

    .line 290
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/common/UiAngleSlider;->setEnabled(Z)V

    const/4 v3, 0x0

    cmpl-float p1, p1, v3

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    const p1, 0x40c90fdb

    sub-float v0, p1, v0

    .line 291
    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/metamoji/ui/common/UiAngleSlider;->setAngle(FZ)V

    :cond_3
    :goto_1
    return v1

    .line 300
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAngle(F)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/common/UiAngleSlider;->setAngle(FZ)V

    return-void
.end method

.method public setAngle(FZ)V
    .locals 1

    .line 150
    iget v0, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAngle:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 151
    :cond_0
    iput p1, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mAngle:F

    .line 152
    iget-object p1, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mOnValueChanged:Lcom/metamoji/ui/common/UiAngleSlider$IOnValueChanged;

    if-eqz p1, :cond_3

    .line 153
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiAngleSlider;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    :cond_1
    return-void

    .line 156
    :cond_2
    iget-object p1, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mOnValueChanged:Lcom/metamoji/ui/common/UiAngleSlider$IOnValueChanged;

    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiAngleSlider;->getAngleDegree()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/metamoji/ui/common/UiAngleSlider$IOnValueChanged;->onValueChanged(I)V

    .line 158
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiAngleSlider;->postInvalidate()V

    return-void
.end method

.method public setAngleDegree(I)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/common/UiAngleSlider;->setAngleDegree(IZ)V

    return-void
.end method

.method public setAngleDegree(IZ)V
    .locals 2

    .line 127
    rem-int/lit16 p1, p1, 0x168

    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x168

    :cond_0
    int-to-double v0, p1

    .line 131
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/common/UiAngleSlider;->setAngle(FZ)V

    return-void
.end method

.method public setOnValueChangedListener(Lcom/metamoji/ui/common/UiAngleSlider$IOnValueChanged;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/metamoji/ui/common/UiAngleSlider;->mOnValueChanged:Lcom/metamoji/ui/common/UiAngleSlider$IOnValueChanged;

    return-void
.end method
