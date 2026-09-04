.class public Lcom/metamoji/ui/dialog/TextSize;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "TextSize.java"

# interfaces
.implements Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/TextSize$Params;
    }
.end annotation


# instance fields
.field private _params:Lcom/metamoji/ui/dialog/TextSize$Params;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;ZF)V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 69
    new-instance v0, Lcom/metamoji/ui/dialog/TextSize$Params;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/TextSize$Params;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TextSize;->_params:Lcom/metamoji/ui/dialog/TextSize$Params;

    if-nez p1, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_0
    iput p1, v0, Lcom/metamoji/ui/dialog/TextSize$Params;->textSize:F

    .line 71
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextSize;->_params:Lcom/metamoji/ui/dialog/TextSize$Params;

    iput-boolean p2, p1, Lcom/metamoji/ui/dialog/TextSize$Params;->toDefault:Z

    .line 72
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextSize;->_params:Lcom/metamoji/ui/dialog/TextSize$Params;

    iput p3, p1, Lcom/metamoji/ui/dialog/TextSize$Params;->defFontSize:F

    return-void
.end method

.method private presetSizeClicked(I)V
    .locals 0

    int-to-float p1, p1

    .line 205
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextSize;->setTextSize(F)V

    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 125
    const-string v0, "TextSizeDialogParams"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/TextSize$Params;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextSize;->_params:Lcom/metamoji/ui/dialog/TextSize$Params;

    return-void
.end method

.method private setTextSize(F)V
    .locals 2

    .line 185
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextSize;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 186
    sget v1, Lcom/metamoji/noteanytime/R$id;->textSize:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiPlainSlider;

    .line 187
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 188
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentPos(I)V

    .line 189
    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiPlainSlider;->setNoValue()V

    return-void

    .line 192
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue2(I)V

    return-void
.end method

.method private setToDefault(Z)V
    .locals 2

    .line 164
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextSize;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 165
    sget v1, Lcom/metamoji/noteanytime/R$id;->toDefault:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    .line 166
    iget-object v1, p0, Lcom/metamoji/ui/dialog/TextSize;->_params:Lcom/metamoji/ui/dialog/TextSize$Params;

    iget-boolean v1, v1, Lcom/metamoji/ui/dialog/TextSize$Params;->toDefault:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setSelected(Z)V

    .line 168
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextSize;->toDefaultChanged(Z)V

    return-void
.end method

.method private textSizeChanged(F)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextSize;->_params:Lcom/metamoji/ui/dialog/TextSize$Params;

    iput p1, v0, Lcom/metamoji/ui/dialog/TextSize$Params;->textSize:F

    .line 197
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextSize;->_params:Lcom/metamoji/ui/dialog/TextSize$Params;

    iget v0, v0, Lcom/metamoji/ui/dialog/TextSize$Params;->defFontSize:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextSize;->_params:Lcom/metamoji/ui/dialog/TextSize$Params;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/TextSize$Params;->toDefault:Z

    if-eq p1, v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextSize;->_params:Lcom/metamoji/ui/dialog/TextSize$Params;

    iput-boolean p1, v0, Lcom/metamoji/ui/dialog/TextSize$Params;->toDefault:Z

    .line 200
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextSize;->setToDefault(Z)V

    :cond_1
    return-void
.end method

.method private toDefaultChanged(Z)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextSize;->_params:Lcom/metamoji/ui/dialog/TextSize$Params;

    iput-boolean p1, v0, Lcom/metamoji/ui/dialog/TextSize$Params;->toDefault:Z

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextSize;->_params:Lcom/metamoji/ui/dialog/TextSize$Params;

    iget p1, p1, Lcom/metamoji/ui/dialog/TextSize$Params;->defFontSize:F

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextSize;->setTextSize(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getTextSize()F
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextSize;->_params:Lcom/metamoji/ui/dialog/TextSize$Params;

    iget v0, v0, Lcom/metamoji/ui/dialog/TextSize$Params;->textSize:F

    return v0
.end method

.method public isToDefault()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextSize;->_params:Lcom/metamoji/ui/dialog/TextSize$Params;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/TextSize$Params;->toDefault:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->toDefault:I

    if-ne v0, v1, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextSize;->toDefaultChanged(Z)V

    return-void

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->preSize1:I

    if-ne v0, v1, :cond_1

    const/16 p1, 0xc

    .line 148
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextSize;->presetSizeClicked(I)V

    return-void

    .line 149
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->preSize2:I

    if-ne v0, v1, :cond_2

    const/16 p1, 0x10

    .line 150
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextSize;->presetSizeClicked(I)V

    return-void

    .line 151
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->preSize3:I

    if-ne v0, v1, :cond_3

    const/16 p1, 0x18

    .line 152
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextSize;->presetSizeClicked(I)V

    return-void

    .line 153
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->preSize4:I

    if-ne v0, v1, :cond_4

    const/16 p1, 0x20

    .line 154
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextSize;->presetSizeClicked(I)V

    return-void

    .line 155
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/metamoji/noteanytime/R$id;->preSize5:I

    if-ne p1, v0, :cond_5

    const/16 p1, 0x38

    .line 156
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextSize;->presetSizeClicked(I)V

    :cond_5
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    if-eqz p3, :cond_0

    .line 79
    invoke-direct {p0, p3}, Lcom/metamoji/ui/dialog/TextSize;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 81
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_textsize:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TextSize;->mViewId:I

    .line 82
    sget v0, Lcom/metamoji/noteanytime/R$string;->CharDecoration_TextSize:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TextSize;->mTitleId:I

    .line 88
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextSize;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 94
    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->toDefault:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    .line 95
    sget p3, Lcom/metamoji/noteanytime/R$string;->CharDecoration_ToDefault:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextSize;->_params:Lcom/metamoji/ui/dialog/TextSize$Params;

    iget v0, v0, Lcom/metamoji/ui/dialog/TextSize$Params;->defFontSize:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {p3, v0}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "%s(%.0fP)"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p2, p0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    sget p2, Lcom/metamoji/noteanytime/R$id;->textSize:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiPlainSlider;

    const/4 p3, 0x5

    .line 99
    new-array v0, p3, [Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    new-instance v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v4, 0xfa

    const/16 v5, 0x8

    invoke-direct {v1, v4, v5}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v4, 0x1f4

    const/16 v5, 0x18

    invoke-direct {v1, v4, v5}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v4, 0x2ee

    const/16 v5, 0x30

    invoke-direct {v1, v4, v5}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v4, 0x3e8

    const/16 v5, 0x60

    invoke-direct {v1, v4, v5}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v1, v0, v3

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->setTickList([Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;)V

    .line 105
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextSize;->_params:Lcom/metamoji/ui/dialog/TextSize$Params;

    iget v0, v0, Lcom/metamoji/ui/dialog/TextSize$Params;->defFontSize:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->setDefaultValue(I)V

    .line 106
    invoke-virtual {p2, p0}, Lcom/metamoji/ui/common/UiPlainSlider;->setValueChangedListener(Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;)V

    .line 108
    sget p2, Lcom/metamoji/noteanytime/R$id;->preSize1:I

    sget v0, Lcom/metamoji/noteanytime/R$id;->preSize2:I

    sget v1, Lcom/metamoji/noteanytime/R$id;->preSize3:I

    sget v3, Lcom/metamoji/noteanytime/R$id;->preSize4:I

    sget v4, Lcom/metamoji/noteanytime/R$id;->preSize5:I

    filled-new-array {p2, v0, v1, v3, v4}, [I

    move-result-object p2

    :goto_0
    if-ge v2, p3, :cond_2

    .line 109
    aget v0, p2, v2

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    .line 111
    invoke-virtual {v0, p0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 119
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 120
    const-string v0, "TextSizeDialogParams"

    iget-object v1, p0, Lcom/metamoji/ui/dialog/TextSize;->_params:Lcom/metamoji/ui/dialog/TextSize$Params;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 121
    sget-object v0, Lcom/metamoji/ui/dialog/TextSize;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextSize;->_params:Lcom/metamoji/ui/dialog/TextSize$Params;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/TextSize$Params;->toDefault:Z

    invoke-direct {p0, v0}, Lcom/metamoji/ui/dialog/TextSize;->setToDefault(Z)V

    .line 133
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextSize;->_params:Lcom/metamoji/ui/dialog/TextSize$Params;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/TextSize$Params;->toDefault:Z

    iget-object v1, p0, Lcom/metamoji/ui/dialog/TextSize;->_params:Lcom/metamoji/ui/dialog/TextSize$Params;

    if-eqz v0, :cond_0

    iget v0, v1, Lcom/metamoji/ui/dialog/TextSize$Params;->defFontSize:F

    goto :goto_0

    :cond_0
    iget v0, v1, Lcom/metamoji/ui/dialog/TextSize$Params;->textSize:F

    :goto_0
    invoke-direct {p0, v0}, Lcom/metamoji/ui/dialog/TextSize;->setTextSize(F)V

    .line 135
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onStart()V

    return-void
.end method

.method public onValueChanged(IIZ)V
    .locals 0

    int-to-float p1, p2

    .line 140
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextSize;->textSizeChanged(F)V

    return-void
.end method
