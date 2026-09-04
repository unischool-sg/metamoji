.class Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;
.super Landroid/widget/LinearLayout;
.source "MenuSelectLanguageArranger.java"


# instance fields
.field private mArrangementFixed:Z

.field private mBuyLanguageButtonOnAloneRow:Landroid/view/View;

.field private mBuyLanguageButtonOnMenuSelect:Landroid/view/View;

.field private mLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuSelectLanguage:Lcom/metamoji/mazec/ui/MenuSelectLanguage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mArrangementFixed:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mArrangementFixed:Z

    return-void
.end method


# virtual methods
.method getSelectedLanguage()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mMenuSelectLanguage:Lcom/metamoji/mazec/ui/MenuSelectLanguage;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->getSelectedLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method initView(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mMenuSelectLanguage:Lcom/metamoji/mazec/ui/MenuSelectLanguage;

    .line 45
    iput-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mBuyLanguageButtonOnMenuSelect:Landroid/view/View;

    .line 46
    iput-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mBuyLanguageButtonOnAloneRow:Landroid/view/View;

    .line 47
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mLanguages:Ljava/util/List;

    .line 48
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mMenuSelectLanguage:Lcom/metamoji/mazec/ui/MenuSelectLanguage;

    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mLanguages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 58
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 59
    const-string v2, "dimen.menu_select_height"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 60
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->isLanguageMenuVisible()Z

    move-result v2

    .line 72
    iget-object v3, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mMenuSelectLanguage:Lcom/metamoji/mazec/ui/MenuSelectLanguage;

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v2, :cond_1

    .line 61
    invoke-virtual {v3, v4}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->setVisibility(I)V

    .line 62
    iget-object v2, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mMenuSelectLanguage:Lcom/metamoji/mazec/ui/MenuSelectLanguage;

    iget-object v3, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mLanguages:Ljava/util/List;

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->initView(Ljava/util/List;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mMenuSelectLanguage:Lcom/metamoji/mazec/ui/MenuSelectLanguage;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->getCountOfLangButton()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->setCountOfItemSpace(I)V

    .line 64
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mMenuSelectLanguage:Lcom/metamoji/mazec/ui/MenuSelectLanguage;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 65
    iget-object v2, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mMenuSelectLanguage:Lcom/metamoji/mazec/ui/MenuSelectLanguage;

    invoke-virtual {v2}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->getCountOfLangButtonInRow()I

    move-result v2

    if-le v0, v2, :cond_0

    mul-int/lit8 v0, v1, 0x2

    .line 66
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 68
    :cond_0
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mMenuSelectLanguage:Lcom/metamoji/mazec/ui/MenuSelectLanguage;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v3, v5}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->setVisibility(I)V

    .line 74
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->isBuyButtonVisible()Z

    move-result p1

    .line 84
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mBuyLanguageButtonOnMenuSelect:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 76
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 77
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mBuyLanguageButtonOnMenuSelect:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mBuyLanguageButtonOnMenuSelect:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mBuyLanguageButtonOnAloneRow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 80
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 81
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mBuyLanguageButtonOnAloneRow:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mBuyLanguageButtonOnAloneRow:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 84
    :cond_2
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mBuyLanguageButtonOnAloneRow:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method isBuyButtonVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isLanguageMenuVisible()Z
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mMenuSelectLanguage:Lcom/metamoji/mazec/ui/MenuSelectLanguage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mLanguages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 113
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 116
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 117
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->getMeasuredWidth()I

    move-result p2

    .line 118
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 119
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mArrangementFixed:Z

    if-nez v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->isBuyButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->isLanguageMenuVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 122
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 124
    const-string v1, "dimen.menu_select_height"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 125
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mLanguages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 126
    iget-object v2, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mMenuSelectLanguage:Lcom/metamoji/mazec/ui/MenuSelectLanguage;

    invoke-virtual {v2}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->getCountOfLangButtonInRow()I

    move-result v2

    .line 127
    iget-object v3, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mBuyLanguageButtonOnMenuSelect:Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 128
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 127
    invoke-virtual {v3, v5, p1}, Landroid/view/View;->measure(II)V

    .line 129
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mBuyLanguageButtonOnMenuSelect:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float v0, v2

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    mul-float/2addr v0, p2

    float-to-double p1, v0

    .line 130
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    if-gt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    if-le v1, v2, :cond_1

    add-int/2addr v2, p1

    if-gt v1, v2, :cond_1

    goto :goto_0

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mBuyLanguageButtonOnAloneRow:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mBuyLanguageButtonOnMenuSelect:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->requestLayout()V

    :goto_0
    const/4 p1, 0x1

    .line 142
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mArrangementFixed:Z

    :cond_2
    return-void
.end method

.method setBuyLanguageButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mBuyLanguageButtonOnMenuSelect:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mBuyLanguageButtonOnAloneRow:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method setCountOfItemSpace(I)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mMenuSelectLanguage:Lcom/metamoji/mazec/ui/MenuSelectLanguage;

    if-nez v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mLanguages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 191
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mMenuSelectLanguage:Lcom/metamoji/mazec/ui/MenuSelectLanguage;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->setCountOfItemSpace(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method setLanguageSelectedListener(Lcom/metamoji/mazec/ui/MenuSelectBase$OnSelectListener;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->mMenuSelectLanguage:Lcom/metamoji/mazec/ui/MenuSelectLanguage;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->setOnSelectListener(Lcom/metamoji/mazec/ui/MenuSelectBase$OnSelectListener;)V

    :cond_0
    return-void
.end method
