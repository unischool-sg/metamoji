.class public Lcom/metamoji/ui/dialog/TextUnitStyleText;
.super Landroid/widget/LinearLayout;
.source "TextUnitStyleText.java"

# interfaces
.implements Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/TextUnitStyleText$Listener;
    }
.end annotation


# instance fields
.field private listener:Lcom/metamoji/ui/dialog/TextUnitStyleText$Listener;

.field public owner:Lcom/metamoji/ui/dialog/TextUnitStyle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleText;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleText;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleText;->init(Landroid/content/Context;)V

    return-void
.end method

.method private fontClicked()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyleText;->owner:Lcom/metamoji/ui/dialog/TextUnitStyle;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/TextUnitStyle;->getUnitStyles()Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/un/text/FontUtils;->getRenderingFontInfo(Ljava/lang/String;)Lcom/metamoji/un/text/FontInfo;

    move-result-object v0

    .line 121
    new-instance v1, Lcom/metamoji/ui/dialog/FontList;

    iget-object v0, v0, Lcom/metamoji/un/text/FontInfo;->familyName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/metamoji/ui/dialog/FontList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/metamoji/ui/dialog/TextUnitStyleText$1;

    invoke-direct {v0, p0, v1}, Lcom/metamoji/ui/dialog/TextUnitStyleText$1;-><init>(Lcom/metamoji/ui/dialog/TextUnitStyleText;Lcom/metamoji/ui/dialog/FontList;)V

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/dialog/FontList;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 131
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextUnitStyleText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 132
    const-string v2, "FontList"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/ui/dialog/FontList;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 12

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextUnitStyleText;->setOrientation(I)V

    .line 54
    sget v1, Lcom/metamoji/noteanytime/R$layout;->control_textunitstyle_text:I

    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    sget p1, Lcom/metamoji/noteanytime/R$id;->textSize:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleText;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiPlainSlider;

    const/4 v1, 0x5

    .line 57
    new-array v1, v1, [Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    new-instance v2, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v5, 0xfa

    const/16 v6, 0x8

    invoke-direct {v2, v5, v6}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v2, v1, v0

    new-instance v0, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v2, 0x1f4

    const/16 v5, 0x18

    invoke-direct {v0, v2, v5}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    new-instance v0, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v2, 0x2ee

    const/16 v5, 0x30

    invoke-direct {v0, v2, v5}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    new-instance v0, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v2, 0x3e8

    const/16 v5, 0x60

    invoke-direct {v0, v2, v5}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v0, v1, v4

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiPlainSlider;->setTickList([Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;)V

    .line 64
    invoke-virtual {p1, p0}, Lcom/metamoji/ui/common/UiPlainSlider;->setValueChangedListener(Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;)V

    .line 66
    sget v6, Lcom/metamoji/noteanytime/R$id;->fontButton:I

    sget v7, Lcom/metamoji/noteanytime/R$id;->preSize1:I

    sget v8, Lcom/metamoji/noteanytime/R$id;->preSize2:I

    sget v9, Lcom/metamoji/noteanytime/R$id;->preSize3:I

    sget v10, Lcom/metamoji/noteanytime/R$id;->preSize4:I

    sget v11, Lcom/metamoji/noteanytime/R$id;->preSize5:I

    filled-new-array/range {v6 .. v11}, [I

    move-result-object p1

    :goto_0
    const/4 v0, 0x6

    if-ge v3, v0, :cond_0

    .line 67
    aget v0, p1, v3

    .line 68
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextUnitStyleText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    .line 69
    invoke-virtual {v0, p0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private presetSizeClicked(I)V
    .locals 0

    int-to-float p1, p1

    .line 116
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleText;->setTextSize(F)V

    return-void
.end method

.method private textSizeChanged(F)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitStyleText;->listener:Lcom/metamoji/ui/dialog/TextUnitStyleText$Listener;

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleText$Listener;->textSizeChanged(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->fontButton:I

    if-ne v0, v1, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/TextUnitStyleText;->fontClicked()V

    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->preSize1:I

    if-ne v0, v1, :cond_1

    const/16 p1, 0xc

    .line 83
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleText;->presetSizeClicked(I)V

    return-void

    .line 84
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->preSize2:I

    if-ne v0, v1, :cond_2

    const/16 p1, 0x10

    .line 85
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleText;->presetSizeClicked(I)V

    return-void

    .line 86
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->preSize3:I

    if-ne v0, v1, :cond_3

    const/16 p1, 0x18

    .line 87
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleText;->presetSizeClicked(I)V

    return-void

    .line 88
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->preSize4:I

    if-ne v0, v1, :cond_4

    const/16 p1, 0x20

    .line 89
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleText;->presetSizeClicked(I)V

    return-void

    .line 90
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/metamoji/noteanytime/R$id;->preSize5:I

    if-ne p1, v0, :cond_5

    const/16 p1, 0x38

    .line 91
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleText;->presetSizeClicked(I)V

    :cond_5
    return-void
.end method

.method public onValueChanged(IIZ)V
    .locals 0

    int-to-float p1, p2

    .line 75
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleText;->textSizeChanged(F)V

    return-void
.end method

.method public setListener(Lcom/metamoji/ui/dialog/TextUnitStyleText$Listener;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitStyleText;->listener:Lcom/metamoji/ui/dialog/TextUnitStyleText$Listener;

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 105
    sget v0, Lcom/metamoji/noteanytime/R$id;->textSize:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextUnitStyleText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiPlainSlider;

    .line 106
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue2(I)V

    return-void
.end method

.method public updateFontName()V
    .locals 4

    .line 96
    sget v0, Lcom/metamoji/noteanytime/R$id;->fontButton:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextUnitStyleText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    .line 97
    sget v1, Lcom/metamoji/noteanytime/R$id;->selectedFontName:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/dialog/TextUnitStyleText;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/dialog/FontListSampleView;

    .line 98
    iget-object v2, p0, Lcom/metamoji/ui/dialog/TextUnitStyleText;->owner:Lcom/metamoji/ui/dialog/TextUnitStyle;

    invoke-virtual {v2}, Lcom/metamoji/ui/dialog/TextUnitStyle;->getUnitStyles()Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v2

    iget-object v2, v2, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    invoke-static {v2}, Lcom/metamoji/un/text/FontUtils;->getRenderingFontInfo(Ljava/lang/String;)Lcom/metamoji/un/text/FontInfo;

    move-result-object v2

    .line 99
    iget-object v3, v2, Lcom/metamoji/un/text/FontInfo;->dispName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/metamoji/ui/dialog/FontListSampleView;->setText(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiButton;->getMainTitleTextSize()F

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Lcom/metamoji/ui/dialog/FontListSampleView;->setTextSize(IF)V

    .line 101
    invoke-static {v2, v3}, Lcom/metamoji/un/text/FontUtils;->createTypeface(Lcom/metamoji/un/text/FontInfo;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/dialog/FontListSampleView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
