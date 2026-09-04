.class public Lcom/metamoji/ui/dialog/TextAndBackgroundColor;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "TextAndBackgroundColor.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;,
        Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;,
        Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;
    }
.end annotation


# instance fields
.field _bgColorBottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

.field _bgColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

.field private _params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

.field _textColorBottlesRadioGroup:Lcom/metamoji/ui/common/UiRadioContoller;

.field private _textColorInkId:Ljava/lang/String;

.field private _textColorInkType:Ljava/lang/String;

.field _textColorSelectionView:Lcom/metamoji/ui/common/UiColorSelectionView2;

.field private checkedId:I

.field private contentBackgroundColor:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;

.field private contentColor:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;


# direct methods
.method static bridge synthetic -$$Nest$fget_params(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;)Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_textColorInkId(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_textColorInkId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_textColorInkId(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_textColorInkId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_textColorInkType(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_textColorInkType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 446
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 47
    sget v0, Lcom/metamoji/noteanytime/R$id;->button_textcolor:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->checkedId:I

    .line 431
    new-instance v0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;ZILjava/lang/Integer;Z)V
    .locals 1

    .line 450
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 47
    sget v0, Lcom/metamoji/noteanytime/R$id;->button_textcolor:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->checkedId:I

    .line 431
    new-instance v0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    .line 451
    iput-boolean p2, v0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_textColorToDefault:Z

    if-eqz p1, :cond_0

    .line 453
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    new-instance v0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$1;-><init>(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;Ljava/lang/Integer;)V

    iput-object v0, p2, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_textInkColors:Ljava/util/List;

    .line 457
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    iput p3, p1, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_textDefColor:I

    const/16 p1, 0x64

    const/4 p2, 0x0

    if-eqz p4, :cond_3

    .line 461
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p3}, Lcom/metamoji/ui/dialog/BackgroundColor;->isColorNone(I)Z

    move-result p3

    const/16 v0, 0xff

    if-nez p3, :cond_2

    if-nez p5, :cond_1

    goto :goto_0

    .line 467
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    iput-boolean p2, p1, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorIsNoneChecked:Z

    .line 468
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2, v0}, Lcom/metamoji/cm/ColorUtils;->colorWithAlpha(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorRGB:Ljava/lang/Integer;

    .line 469
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorOpacity:I

    return-void

    .line 462
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    const/4 p3, 0x1

    iput-boolean p3, p2, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorIsNoneChecked:Z

    .line 463
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p2, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorRGB:Ljava/lang/Integer;

    .line 464
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    iput p1, p2, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorOpacity:I

    return-void

    .line 474
    :cond_3
    iget-object p3, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    iput-boolean p2, p3, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorIsNoneChecked:Z

    .line 475
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    const/4 p3, 0x0

    iput-object p3, p2, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorRGB:Ljava/lang/Integer;

    .line 476
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    iput p1, p2, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorOpacity:I

    return-void
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/Integer;
    .locals 3

    .line 582
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorIsNoneChecked:Z

    const/16 v1, 0xff

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 583
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorRGB:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    iget v0, v0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorOpacity:I

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 586
    iget-object v1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorRGB:Ljava/lang/Integer;

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

    .line 564
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_textInkColors:Ljava/util/List;

    return-object v0
.end method

.method public getInkId()Ljava/lang/String;
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_textColorInkId:Ljava/lang/String;

    return-object v0
.end method

.method public getInkType()Ljava/lang/String;
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_textColorInkType:Ljava/lang/String;

    return-object v0
.end method

.method public isToDefault()Z
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_textColorToDefault:Z

    return v0
.end method

.method public isUseBackgroundColor()Z
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorIsNoneChecked:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 533
    iput p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->checkedId:I

    .line 536
    sget p1, Lcom/metamoji/noteanytime/R$id;->button_textcolor:I

    if-ne p2, p1, :cond_0

    .line 537
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->contentColor:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;

    goto :goto_0

    .line 538
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->button_backgroundcolor:I

    if-ne p2, p1, :cond_1

    .line 539
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->contentBackgroundColor:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 541
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->getDialogView()Landroid/view/ViewGroup;

    move-result-object p2

    sget v0, Lcom/metamoji/noteanytime/R$id;->container:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 542
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 543
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    if-eqz p3, :cond_0

    .line 484
    const-string v0, "TextAndBackgroundColorParams"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    .line 487
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_textandbackgroundcolor:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->mViewId:I

    .line 488
    sget v0, Lcom/metamoji/noteanytime/R$string;->CharDecoration_TextColor:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->mTitleId:I

    .line 494
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 496
    sget p2, Lcom/metamoji/noteanytime/R$id;->radiogroup:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    .line 497
    invoke-virtual {p2, p0}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 499
    new-instance p2, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p2, p0, p3, v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;-><init>(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->contentColor:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;

    .line 500
    new-instance p2, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p2, p0, p3, v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;-><init>(Lcom/metamoji/ui/dialog/TextAndBackgroundColor;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->contentBackgroundColor:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->contentColor:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$TextColorLayout;->saveColorHistory()V

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->contentBackgroundColor:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;

    if-eqz v0, :cond_1

    .line 552
    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$BackgroundColorLayout;->saveColorHistory()V

    .line 555
    :cond_1
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 516
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 518
    const-string v0, "TextAndBackgroundColorParams"

    iget-object v1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->_params:Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 525
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->radiogroup:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiRadioGroup;

    .line 526
    iget v1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->checkedId:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioGroup;->check(I)V

    .line 528
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onStart()V

    return-void
.end method
