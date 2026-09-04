.class public Lcom/metamoji/ui/dialog/TextColor;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "TextColor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/TextColor$Params;
    }
.end annotation


# instance fields
.field private _params:Lcom/metamoji/ui/dialog/TextColor$Params;

.field bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

.field colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

.field private inkId:Ljava/lang/String;

.field private inkType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;ZI)V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 83
    new-instance v0, Lcom/metamoji/ui/dialog/TextColor$Params;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/TextColor$Params;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TextColor;->_params:Lcom/metamoji/ui/dialog/TextColor$Params;

    .line 84
    iput-boolean p2, v0, Lcom/metamoji/ui/dialog/TextColor$Params;->toDefault:Z

    if-eqz p1, :cond_0

    .line 86
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextColor;->_params:Lcom/metamoji/ui/dialog/TextColor$Params;

    new-instance v0, Lcom/metamoji/ui/dialog/TextColor$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/dialog/TextColor$1;-><init>(Lcom/metamoji/ui/dialog/TextColor;Ljava/lang/Integer;)V

    iput-object v0, p2, Lcom/metamoji/ui/dialog/TextColor$Params;->inkColors:Ljava/util/List;

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextColor;->_params:Lcom/metamoji/ui/dialog/TextColor$Params;

    iput p3, p1, Lcom/metamoji/ui/dialog/TextColor$Params;->defColor:I

    return-void
.end method

.method private colorChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextColor;->_params:Lcom/metamoji/ui/dialog/TextColor$Params;

    iput-object p1, v0, Lcom/metamoji/ui/dialog/TextColor$Params;->inkColors:Ljava/util/List;

    .line 273
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextColor;->getDialogView()Landroid/view/ViewGroup;

    move-result-object p1

    .line 277
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextColor;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    if-nez v0, :cond_0

    .line 278
    sget v0, Lcom/metamoji/noteanytime/R$id;->colorPalette:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiColorSelectionView2;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextColor;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    .line 280
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextColor;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedGroup()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/nt/NtInkManager;->getGroupNameNumber(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/metamoji/nt/NtInkManager;->getInkId(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextColor;->inkId:Ljava/lang/String;

    .line 281
    invoke-static {p1}, Lcom/metamoji/nt/NtInkManager;->getInkType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextColor;->inkType:Ljava/lang/String;

    return-void
.end method

.method private initControl(Z)V
    .locals 3

    .line 202
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextColor;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 203
    sget v1, Lcom/metamoji/noteanytime/R$id;->toDefault:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiButton;

    .line 204
    iget-object v2, p0, Lcom/metamoji/ui/dialog/TextColor;->_params:Lcom/metamoji/ui/dialog/TextColor$Params;

    iget-boolean v2, v2, Lcom/metamoji/ui/dialog/TextColor$Params;->toDefault:Z

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiButton;->setSelected(Z)V

    .line 206
    iget-object v1, p0, Lcom/metamoji/ui/dialog/TextColor;->_params:Lcom/metamoji/ui/dialog/TextColor$Params;

    iget-boolean v1, v1, Lcom/metamoji/ui/dialog/TextColor$Params;->toDefault:Z

    invoke-direct {p0, v1, p1}, Lcom/metamoji/ui/dialog/TextColor;->toDefaultChanged(ZZ)V

    .line 211
    iget-object v1, p0, Lcom/metamoji/ui/dialog/TextColor;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    if-nez v1, :cond_0

    .line 212
    sget v1, Lcom/metamoji/noteanytime/R$id;->colorPalette:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiColorSelectionView2;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TextColor;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextColor;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedGroup()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtInkManager;->getGroupNameNumber(Ljava/lang/String;)I

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/metamoji/ui/dialog/TextColor;->bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 229
    sget v0, Lcom/metamoji/noteanytime/R$id;->bottle0:I

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    goto :goto_0

    .line 225
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$id;->bottle1:I

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    :goto_0
    if-nez p1, :cond_2

    .line 233
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextColor;->_params:Lcom/metamoji/ui/dialog/TextColor$Params;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/TextColor$Params;->inkColors:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextColor;->colorChanged(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 142
    const-string v0, "TextColorDialogParams"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/TextColor$Params;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextColor;->_params:Lcom/metamoji/ui/dialog/TextColor$Params;

    return-void
.end method

.method private toDefaultChanged(ZZ)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextColor;->_params:Lcom/metamoji/ui/dialog/TextColor$Params;

    iput-boolean p1, v0, Lcom/metamoji/ui/dialog/TextColor$Params;->toDefault:Z

    if-nez p2, :cond_2

    .line 245
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextColor;->getDialogView()Landroid/view/ViewGroup;

    move-result-object p2

    .line 249
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextColor;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    if-nez v0, :cond_0

    .line 250
    sget v0, Lcom/metamoji/noteanytime/R$id;->colorPalette:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiColorSelectionView2;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextColor;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    .line 256
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextColor;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    if-eqz p1, :cond_1

    .line 253
    invoke-virtual {p2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedGroup()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const/4 v1, -0x1

    invoke-virtual {p2, p1, v0, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItem(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 256
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextColor;->_params:Lcom/metamoji/ui/dialog/TextColor$Params;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/TextColor$Params;->inkColors:Ljava/util/List;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(Ljava/util/List;Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 257
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextColor;->_params:Lcom/metamoji/ui/dialog/TextColor$Params;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/metamoji/ui/dialog/TextColor$Params;->inkColors:Ljava/util/List;

    :cond_2
    return-void
.end method


# virtual methods
.method public getInkColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextColor;->_params:Lcom/metamoji/ui/dialog/TextColor$Params;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/TextColor$Params;->inkColors:Ljava/util/List;

    return-object v0
.end method

.method public getInkId()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextColor;->inkId:Ljava/lang/String;

    return-object v0
.end method

.method public getInkType()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextColor;->inkType:Ljava/lang/String;

    return-object v0
.end method

.method public isToDefault()Z
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextColor;->_params:Lcom/metamoji/ui/dialog/TextColor$Params;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/TextColor$Params;->toDefault:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->toDefault:I

    if-ne v0, v1, :cond_0

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/dialog/TextColor;->toDefaultChanged(ZZ)V

    :cond_0
    return-void
.end method

.method public onColorSelected(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 167
    new-instance p1, Lcom/metamoji/ui/dialog/TextColor$2;

    invoke-direct {p1, p0, p4}, Lcom/metamoji/ui/dialog/TextColor$2;-><init>(Lcom/metamoji/ui/dialog/TextColor;I)V

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextColor;->colorChanged(Ljava/util/List;)V

    .line 171
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextColor;->_params:Lcom/metamoji/ui/dialog/TextColor$Params;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/metamoji/ui/dialog/TextColor$Params;->toDefault:Z

    const/4 p1, 0x1

    .line 172
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextColor;->initControl(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    if-eqz p3, :cond_0

    .line 98
    invoke-direct {p0, p3}, Lcom/metamoji/ui/dialog/TextColor;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 100
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_textcolor:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TextColor;->mViewId:I

    .line 101
    sget v0, Lcom/metamoji/noteanytime/R$string;->CharDecoration_TextColor:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TextColor;->mTitleId:I

    .line 103
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 104
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 106
    sget p2, Lcom/metamoji/noteanytime/R$id;->toDefault:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    .line 107
    invoke-virtual {p2, p0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    sget p2, Lcom/metamoji/noteanytime/R$id;->label_color:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/high16 p3, 0x40200000    # 2.5f

    .line 110
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p3

    .line 111
    new-instance p3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v3, 0x2

    aput v0, v2, v3

    const/4 v3, 0x3

    aput v0, v2, v3

    const/4 v3, 0x4

    aput v0, v2, v3

    const/4 v3, 0x5

    aput v0, v2, v3

    const/4 v3, 0x6

    aput v0, v2, v3

    const/4 v3, 0x7

    aput v0, v2, v3

    const/4 v0, 0x0

    invoke-direct {v1, v2, v0, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {p3, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 112
    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/dialog/TextColor;->_params:Lcom/metamoji/ui/dialog/TextColor$Params;

    iget v1, v1, Lcom/metamoji/ui/dialog/TextColor$Params;->defColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    sget p2, Lcom/metamoji/noteanytime/R$id;->colorPalette:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiColorSelectionView2;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextColor;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    .line 124
    new-instance p2, Lcom/metamoji/ui/common/UiRadioContoller;

    sget p3, Lcom/metamoji/noteanytime/R$id;->bottle0:I

    sget v0, Lcom/metamoji/noteanytime/R$id;->bottle1:I

    filled-new-array {p3, v0}, [I

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/metamoji/ui/common/UiRadioContoller;-><init>(Landroid/view/View;[I)V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextColor;->bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    .line 125
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextColor;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    sget p3, Lcom/metamoji/noteanytime/R$id;->paletteLeftButton:I

    .line 126
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    sget v0, Lcom/metamoji/noteanytime/R$id;->paletteRightButton:I

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/dialog/TextColor;->bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    .line 125
    invoke-virtual {p2, p3, v0, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setUIParts(Landroid/view/View;Landroid/view/View;Lcom/metamoji/ui/common/UiRadioContoller;)V

    .line 129
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextColor;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {p2, p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setSelectionChangedListener(Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;)V

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextColor;->colorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v0}, Lcom/metamoji/nt/NtInkManager;->saveColorHistoryStandard(Lcom/metamoji/ui/common/UiColorSelectionView2;)V

    .line 197
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onGradationColorSelected(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 180
    new-instance p1, Lcom/metamoji/ui/dialog/TextColor$3;

    invoke-direct {p1, p0, p4, p5}, Lcom/metamoji/ui/dialog/TextColor$3;-><init>(Lcom/metamoji/ui/dialog/TextColor;II)V

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextColor;->colorChanged(Ljava/util/List;)V

    .line 186
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextColor;->_params:Lcom/metamoji/ui/dialog/TextColor$Params;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/metamoji/ui/dialog/TextColor$Params;->toDefault:Z

    const/4 p1, 0x1

    .line 187
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextColor;->initControl(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 136
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 137
    const-string v0, "TextColorDialogParams"

    iget-object v1, p0, Lcom/metamoji/ui/dialog/TextColor;->_params:Lcom/metamoji/ui/dialog/TextColor$Params;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 138
    sget-object v0, Lcom/metamoji/ui/dialog/TextColor;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, v0}, Lcom/metamoji/ui/dialog/TextColor;->initControl(Z)V

    .line 153
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onStart()V

    return-void
.end method
