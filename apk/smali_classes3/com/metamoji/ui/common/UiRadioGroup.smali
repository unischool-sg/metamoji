.class public Lcom/metamoji/ui/common/UiRadioGroup;
.super Landroid/widget/RadioGroup;
.source "UiRadioGroup.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private _outerCheckChangedListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mCheckedId:I

.field private mJustfyWidth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/common/UiRadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/metamoji/ui/common/UiRadioGroup;->_outerCheckChangedListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiRadioGroup;->mJustfyWidth:Z

    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcom/metamoji/ui/common/UiRadioGroup;->mCheckedId:I

    .line 54
    sget-object v1, Lcom/metamoji/noteanytime/R$styleable;->UiRadioGroup:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 57
    :try_start_0
    sget p2, Lcom/metamoji/noteanytime/R$styleable;->UiRadioGroup_justify_width_withlargestchild:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/metamoji/ui/common/UiRadioGroup;->mJustfyWidth:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    invoke-super {p0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void

    :catchall_0
    move-exception p2

    .line 59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    throw p2
.end method

.method private justifyWidthWithLargestChild()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    .line 219
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiRadioGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 220
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/common/UiRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 221
    instance-of v5, v4, Lcom/metamoji/ui/common/UiRadioButton;

    if-nez v5, :cond_0

    goto :goto_2

    .line 223
    :cond_0
    check-cast v4, Lcom/metamoji/ui/common/UiRadioButton;

    .line 224
    invoke-virtual {v4}, Lcom/metamoji/ui/common/UiRadioButton;->getRadioButtonWidth()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 226
    invoke-virtual {v4}, Lcom/metamoji/ui/common/UiRadioButton;->getDummyTitle()Ljava/lang/CharSequence;

    move-result-object v6

    .line 227
    invoke-virtual {v4}, Lcom/metamoji/ui/common/UiRadioButton;->getMainTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v6, :cond_1

    .line 230
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, v4

    :goto_1
    move v3, v5

    move-object v1, v6

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_7

    move v2, v0

    .line 238
    :goto_3
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiRadioGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 239
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 240
    instance-of v5, v4, Lcom/metamoji/ui/common/UiRadioButton;

    if-nez v5, :cond_4

    goto :goto_4

    .line 242
    :cond_4
    check-cast v4, Lcom/metamoji/ui/common/UiRadioButton;

    .line 243
    invoke-virtual {v4}, Lcom/metamoji/ui/common/UiRadioButton;->getRadioButtonWidth()I

    move-result v5

    if-le v3, v5, :cond_5

    .line 245
    invoke-virtual {v4, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setDummyTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    .line 250
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/common/UiRadioGroup$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/common/UiRadioGroup$1;-><init>(Lcom/metamoji/ui/common/UiRadioGroup;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method


# virtual methods
.method public getButtonIndex(I)I
    .locals 3

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 187
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiRadioGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 188
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/common/UiRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 189
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getCurrentButton()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/metamoji/ui/common/UiRadioGroup;->mCheckedId:I

    return v0
.end method

.method public getCurrentButtonIndex()I
    .locals 4

    .line 167
    iget v0, p0, Lcom/metamoji/ui/common/UiRadioGroup;->mCheckedId:I

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 170
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiRadioGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 171
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 172
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    iget v3, p0, Lcom/metamoji/ui/common/UiRadioGroup;->mCheckedId:I

    if-ne v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isEnabled()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 91
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiRadioGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 92
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/common/UiRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 93
    instance-of v3, v2, Lcom/metamoji/ui/common/UiRadioButton;

    if-eqz v3, :cond_0

    .line 94
    check-cast v2, Lcom/metamoji/ui/common/UiRadioButton;

    .line 95
    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiRadioButton;->isEnabled()Z

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5

    .line 107
    iget v0, p0, Lcom/metamoji/ui/common/UiRadioGroup;->mCheckedId:I

    if-ne v0, p2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 112
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiRadioGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 113
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/common/UiRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 114
    instance-of v3, v2, Lcom/metamoji/ui/common/UiRadioButton;

    if-eqz v3, :cond_2

    .line 115
    move-object v3, v2

    check-cast v3, Lcom/metamoji/ui/common/UiRadioButton;

    .line 116
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, p2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    invoke-virtual {v3, v4}, Lcom/metamoji/ui/common/UiRadioButton;->setChecked(Z)V

    .line 117
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p2, :cond_2

    .line 118
    iput p2, p0, Lcom/metamoji/ui/common/UiRadioGroup;->mCheckedId:I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioGroup;->_outerCheckChangedListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_4

    .line 123
    invoke-interface {v0, p1, p2}, Landroid/widget/RadioGroup$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 198
    invoke-super {p0, p1, p2}, Landroid/widget/RadioGroup;->onMeasure(II)V

    .line 200
    iget-boolean p1, p0, Lcom/metamoji/ui/common/UiRadioGroup;->mJustfyWidth:Z

    if-eqz p1, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/metamoji/ui/common/UiRadioGroup;->justifyWidthWithLargestChild()V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x0

    .line 285
    invoke-super {p0, v0}, Landroid/widget/RadioGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 286
    check-cast p1, Lcom/metamoji/ui/common/UiIntParcelable;

    .line 287
    iget p1, p1, Lcom/metamoji/ui/common/UiIntParcelable;->value:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiRadioGroup;->check(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 275
    invoke-super {p0}, Landroid/widget/RadioGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 276
    new-instance v0, Lcom/metamoji/ui/common/UiIntParcelable;

    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiRadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/metamoji/ui/common/UiIntParcelable;-><init>(I)V

    return-object v0
.end method

.method public setCurrentButton(I)V
    .locals 2

    .line 132
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiRadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 133
    instance-of v1, v0, Lcom/metamoji/ui/common/UiRadioButton;

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiRadioGroup;->check(I)V

    .line 135
    iput p1, p0, Lcom/metamoji/ui/common/UiRadioGroup;->mCheckedId:I

    .line 136
    check-cast v0, Lcom/metamoji/ui/common/UiRadioButton;

    const/4 p1, 0x1

    .line 137
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiRadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setCurrentButtonIndex(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiRadioGroup;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiRadioGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 81
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 82
    instance-of v2, v1, Lcom/metamoji/ui/common/UiRadioButton;

    if-eqz v2, :cond_0

    .line 83
    check-cast v1, Lcom/metamoji/ui/common/UiRadioButton;

    .line 84
    invoke-virtual {v1, p1}, Lcom/metamoji/ui/common/UiRadioButton;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setJustifyWidthWithLargestChild(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiRadioGroup;->mJustfyWidth:Z

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/metamoji/ui/common/UiRadioGroup;->_outerCheckChangedListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method public setOnClickListener(Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;)V
    .locals 3

    const/4 v0, 0x0

    .line 37
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiRadioGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 38
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 39
    instance-of v2, v1, Lcom/metamoji/ui/common/UiRadioButton;

    if-eqz v2, :cond_0

    .line 40
    check-cast v1, Lcom/metamoji/ui/common/UiRadioButton;

    .line 41
    invoke-virtual {v1, p1}, Lcom/metamoji/ui/common/UiRadioButton;->setOnClickListener(Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
