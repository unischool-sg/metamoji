.class public Lcom/metamoji/ui/common/UiSwitch;
.super Landroid/widget/CompoundButton;
.source "UiSwitch.java"


# static fields
.field static BaseImageWidth_dp:I = 0x73

.field static SwitchWidth_dp:I = 0x35

.field static TextAreaWidth_dp:I = 0x2a

.field static TextMargin_dp:I = 0x6

.field static TextSize_dp:I = 0x12

.field static textHight_dp:I = 0x20


# instance fields
.field private _context:Landroid/content/Context;

.field _density:F

.field _height:I

.field _scale:F

.field _textHeight:F

.field _width:I

.field private mTextOn:Lcom/metamoji/ui/common/UiTextView;

.field mTextPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/metamoji/ui/common/UiSwitch;->mTextOn:Lcom/metamoji/ui/common/UiTextView;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 33
    iput v0, p0, Lcom/metamoji/ui/common/UiSwitch;->_scale:F

    .line 54
    iput-object p1, p0, Lcom/metamoji/ui/common/UiSwitch;->_context:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/metamoji/ui/common/UiSwitch;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 31
    iput-object p2, p0, Lcom/metamoji/ui/common/UiSwitch;->mTextOn:Lcom/metamoji/ui/common/UiTextView;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 33
    iput p2, p0, Lcom/metamoji/ui/common/UiSwitch;->_scale:F

    .line 48
    iput-object p1, p0, Lcom/metamoji/ui/common/UiSwitch;->_context:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/metamoji/ui/common/UiSwitch;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 31
    iput-object p2, p0, Lcom/metamoji/ui/common/UiSwitch;->mTextOn:Lcom/metamoji/ui/common/UiTextView;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 33
    iput p2, p0, Lcom/metamoji/ui/common/UiSwitch;->_scale:F

    .line 40
    iput-object p1, p0, Lcom/metamoji/ui/common/UiSwitch;->_context:Landroid/content/Context;

    return-void
.end method

.method private conv(F)I
    .locals 1

    .line 204
    iget v0, p0, Lcom/metamoji/ui/common/UiSwitch;->_scale:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiSwitch;->setClickable(Z)V

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiSwitch;->setFocusable(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Lcom/metamoji/ui/common/UiSwitch;->_density:F

    .line 66
    sget v0, Lcom/metamoji/ui/common/UiSwitch;->textHight_dp:I

    iput v0, p0, Lcom/metamoji/ui/common/UiSwitch;->_height:I

    .line 67
    sget v0, Lcom/metamoji/ui/common/UiSwitch;->BaseImageWidth_dp:I

    iput v0, p0, Lcom/metamoji/ui/common/UiSwitch;->_width:I

    .line 68
    invoke-direct {p0}, Lcom/metamoji/ui/common/UiSwitch;->setEtc()V

    return-void
.end method

.method private makeDesImage(IIIZLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .line 161
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 163
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 165
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 168
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->ui_switch_base_off:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 170
    sget v5, Lcom/metamoji/noteanytime/R$drawable;->ui_switch_back:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x0

    .line 172
    invoke-virtual {v3, v5, v5, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 173
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p4, :cond_0

    sub-int v3, p1, p3

    .line 176
    invoke-virtual {v4, v3, v5, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {v4, v5, v5, p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 180
    :goto_0
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 183
    sget p2, Lcom/metamoji/ui/common/UiSwitch;->TextSize_dp:I

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcom/metamoji/ui/common/UiSwitch;->conv(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 184
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const p2, -0x333334

    .line 185
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    invoke-virtual {v2, p5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    int-to-float v3, p3

    sub-float/2addr v3, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v3, p2

    if-eqz p4, :cond_1

    sub-int/2addr p1, p3

    int-to-float p1, p1

    add-float/2addr v3, p1

    .line 192
    :cond_1
    sget p1, Lcom/metamoji/ui/common/UiSwitch;->textHight_dp:I

    sget p2, Lcom/metamoji/ui/common/UiSwitch;->TextSize_dp:I

    sub-int p2, p1, p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiSwitch;->conv(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p5, v3, p1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private makeImage(IIIZLjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 6

    .line 123
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 125
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 127
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p4, :cond_0

    .line 130
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->ui_switch_base_on:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 132
    :cond_0
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->ui_switch_base_off:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 134
    :goto_0
    sget v5, Lcom/metamoji/noteanytime/R$drawable;->ui_switch_back:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x0

    .line 136
    invoke-virtual {v3, v5, v5, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 137
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p4, :cond_1

    sub-int v3, p1, p3

    .line 140
    invoke-virtual {v4, v3, v5, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 142
    :cond_1
    invoke-virtual {v4, v5, v5, p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 144
    :goto_1
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 147
    sget p2, Lcom/metamoji/ui/common/UiSwitch;->TextSize_dp:I

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcom/metamoji/ui/common/UiSwitch;->conv(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 148
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 149
    invoke-virtual {v2, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    invoke-virtual {v2, p5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    int-to-float p6, p3

    sub-float/2addr p6, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p6, p2

    if-eqz p4, :cond_2

    sub-int/2addr p1, p3

    int-to-float p1, p1

    add-float/2addr p6, p1

    .line 156
    :cond_2
    sget p1, Lcom/metamoji/ui/common/UiSwitch;->textHight_dp:I

    sget p2, Lcom/metamoji/ui/common/UiSwitch;->TextSize_dp:I

    sub-int p2, p1, p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiSwitch;->conv(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p5, p6, p1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private setEtc()V
    .locals 12

    .line 75
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 77
    new-instance v1, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/metamoji/ui/common/UiSwitch;->mTextPaint:Landroid/text/TextPaint;

    .line 78
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, v1, Landroid/text/TextPaint;->density:F

    .line 79
    iget-object v1, p0, Lcom/metamoji/ui/common/UiSwitch;->mTextPaint:Landroid/text/TextPaint;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/metamoji/ui/common/UiSwitch;->_textHeight:F

    .line 80
    iget v3, p0, Lcom/metamoji/ui/common/UiSwitch;->_density:F

    mul-float/2addr v1, v3

    sget v3, Lcom/metamoji/ui/common/UiSwitch;->TextSize_dp:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/metamoji/ui/common/UiSwitch;->_scale:F

    .line 82
    sget v1, Lcom/metamoji/noteanytime/R$string;->CustomControl_Switch_On:I

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 83
    sget v1, Lcom/metamoji/noteanytime/R$string;->CustomControl_Switch_Off:I

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 86
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 87
    sget v2, Lcom/metamoji/ui/common/UiSwitch;->TextSize_dp:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v2, -0x1

    .line 88
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 91
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 92
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 94
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/metamoji/ui/common/UiSwitch;->TextAreaWidth_dp:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 95
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 97
    sget v3, Lcom/metamoji/ui/common/UiSwitch;->TextMargin_dp:I

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/metamoji/ui/common/UiSwitch;->conv(F)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 98
    sget v3, Lcom/metamoji/ui/common/UiSwitch;->TextMargin_dp:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/metamoji/ui/common/UiSwitch;->conv(F)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 99
    iget v3, p0, Lcom/metamoji/ui/common/UiSwitch;->_height:I

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/metamoji/ui/common/UiSwitch;->conv(F)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 100
    sget v3, Lcom/metamoji/ui/common/UiSwitch;->TextMargin_dp:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    int-to-double v3, v3

    const-wide v9, 0x3ffccccccccccccdL    # 1.8

    mul-double/2addr v3, v9

    double-to-int v3, v3

    iput v3, p0, Lcom/metamoji/ui/common/UiSwitch;->_width:I

    int-to-float v3, v3

    .line 101
    invoke-direct {p0, v3}, Lcom/metamoji/ui/common/UiSwitch;->conv(F)I

    move-result v3

    .line 102
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 103
    sget v4, Lcom/metamoji/ui/common/UiSwitch;->TextMargin_dp:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    int-to-float v1, v4

    invoke-direct {p0, v1}, Lcom/metamoji/ui/common/UiSwitch;->conv(F)I

    move-result v1

    .line 105
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v4, 0x1

    const/4 v6, -0x1

    move v0, v3

    move v3, v1

    move v1, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/ui/common/UiSwitch;->makeImage(IIIZLjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v10, v5

    invoke-direct {v9, v7, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 106
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v4, 0x0

    const v6, -0x777778

    move-object v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/ui/common/UiSwitch;->makeImage(IIIZLjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v6, v5

    invoke-direct {v11, v7, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 107
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v4, 0x1

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/common/UiSwitch;->makeDesImage(IIIZLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v8, v7, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 108
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v4, 0x0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/common/UiSwitch;->makeDesImage(IIIZLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v10, v7, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 110
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v2, 0x101009e

    const v3, -0x10100a0

    const v4, -0x10100a1

    .line 111
    filled-new-array {v2, v3, v4}, [I

    move-result-object v5

    invoke-virtual {v1, v5, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v5, 0x10100a0

    .line 112
    filled-new-array {v2, v5, v4}, [I

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v2, -0x101009e

    .line 113
    filled-new-array {v2, v3, v4}, [I

    move-result-object v3

    invoke-virtual {v1, v3, v10}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 114
    filled-new-array {v2, v5, v4}, [I

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 116
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/common/UiSwitch;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 200
    iget p1, p0, Lcom/metamoji/ui/common/UiSwitch;->_width:I

    int-to-float p1, p1

    iget p2, p0, Lcom/metamoji/ui/common/UiSwitch;->_scale:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iget v0, p0, Lcom/metamoji/ui/common/UiSwitch;->_height:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/common/UiSwitch;->setMeasuredDimension(II)V

    return-void
.end method
