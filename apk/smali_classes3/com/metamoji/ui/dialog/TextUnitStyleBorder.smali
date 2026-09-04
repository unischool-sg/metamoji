.class public Lcom/metamoji/ui/dialog/TextUnitStyleBorder;
.super Landroid/widget/LinearLayout;
.source "TextUnitStyleBorder.java"

# interfaces
.implements Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final presetSize:[F


# instance fields
.field public owner:Lcom/metamoji/ui/dialog/TextUnitStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    .line 36
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->presetSize:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3fc00000    # 1.5f
        0x3fd9999a    # 1.7f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 14

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->setOrientation(I)V

    .line 55
    sget v1, Lcom/metamoji/noteanytime/R$layout;->control_textunitstyle_border:I

    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 59
    sget v1, Lcom/metamoji/noteanytime/R$id;->label_lineheight:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 60
    sget v2, Lcom/metamoji/noteanytime/R$string;->TextUnitStyle_LineSpacing:I

    .line 61
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "%s(em)"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    sget p1, Lcom/metamoji/noteanytime/R$id;->lineheight:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiPlainSlider;

    const/16 v1, 0xa

    .line 64
    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiPlainSlider;->setPrecision(I)V

    const/4 v2, 0x3

    .line 65
    new-array v2, v2, [Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    new-instance v3, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v3, v2, v4

    new-instance v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v3, 0x1f4

    const/16 v5, 0xf

    invoke-direct {v1, v3, v5}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    aput-object v1, v2, v0

    new-instance v0, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    const/16 v1, 0x3e8

    const/16 v3, 0x14

    invoke-direct {v0, v1, v3}, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;-><init>(II)V

    const/4 v1, 0x2

    aput-object v0, v2, v1

    invoke-virtual {p1, v2}, Lcom/metamoji/ui/common/UiPlainSlider;->setTickList([Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;)V

    .line 70
    invoke-virtual {p1, p0}, Lcom/metamoji/ui/common/UiPlainSlider;->setValueChangedListener(Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;)V

    .line 72
    sget v5, Lcom/metamoji/noteanytime/R$id;->preSize1:I

    sget v6, Lcom/metamoji/noteanytime/R$id;->preSize2:I

    sget v7, Lcom/metamoji/noteanytime/R$id;->preSize3:I

    sget v8, Lcom/metamoji/noteanytime/R$id;->preSize4:I

    sget v9, Lcom/metamoji/noteanytime/R$id;->preSize5:I

    sget v10, Lcom/metamoji/noteanytime/R$id;->ruled_line_style:I

    sget v11, Lcom/metamoji/noteanytime/R$id;->unit_border_style:I

    sget v12, Lcom/metamoji/noteanytime/R$id;->background_color:I

    sget v13, Lcom/metamoji/noteanytime/R$id;->vertical_writing:I

    filled-new-array/range {v5 .. v13}, [I

    move-result-object p1

    .line 75
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 77
    :goto_0
    sget-object v1, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->presetSize:[F

    array-length v2, v1

    if-ge v4, v2, :cond_0

    .line 78
    aget v2, p1, v4

    invoke-virtual {p0, v2}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiButton;

    .line 79
    aget v1, v1, v4

    float-to-double v5, v1

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v2, p0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v0, 0x9

    if-ge v4, v0, :cond_1

    .line 83
    aget v0, p1, v4

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    .line 84
    invoke-virtual {v0, p0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 88
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$id;->vertical_writing:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiButton;

    .line 92
    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 93
    check-cast p1, Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private onBackgroundColorClicked()V
    .locals 3

    .line 162
    new-instance v0, Lcom/metamoji/ui/dialog/BackgroundColor;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->owner:Lcom/metamoji/ui/dialog/TextUnitStyle;

    .line 163
    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/TextUnitStyle;->getUnitStyles()Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v1

    iget-object v1, v1, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    sget v2, Lcom/metamoji/noteanytime/R$string;->TextUnitStyle_BGColor:I

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/dialog/BackgroundColor;-><init>(Ljava/lang/Integer;I)V

    .line 164
    new-instance v1, Lcom/metamoji/ui/dialog/TextUnitStyleBorder$3;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder$3;-><init>(Lcom/metamoji/ui/dialog/TextUnitStyleBorder;Lcom/metamoji/ui/dialog/BackgroundColor;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/BackgroundColor;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 176
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 177
    const-string v2, "TextUnitBorderStyle"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/dialog/BackgroundColor;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private onRuledLineStyleClicked()V
    .locals 3

    .line 126
    new-instance v0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->owner:Lcom/metamoji/ui/dialog/TextUnitStyle;

    .line 127
    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/TextUnitStyle;->getUnitStyles()Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v1

    iget-object v1, v1, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    invoke-direct {v0, v1}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;-><init>(Lcom/metamoji/un/text/model/RuledLineStyle;)V

    .line 128
    new-instance v1, Lcom/metamoji/ui/dialog/TextUnitStyleBorder$1;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder$1;-><init>(Lcom/metamoji/ui/dialog/TextUnitStyleBorder;Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 139
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 140
    const-string v2, "TextUnitRuledLineStyle"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyle;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private onUnitBorderStyleClicked()V
    .locals 3

    .line 144
    new-instance v0, Lcom/metamoji/ui/dialog/TextUnitBorderStyle;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->owner:Lcom/metamoji/ui/dialog/TextUnitStyle;

    .line 145
    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/TextUnitStyle;->getUnitStyles()Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v1

    iget-object v1, v1, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-direct {v0, v1}, Lcom/metamoji/ui/dialog/TextUnitBorderStyle;-><init>(Lcom/metamoji/un/text/model/UnitBorderStyle;)V

    .line 146
    new-instance v1, Lcom/metamoji/ui/dialog/TextUnitStyleBorder$2;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder$2;-><init>(Lcom/metamoji/ui/dialog/TextUnitStyleBorder;Lcom/metamoji/ui/dialog/TextUnitBorderStyle;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/TextUnitBorderStyle;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 157
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 158
    const-string v2, "TextUnitBorderStyle"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/dialog/TextUnitBorderStyle;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private onVerticalWritingClicked()V
    .locals 2

    .line 181
    sget v0, Lcom/metamoji/noteanytime/R$id;->vertical_writing:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    .line 182
    iget-object v1, p0, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->owner:Lcom/metamoji/ui/dialog/TextUnitStyle;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiButton;->isSelected()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/dialog/TextUnitStyle;->setVerticalWriting(Z)V

    return-void
.end method

.method private presetSizeClicked(F)V
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->setLineHeight(F)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->preSize1:I

    if-ne v0, v1, :cond_0

    .line 105
    sget-object p1, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->presetSize:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->presetSizeClicked(F)V

    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->preSize2:I

    if-ne v0, v1, :cond_1

    .line 107
    sget-object p1, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->presetSize:[F

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->presetSizeClicked(F)V

    return-void

    .line 108
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->preSize3:I

    if-ne v0, v1, :cond_2

    .line 109
    sget-object p1, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->presetSize:[F

    const/4 v0, 0x2

    aget p1, p1, v0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->presetSizeClicked(F)V

    return-void

    .line 110
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->preSize4:I

    if-ne v0, v1, :cond_3

    .line 111
    sget-object p1, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->presetSize:[F

    const/4 v0, 0x3

    aget p1, p1, v0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->presetSizeClicked(F)V

    return-void

    .line 112
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->preSize5:I

    if-ne v0, v1, :cond_4

    .line 113
    sget-object p1, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->presetSize:[F

    const/4 v0, 0x4

    aget p1, p1, v0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->presetSizeClicked(F)V

    return-void

    .line 114
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->ruled_line_style:I

    if-ne v0, v1, :cond_5

    .line 115
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->onRuledLineStyleClicked()V

    return-void

    .line 116
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->unit_border_style:I

    if-ne v0, v1, :cond_6

    .line 117
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->onUnitBorderStyleClicked()V

    return-void

    .line 118
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->background_color:I

    if-ne v0, v1, :cond_7

    .line 119
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->onBackgroundColorClicked()V

    return-void

    .line 120
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/metamoji/noteanytime/R$id;->vertical_writing:I

    if-ne p1, v0, :cond_8

    .line 121
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->onVerticalWritingClicked()V

    :cond_8
    return-void
.end method

.method public onValueChanged(IIZ)V
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->owner:Lcom/metamoji/ui/dialog/TextUnitStyle;

    int-to-float p2, p2

    const/high16 p3, 0x41200000    # 10.0f

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/dialog/TextUnitStyle;->setLineHeight(F)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 7

    .line 225
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 226
    sget v1, Lcom/metamoji/noteanytime/R$id;->background_color:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiButton;

    .line 227
    sget v2, Lcom/metamoji/noteanytime/R$id;->label_bgcolor:I

    invoke-virtual {p0, v2}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 229
    invoke-static {p1}, Lcom/metamoji/ui/dialog/BackgroundColor;->isColorNone(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 230
    sget p1, Lcom/metamoji/noteanytime/R$string;->TextUnitStyle_None:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 234
    :cond_0
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 235
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x40200000    # 2.5f

    .line 236
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    .line 237
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v5, 0x8

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v6, 0x1

    aput v0, v5, v6

    const/4 v6, 0x2

    aput v0, v5, v6

    const/4 v6, 0x3

    aput v0, v5, v6

    const/4 v6, 0x4

    aput v0, v5, v6

    const/4 v6, 0x5

    aput v0, v5, v6

    const/4 v6, 0x6

    aput v0, v5, v6

    const/4 v6, 0x7

    aput v0, v5, v6

    invoke-direct {v3, v5, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 238
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 239
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 240
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLineHeight(F)V
    .locals 2

    .line 186
    sget v0, Lcom/metamoji/noteanytime/R$id;->lineheight:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiPlainSlider;

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr p1, v1

    .line 187
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue2(I)V

    return-void
.end method

.method public setRuledLineStyle(Lcom/metamoji/un/text/model/RuledLineStyle;)V
    .locals 3

    .line 195
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 196
    sget v1, Lcom/metamoji/noteanytime/R$id;->ruled_line_style:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiButton;

    .line 197
    sget v2, Lcom/metamoji/noteanytime/R$id;->ruledlinestyle_sample:I

    .line 198
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;

    .line 199
    invoke-virtual {v2, p1}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->setRuledLineStyle(Lcom/metamoji/un/text/model/RuledLineStyle;)V

    .line 200
    sget-object v2, Lcom/metamoji/un/text/model/RuledLineStyle;->None:Lcom/metamoji/un/text/model/RuledLineStyle;

    if-ne v2, p1, :cond_0

    .line 201
    sget p1, Lcom/metamoji/noteanytime/R$string;->TextUnitStyle_None:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 204
    :cond_0
    const-string p1, ""

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUnitBorderStyle(Lcom/metamoji/un/text/model/UnitBorderStyle;)V
    .locals 3

    .line 209
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 210
    sget v1, Lcom/metamoji/noteanytime/R$id;->unit_border_style:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiButton;

    .line 211
    sget v2, Lcom/metamoji/noteanytime/R$id;->unitborderstyle_sample:I

    .line 212
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;

    .line 213
    invoke-virtual {v2, p1}, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->setUnitBorderStyle(Lcom/metamoji/un/text/model/UnitBorderStyle;)V

    .line 214
    sget-object v2, Lcom/metamoji/un/text/model/UnitBorderStyle;->None:Lcom/metamoji/un/text/model/UnitBorderStyle;

    if-ne v2, p1, :cond_0

    .line 215
    sget p1, Lcom/metamoji/noteanytime/R$string;->TextUnitStyle_None:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 218
    :cond_0
    const-string p1, ""

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVerticalWriting(Z)V
    .locals 1

    .line 245
    sget v0, Lcom/metamoji/noteanytime/R$id;->vertical_writing:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/TextUnitStyleBorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    .line 246
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton;->setSelected(Z)V

    return-void
.end method
