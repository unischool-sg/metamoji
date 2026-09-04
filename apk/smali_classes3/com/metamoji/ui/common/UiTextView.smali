.class public Lcom/metamoji/ui/common/UiTextView;
.super Landroid/widget/TextView;
.source "UiTextView.java"


# instance fields
.field private MIN_TEXT_SIZE:F

.field _extmode:Z

.field private mDisabledColor:I

.field private mEnabled:Z

.field private mEnabledColor:I

.field private mResize:Z

.field private mTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/common/UiTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiTextView;->mResize:Z

    .line 25
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiTextView;->mEnabled:Z

    const/high16 v1, -0x1000000

    .line 26
    iput v1, p0, Lcom/metamoji/ui/common/UiTextView;->mEnabledColor:I

    const v2, -0x333334

    .line 27
    iput v2, p0, Lcom/metamoji/ui/common/UiTextView;->mDisabledColor:I

    const/4 v3, 0x0

    .line 28
    iput v3, p0, Lcom/metamoji/ui/common/UiTextView;->mTextSize:F

    const/high16 v4, 0x41400000    # 12.0f

    .line 31
    iput v4, p0, Lcom/metamoji/ui/common/UiTextView;->MIN_TEXT_SIZE:F

    const/4 v5, 0x0

    .line 148
    iput-boolean v5, p0, Lcom/metamoji/ui/common/UiTextView;->_extmode:Z

    .line 39
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 41
    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v5, v5

    const/high16 v6, 0x43a00000    # 320.0f

    div-float/2addr v5, v6

    mul-float/2addr v5, v4

    .line 44
    iput v5, p0, Lcom/metamoji/ui/common/UiTextView;->MIN_TEXT_SIZE:F

    .line 46
    sget-object v4, Lcom/metamoji/noteanytime/R$styleable;->UiTextView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 51
    :try_start_0
    sget p2, Lcom/metamoji/noteanytime/R$styleable;->UiTextView_android_textColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    .line 53
    sget v1, Lcom/metamoji/noteanytime/R$styleable;->UiTextView_enabled_color:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/common/UiTextView;->mEnabledColor:I

    .line 55
    sget p2, Lcom/metamoji/noteanytime/R$styleable;->UiTextView_disabled_color:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/common/UiTextView;->mDisabledColor:I

    .line 57
    sget p2, Lcom/metamoji/noteanytime/R$styleable;->UiTextView_android_enabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/common/UiTextView;->setEnabled(Z)V

    .line 63
    iput v3, p0, Lcom/metamoji/ui/common/UiTextView;->mTextSize:F

    return-void

    :catchall_0
    move-exception p2

    .line 59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    throw p2
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/metamoji/ui/common/UiTextView;->mEnabled:Z

    return v0
.end method

.method public measureText()F
    .locals 3

    .line 193
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 194
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 197
    iget v1, p0, Lcom/metamoji/ui/common/UiTextView;->mTextSize:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiTextView;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/common/UiTextView;->mTextSize:F

    .line 200
    :cond_0
    iget v1, p0, Lcom/metamoji/ui/common/UiTextView;->mTextSize:F

    .line 202
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 204
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 69
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 71
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiTextView;->resize()V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 79
    iget p1, p0, Lcom/metamoji/ui/common/UiTextView;->mTextSize:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 81
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/ui/common/UiTextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public resize()V
    .locals 5

    .line 93
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 94
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 97
    iget v1, p0, Lcom/metamoji/ui/common/UiTextView;->mTextSize:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiTextView;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/common/UiTextView;->mTextSize:F

    .line 100
    :cond_0
    iget v1, p0, Lcom/metamoji/ui/common/UiTextView;->mTextSize:F

    .line 102
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiTextView;->getWidth()I

    move-result v2

    .line 105
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 107
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 116
    iget-boolean v4, p0, Lcom/metamoji/ui/common/UiTextView;->mResize:Z

    if-eqz v4, :cond_3

    :goto_0
    int-to-float v4, v2

    cmpg-float v3, v4, v3

    if-gez v3, :cond_2

    .line 120
    iget v3, p0, Lcom/metamoji/ui/common/UiTextView;->MIN_TEXT_SIZE:F

    cmpl-float v4, v3, v1

    if-ltz v4, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    .line 130
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 132
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setTextSize(IF)V

    :cond_3
    return-void
.end method

.method public setDisabledColor(I)V
    .locals 0

    .line 178
    iput p1, p0, Lcom/metamoji/ui/common/UiTextView;->mDisabledColor:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/metamoji/ui/common/UiTextView;->_extmode:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 156
    iget v0, p0, Lcom/metamoji/ui/common/UiTextView;->mEnabledColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/metamoji/ui/common/UiTextView;->mDisabledColor:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiTextView;->setTextColor(I)V

    .line 158
    :cond_1
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiTextView;->mEnabled:Z

    return-void
.end method

.method public setEnabledColor(I)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/metamoji/ui/common/UiTextView;->mEnabledColor:I

    return-void
.end method

.method public setResizable(Z)V
    .locals 0

    .line 182
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiTextView;->mResize:Z

    return-void
.end method

.method public setTextColorStateList(I)V
    .locals 1

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiTextView;->_extmode:Z

    .line 164
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 166
    invoke-static {v0, p1}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiTextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
