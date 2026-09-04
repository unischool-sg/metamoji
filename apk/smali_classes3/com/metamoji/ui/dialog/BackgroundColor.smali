.class public Lcom/metamoji/ui/dialog/BackgroundColor;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "BackgroundColor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;
.implements Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/BackgroundColor$Params;
    }
.end annotation


# instance fields
.field private _params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

.field bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

.field mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 63
    new-instance v0, Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/BackgroundColor$Params;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;I)V
    .locals 4

    .line 76
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 63
    new-instance v0, Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/BackgroundColor$Params;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    .line 77
    iput p2, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->mTitleId:I

    const/16 p2, 0x64

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/metamoji/ui/dialog/BackgroundColor;->isColorNone(I)Z

    move-result v1

    .line 86
    iget-object v2, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    const/16 v3, 0xff

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 81
    iput-boolean p1, v2, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->isNoneChecked:Z

    .line 82
    iget-object p1, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->colorRGB:Ljava/lang/Integer;

    .line 83
    iget-object p1, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    iput p2, p1, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->opacity:I

    return-void

    .line 86
    :cond_0
    iput-boolean v0, v2, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->isNoneChecked:Z

    .line 87
    iget-object p2, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Lcom/metamoji/cm/ColorUtils;->colorWithAlpha(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p2, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->colorRGB:Ljava/lang/Integer;

    .line 88
    iget-object p2, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p2, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->opacity:I

    return-void

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    iput-boolean v0, p1, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->isNoneChecked:Z

    .line 94
    iget-object p1, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->colorRGB:Ljava/lang/Integer;

    .line 95
    iget-object p1, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    iput p2, p1, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->opacity:I

    return-void
.end method

.method private colorChanged(I)V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->colorRGB:Ljava/lang/Integer;

    .line 290
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/BackgroundColor;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 291
    sget v1, Lcom/metamoji/noteanytime/R$id;->opacity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiPlainSlider;

    const/16 v1, 0x19

    .line 292
    invoke-static {p1, v1}, Lcom/metamoji/cm/ColorUtils;->colorWithAlpha(II)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->setSliderColor(II)V

    return-void
.end method

.method public static isColorNone(I)Z
    .locals 4

    .line 200
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isNoneCheckedChanged(Z)V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    iput-boolean p1, v0, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->isNoneChecked:Z

    .line 218
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/BackgroundColor;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 219
    sget v1, Lcom/metamoji/noteanytime/R$id;->colorPalette:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiColorSelectionView2;

    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedGroup()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItem(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->colorRGB:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 226
    iget-object p1, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->colorRGB:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(IZ)Z

    :cond_1
    return-void
.end method

.method private opacityChanged(I)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    iput p1, v0, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->opacity:I

    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 150
    const-string v0, "BackgroundColorDialogParams"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    return-void
.end method

.method private setColor(Ljava/lang/Integer;I)V
    .locals 5

    .line 250
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/BackgroundColor;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 253
    sget v1, Lcom/metamoji/noteanytime/R$id;->colorPalette:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiColorSelectionView2;

    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(I)Z

    .line 258
    iget-object v2, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    iget-boolean v2, v2, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->isNoneChecked:Z

    if-eqz v2, :cond_0

    .line 260
    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedGroup()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItem(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 267
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedGroup()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/nt/NtInkManager;->getGroupNameNumber(Ljava/lang/String;)I

    move-result v1

    .line 269
    iget-object v2, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    .line 273
    sget v1, Lcom/metamoji/noteanytime/R$id;->bottle0:I

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    goto :goto_0

    .line 269
    :cond_1
    sget v1, Lcom/metamoji/noteanytime/R$id;->bottle1:I

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    :goto_0
    if-eqz p1, :cond_2

    .line 277
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/BackgroundColor;->colorChanged(I)V

    .line 281
    :cond_2
    sget p1, Lcom/metamoji/noteanytime/R$id;->opacity:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiPlainSlider;

    .line 282
    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue(I)V

    return-void
.end method

.method private setNoneChecked(Z)V
    .locals 2

    .line 208
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/BackgroundColor;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 209
    sget v1, Lcom/metamoji/noteanytime/R$id;->transparent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    .line 210
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton;->setSelected(Z)V

    .line 212
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/BackgroundColor;->isNoneCheckedChanged(Z)V

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/Integer;
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->isNoneChecked:Z

    const/16 v1, 0xff

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 240
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->colorRGB:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    iget v0, v0, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->opacity:I

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 243
    iget-object v1, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->colorRGB:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, v0}, Lcom/metamoji/cm/ColorUtils;->colorWithAlpha(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNoneChecked()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->isNoneChecked:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->transparent:I

    if-ne v0, v1, :cond_0

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/BackgroundColor;->isNoneCheckedChanged(Z)V

    :cond_0
    return-void
.end method

.method public onColorSelected(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 172
    invoke-direct {p0, p4}, Lcom/metamoji/ui/dialog/BackgroundColor;->colorChanged(I)V

    const/4 p1, 0x0

    .line 173
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/BackgroundColor;->setNoneChecked(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    if-eqz p3, :cond_0

    .line 103
    invoke-direct {p0, p3}, Lcom/metamoji/ui/dialog/BackgroundColor;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 105
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_backgroundcolor:I

    iput v0, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->mViewId:I

    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 113
    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->transparent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    .line 114
    invoke-virtual {p2, p0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    sget p2, Lcom/metamoji/noteanytime/R$id;->colorPalette:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiColorSelectionView2;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    .line 122
    new-instance p2, Lcom/metamoji/ui/common/UiRadioContoller;

    sget p3, Lcom/metamoji/noteanytime/R$id;->bottle0:I

    sget v0, Lcom/metamoji/noteanytime/R$id;->bottle1:I

    filled-new-array {p3, v0}, [I

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/metamoji/ui/common/UiRadioContoller;-><init>(Landroid/view/View;[I)V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    .line 123
    iget-object p2, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    sget p3, Lcom/metamoji/noteanytime/R$id;->paletteLeftButton:I

    .line 124
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    sget v0, Lcom/metamoji/noteanytime/R$id;->paletteRightButton:I

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    .line 123
    invoke-virtual {p2, p3, v0, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setUIParts(Landroid/view/View;Landroid/view/View;Lcom/metamoji/ui/common/UiRadioContoller;)V

    .line 127
    iget-object p2, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {p2, p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setSelectionChangedListener(Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;)V

    .line 130
    sget p2, Lcom/metamoji/noteanytime/R$id;->opacity:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiPlainSlider;

    const/4 p3, 0x5

    .line 131
    new-array p3, p3, [Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    new-instance v0, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v0, p3, v2

    new-instance v0, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v1, 0xfa

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v1, 0x1

    aput-object v0, p3, v1

    new-instance v0, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v1, 0x1f4

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v1, 0x2

    aput-object v0, p3, v1

    new-instance v0, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v1, 0x2ee

    const/16 v2, 0x4b

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v1, 0x3

    aput-object v0, p3, v1

    new-instance v0, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v1, 0x3e8

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v1, 0x4

    aput-object v0, p3, v1

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiPlainSlider;->setTickList([Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;)V

    .line 138
    invoke-virtual {p2, p0}, Lcom/metamoji/ui/common/UiPlainSlider;->setValueChangedListener(Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;)V

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v0}, Lcom/metamoji/nt/NtInkManager;->saveColorHistoryBackground(Lcom/metamoji/ui/common/UiColorSelectionView2;)V

    .line 195
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onGradationColorSelected(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 179
    invoke-direct {p0, p4}, Lcom/metamoji/ui/dialog/BackgroundColor;->colorChanged(I)V

    const/4 p1, 0x0

    .line 180
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/BackgroundColor;->setNoneChecked(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 145
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 146
    const-string v0, "BackgroundColorDialogParams"

    iget-object v1, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->isNoneChecked:Z

    invoke-direct {p0, v0}, Lcom/metamoji/ui/dialog/BackgroundColor;->setNoneChecked(Z)V

    .line 158
    iget-object v0, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->colorRGB:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/BackgroundColor;->_params:Lcom/metamoji/ui/dialog/BackgroundColor$Params;

    iget v1, v1, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->opacity:I

    invoke-direct {p0, v0, v1}, Lcom/metamoji/ui/dialog/BackgroundColor;->setColor(Ljava/lang/Integer;I)V

    .line 160
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onStart()V

    return-void
.end method

.method public onValueChanged(IIZ)V
    .locals 0

    .line 185
    invoke-direct {p0, p2}, Lcom/metamoji/ui/dialog/BackgroundColor;->opacityChanged(I)V

    return-void
.end method
