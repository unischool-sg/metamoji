.class public Lcom/metamoji/ui/cabinet/ShareViewGridLayout;
.super Landroid/widget/GridLayout;
.source "ShareViewGridLayout.java"


# instance fields
.field public _selectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/cabinet/ShareViewGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/cabinet/ShareViewGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/metamoji/ui/cabinet/ShareViewGridLayout;->_selectedPosition:I

    return-void
.end method


# virtual methods
.method getItemView(I)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewGridLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/ShareViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setItemViewActivated(IZ)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/ShareViewGridLayout;->getItemView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    :cond_0
    return-void
.end method

.method updateScrollPosition()V
    .locals 1

    .line 58
    iget v0, p0, Lcom/metamoji/ui/cabinet/ShareViewGridLayout;->_selectedPosition:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewGridLayout;->getChildCount()I

    :cond_0
    return-void
.end method
