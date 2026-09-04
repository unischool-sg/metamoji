.class public Lcom/metamoji/mazec/ui/MenuSelectBase;
.super Landroid/widget/FrameLayout;
.source "MenuSelectBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/ui/MenuSelectBase$OnSelectListener;
    }
.end annotation


# instance fields
.field protected mCountOfItemSpace:I

.field private mOnSelectListener:Lcom/metamoji/mazec/ui/MenuSelectBase$OnSelectListener;

.field protected mSelected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/metamoji/mazec/ui/MenuSelectBase;->mSelected:I

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectBase;->mOnSelectListener:Lcom/metamoji/mazec/ui/MenuSelectBase$OnSelectListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/metamoji/mazec/ui/MenuSelectBase;->mSelected:I

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectBase;->mOnSelectListener:Lcom/metamoji/mazec/ui/MenuSelectBase$OnSelectListener;

    return-void
.end method


# virtual methods
.method protected getCountOfItemSpace()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/metamoji/mazec/ui/MenuSelectBase;->mCountOfItemSpace:I

    return v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/metamoji/mazec/ui/MenuSelectBase;->mSelected:I

    return v0
.end method

.method protected initView(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/metamoji/mazec/ui/MenuSelectBase;->mSelected:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 93
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 94
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    if-eq p1, p2, :cond_4

    .line 96
    const-string p1, "id.linearLayoutTop"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    .line 98
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 99
    const-string v0, "dimen.menu_select_item_desire_width"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 100
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MenuSelectBase;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MenuSelectBase;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 103
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 106
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 107
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 108
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v0, p2

    .line 112
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_2

    .line 114
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v3

    add-int/2addr v0, v4

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MenuSelectBase;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/mazec/ui/MenuSelectBase;->setMeasuredDimension(II)V

    :cond_4
    return-void
.end method

.method protected onSelect(I)V
    .locals 1

    .line 44
    iput p1, p0, Lcom/metamoji/mazec/ui/MenuSelectBase;->mSelected:I

    .line 45
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectBase;->mOnSelectListener:Lcom/metamoji/mazec/ui/MenuSelectBase$OnSelectListener;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0, p1}, Lcom/metamoji/mazec/ui/MenuSelectBase$OnSelectListener;->onSelect(I)V

    :cond_0
    return-void
.end method

.method protected setCountOfItemSpace(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/metamoji/mazec/ui/MenuSelectBase;->mCountOfItemSpace:I

    return-void
.end method

.method protected setOnClickListener(II)V
    .locals 1

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/mazec/ui/MenuSelectBase;->setOnClickListener(IIZ)V

    return-void
.end method

.method protected setOnClickListener(IIZ)V
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 75
    new-instance p3, Lcom/metamoji/mazec/ui/MenuSelectBase$1;

    invoke-direct {p3, p0, p2}, Lcom/metamoji/mazec/ui/MenuSelectBase$1;-><init>(Lcom/metamoji/mazec/ui/MenuSelectBase;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/16 p2, 0x8

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setOnSelectListener(Lcom/metamoji/mazec/ui/MenuSelectBase$OnSelectListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectBase;->mOnSelectListener:Lcom/metamoji/mazec/ui/MenuSelectBase$OnSelectListener;

    return-void
.end method
