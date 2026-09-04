.class public Lcom/metamoji/ui/dialog/TextUnitStyle;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "TextUnitStyle.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcom/metamoji/ui/dialog/TextUnitStyleColor$Listener;
.implements Lcom/metamoji/ui/dialog/TextUnitStyleText$Listener;


# instance fields
.field private checkedId:I

.field private contentBorder:Lcom/metamoji/ui/dialog/TextUnitStyleBorder;

.field private contentColor:Lcom/metamoji/ui/dialog/TextUnitStyleColor;

.field private contentText:Lcom/metamoji/ui/dialog/TextUnitStyleText;

.field private titleId:I

.field private unitStyles:Lcom/metamoji/un/text/model/UnitStyles;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 26
    sget v0, Lcom/metamoji/noteanytime/R$string;->TextUnitStyle_Title:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->titleId:I

    .line 32
    sget v0, Lcom/metamoji/noteanytime/R$id;->button_border:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->checkedId:I

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/text/model/UnitStyles;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 26
    sget v0, Lcom/metamoji/noteanytime/R$string;->TextUnitStyle_Title:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->titleId:I

    .line 32
    sget v0, Lcom/metamoji/noteanytime/R$id;->button_border:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->checkedId:I

    .line 46
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/UnitStyles;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/UnitStyles;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/text/model/UnitStyles;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyle;-><init>(Lcom/metamoji/un/text/model/UnitStyles;)V

    .line 51
    iput p2, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->titleId:I

    return-void
.end method

.method private setTextColor(I)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->contentColor:Lcom/metamoji/ui/dialog/TextUnitStyleColor;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleColor;->setTextColor(I)V

    return-void
.end method

.method private setTextSize(F)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->contentText:Lcom/metamoji/ui/dialog/TextUnitStyleText;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleText;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public getUnitStyles()Lcom/metamoji/un/text/model/UnitStyles;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 122
    iput p2, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->checkedId:I

    .line 125
    sget p1, Lcom/metamoji/noteanytime/R$id;->button_border:I

    if-ne p2, p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->contentBorder:Lcom/metamoji/ui/dialog/TextUnitStyleBorder;

    goto :goto_0

    .line 127
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->button_color:I

    if-ne p2, p1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->contentColor:Lcom/metamoji/ui/dialog/TextUnitStyleColor;

    goto :goto_0

    .line 129
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$id;->button_text:I

    if-ne p2, p1, :cond_2

    .line 130
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->contentText:Lcom/metamoji/ui/dialog/TextUnitStyleText;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 132
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextUnitStyle;->getDialogView()Landroid/view/ViewGroup;

    move-result-object p2

    sget v0, Lcom/metamoji/noteanytime/R$id;->container:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 133
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 134
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    if-eqz p3, :cond_0

    .line 58
    const-string v0, "TextUnitStyleDialogParams"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/UnitStyles;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    .line 61
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_textunitstyle:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->mViewId:I

    .line 62
    iget v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->titleId:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->mTitleId:I

    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 73
    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->radiogroup:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    .line 74
    invoke-virtual {p2, p0}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 76
    new-instance p2, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextUnitStyle;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->contentBorder:Lcom/metamoji/ui/dialog/TextUnitStyleBorder;

    .line 77
    new-instance p2, Lcom/metamoji/ui/dialog/TextUnitStyleColor;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextUnitStyle;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextUnitStyle;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lcom/metamoji/ui/dialog/TextUnitStyleColor;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->contentColor:Lcom/metamoji/ui/dialog/TextUnitStyleColor;

    .line 78
    new-instance p2, Lcom/metamoji/ui/dialog/TextUnitStyleText;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextUnitStyle;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/metamoji/ui/dialog/TextUnitStyleText;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->contentText:Lcom/metamoji/ui/dialog/TextUnitStyleText;

    .line 80
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->contentBorder:Lcom/metamoji/ui/dialog/TextUnitStyleBorder;

    iput-object p0, p2, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->owner:Lcom/metamoji/ui/dialog/TextUnitStyle;

    .line 81
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->contentColor:Lcom/metamoji/ui/dialog/TextUnitStyleColor;

    invoke-virtual {p2, p0}, Lcom/metamoji/ui/dialog/TextUnitStyleColor;->setListener(Lcom/metamoji/ui/dialog/TextUnitStyleColor$Listener;)V

    .line 82
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->contentText:Lcom/metamoji/ui/dialog/TextUnitStyleText;

    invoke-virtual {p2, p0}, Lcom/metamoji/ui/dialog/TextUnitStyleText;->setListener(Lcom/metamoji/ui/dialog/TextUnitStyleText$Listener;)V

    .line 84
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->contentText:Lcom/metamoji/ui/dialog/TextUnitStyleText;

    iput-object p0, p2, Lcom/metamoji/ui/dialog/TextUnitStyleText;->owner:Lcom/metamoji/ui/dialog/TextUnitStyle;

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 2

    .line 140
    iget v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->checkedId:I

    sget v1, Lcom/metamoji/noteanytime/R$id;->button_color:I

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->contentColor:Lcom/metamoji/ui/dialog/TextUnitStyleColor;

    sget v1, Lcom/metamoji/noteanytime/R$id;->colorPalette:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/TextUnitStyleColor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiColorSelectionView2;

    if-eqz v0, :cond_0

    .line 143
    invoke-static {v0}, Lcom/metamoji/nt/NtInkManager;->saveColorHistoryStandard(Lcom/metamoji/ui/common/UiColorSelectionView2;)V

    .line 146
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 91
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 95
    const-string v0, "TextUnitStyleDialogParams"

    iget-object v1, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextUnitStyle;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->radiogroup:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiRadioGroup;

    .line 103
    iget v1, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->checkedId:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioGroup;->check(I)V

    .line 105
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v0, v0, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextUnitStyle;->setLineHeight(F)V

    .line 106
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v0, v0, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextUnitStyle;->setRuledLineStyle(Lcom/metamoji/un/text/model/RuledLineStyle;)V

    .line 107
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v0, v0, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextUnitStyle;->setUnitBorderStyle(Lcom/metamoji/un/text/model/UnitBorderStyle;)V

    .line 108
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v0, v0, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextUnitStyle;->setBackgroundColor(I)V

    .line 109
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v0, v0, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextUnitStyle;->setVerticalWriting(Z)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v0, v0, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/metamoji/ui/dialog/TextUnitStyle;->setTextColor(I)V

    .line 114
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v0, v0, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextUnitStyle;->setFontName(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v0, v0, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/metamoji/ui/dialog/TextUnitStyle;->setTextSize(F)V

    .line 117
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onStart()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    .line 166
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->contentBorder:Lcom/metamoji/ui/dialog/TextUnitStyleBorder;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->setBackgroundColor(I)V

    return-void
.end method

.method public setFontName(Ljava/lang/String;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iput-object p1, v0, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    .line 196
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->contentText:Lcom/metamoji/ui/dialog/TextUnitStyleText;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/TextUnitStyleText;->updateFontName()V

    return-void
.end method

.method public setLineHeight(F)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    .line 151
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->contentBorder:Lcom/metamoji/ui/dialog/TextUnitStyleBorder;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->setLineHeight(F)V

    return-void
.end method

.method public setRuledLineStyle(Lcom/metamoji/un/text/model/RuledLineStyle;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iput-object p1, v0, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 156
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->contentBorder:Lcom/metamoji/ui/dialog/TextUnitStyleBorder;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->setRuledLineStyle(Lcom/metamoji/un/text/model/RuledLineStyle;)V

    return-void
.end method

.method public setUnitBorderStyle(Lcom/metamoji/un/text/model/UnitBorderStyle;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iput-object p1, v0, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 161
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->contentBorder:Lcom/metamoji/ui/dialog/TextUnitStyleBorder;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->setUnitBorderStyle(Lcom/metamoji/un/text/model/UnitBorderStyle;)V

    return-void
.end method

.method public setVerticalWriting(Z)V
    .locals 2

    .line 170
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    .line 172
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->contentBorder:Lcom/metamoji/ui/dialog/TextUnitStyleBorder;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->setVerticalWriting(Z)V

    :cond_0
    return-void
.end method

.method public textColorChanged(I)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    return-void
.end method

.method public textSizeChanged(F)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyle;->unitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    return-void
.end method
