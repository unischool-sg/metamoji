.class public Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;
.super Landroid/widget/LinearLayout;
.source "TextAndBackgroundColor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;
.implements Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/TextAndBackgroundColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackgroundColorLayout"
.end annotation


# instance fields
.field bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

.field mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

.field final synthetic this$0:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 283
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->this$0:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    .line 284
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    .line 286
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->setOrientation(I)V

    .line 287
    sget v0, Lcom/metamoji/noteanytime/R$layout;->control_textandbackgroundcolor_backgroundcolor:I

    invoke-static {p2, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 290
    sget p2, Lcom/metamoji/noteanytime/R$id;->transparent:I

    invoke-virtual {p0, p2}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    .line 291
    invoke-virtual {p2, p0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    if-nez p2, :cond_0

    .line 295
    sget p2, Lcom/metamoji/noteanytime/R$id;->colorPalette:I

    invoke-virtual {p0, p2}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiColorSelectionView2;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    .line 302
    :cond_0
    new-instance p2, Lcom/metamoji/ui/common/UiRadioContoller;

    sget v0, Lcom/metamoji/noteanytime/R$id;->bottle0:I

    sget v1, Lcom/metamoji/noteanytime/R$id;->bottle1:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/metamoji/ui/common/UiRadioContoller;-><init>(Landroid/view/View;[I)V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    .line 303
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    sget v0, Lcom/metamoji/noteanytime/R$id;->paletteLeftButton:I

    .line 304
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->paletteRightButton:I

    .line 305
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    .line 303
    invoke-virtual {p2, v0, v1, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setUIParts(Landroid/view/View;Landroid/view/View;Lcom/metamoji/ui/common/UiRadioContoller;)V

    .line 307
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {p2, p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setSelectionChangedListener(Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;)V

    .line 310
    sget p2, Lcom/metamoji/noteanytime/R$id;->opacity:I

    invoke-virtual {p0, p2}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiPlainSlider;

    const/4 v0, 0x5

    .line 311
    new-array v0, v0, [Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    new-instance v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v2, 0xfa

    const/16 v3, 0x19

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v1, v0, p3

    new-instance p3, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v1, 0x1f4

    const/16 v2, 0x32

    invoke-direct {p3, v1, v2}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v1, 0x2

    aput-object p3, v0, v1

    new-instance p3, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v1, 0x2ee

    const/16 v2, 0x4b

    invoke-direct {p3, v1, v2}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v1, 0x3

    aput-object p3, v0, v1

    new-instance p3, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v1, 0x3e8

    const/16 v2, 0x64

    invoke-direct {p3, v1, v2}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v1, 0x4

    aput-object p3, v0, v1

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->setTickList([Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;)V

    .line 318
    invoke-virtual {p2, p0}, Lcom/metamoji/ui/common/UiPlainSlider;->setValueChangedListener(Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;)V

    .line 321
    invoke-static {p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->-$$Nest$fget_params(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;)Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    move-result-object p2

    iget-boolean p2, p2, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorIsNoneChecked:Z

    invoke-direct {p0, p2}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->setNoneChecked(Z)V

    .line 322
    invoke-static {p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->-$$Nest$fget_params(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;)Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    move-result-object p2

    iget-object p2, p2, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorRGB:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->-$$Nest$fget_params(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;)Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    move-result-object p1

    iget p1, p1, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorOpacity:I

    invoke-direct {p0, p2, p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->setColor(Ljava/lang/Integer;I)V

    return-void
.end method

.method private colorChanged(I)V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->this$0:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->-$$Nest$fget_params(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;)Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorRGB:Ljava/lang/Integer;

    .line 411
    sget v0, Lcom/metamoji/noteanytime/R$id;->opacity:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiPlainSlider;

    const/16 v1, 0x19

    .line 412
    invoke-static {p1, v1}, Lcom/metamoji/cm/ColorUtils;->colorWithAlpha(II)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->setSliderColor(II)V

    return-void
.end method

.method private isNoneCheckedChanged(Z)V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->this$0:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->-$$Nest$fget_params(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;)Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    move-result-object v0

    iput-boolean p1, v0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorIsNoneChecked:Z

    .line 359
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    if-nez v0, :cond_1

    .line 360
    sget v0, Lcom/metamoji/noteanytime/R$id;->colorPalette:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiColorSelectionView2;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedGroup()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItem(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 365
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->this$0:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->-$$Nest$fget_params(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;)Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    move-result-object p1

    iget-object p1, p1, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorRGB:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(IZ)Z

    :cond_1
    return-void
.end method

.method private opacityChanged(I)V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->this$0:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->-$$Nest$fget_params(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;)Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    move-result-object v0

    iput p1, v0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorOpacity:I

    return-void
.end method

.method private setColor(Ljava/lang/Integer;I)V
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    if-nez v0, :cond_0

    .line 373
    sget v0, Lcom/metamoji/noteanytime/R$id;->colorPalette:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiColorSelectionView2;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    :cond_0
    if-eqz p1, :cond_1

    .line 377
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItemByColor(I)Z

    .line 380
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->this$0:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->-$$Nest$fget_params(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;)Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    move-result-object v0

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorIsNoneChecked:Z

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedGroup()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/ui/common/UiColorSelectionView2;->selectItem(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->getSelectedGroup()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtInkManager;->getGroupNameNumber(Ljava/lang/String;)I

    move-result v0

    .line 391
    iget-object v1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->bottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 395
    sget v0, Lcom/metamoji/noteanytime/R$id;->bottle0:I

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    goto :goto_0

    .line 391
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$id;->bottle1:I

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    :goto_0
    if-eqz p1, :cond_3

    .line 399
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->colorChanged(I)V

    .line 403
    :cond_3
    sget p1, Lcom/metamoji/noteanytime/R$id;->opacity:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiPlainSlider;

    .line 404
    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue(I)V

    return-void
.end method

.method private setNoneChecked(Z)V
    .locals 1

    .line 351
    sget v0, Lcom/metamoji/noteanytime/R$id;->transparent:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    .line 352
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton;->setSelected(Z)V

    .line 353
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->isNoneCheckedChanged(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->transparent:I

    if-ne v0, v1, :cond_0

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->isNoneCheckedChanged(Z)V

    :cond_0
    return-void
.end method

.method public onColorSelected(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 334
    invoke-direct {p0, p4}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->colorChanged(I)V

    const/4 p1, 0x0

    .line 335
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->setNoneChecked(Z)V

    return-void
.end method

.method public onGradationColorSelected(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 341
    invoke-direct {p0, p4}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->colorChanged(I)V

    const/4 p1, 0x0

    .line 342
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->setNoneChecked(Z)V

    return-void
.end method

.method public onValueChanged(IIZ)V
    .locals 0

    .line 347
    invoke-direct {p0, p2}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->opacityChanged(I)V

    return-void
.end method

.method public saveColorHistory()V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->this$0:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->-$$Nest$fget_params(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;)Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    move-result-object v0

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorIsNoneChecked:Z

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->mColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

    if-eqz v0, :cond_0

    .line 422
    invoke-static {v0}, Lcom/metamoji/nt/NtInkManager;->saveColorHistoryBackground(Lcom/metamoji/ui/common/UiColorSelectionView2;)V

    :cond_0
    return-void
.end method
