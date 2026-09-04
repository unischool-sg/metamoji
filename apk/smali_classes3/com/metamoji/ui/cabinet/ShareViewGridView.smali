.class public Lcom/metamoji/ui/cabinet/ShareViewGridView;
.super Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
.source "ShareViewGridView.java"


# instance fields
.field public _selectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/cabinet/ShareViewGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/cabinet/ShareViewGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/metamoji/ui/cabinet/ShareViewGridView;->_selectedPosition:I

    return-void
.end method


# virtual methods
.method getItemView(I)Landroid/view/View;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewGridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    if-ltz p1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewGridView;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/ShareViewGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setItemViewActivated(IZ)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/ShareViewGridView;->getItemView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    :cond_0
    return-void
.end method

.method updateScrollPosition()V
    .locals 2

    .line 59
    iget v0, p0, Lcom/metamoji/ui/cabinet/ShareViewGridView;->_selectedPosition:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewGridView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 60
    iget v0, p0, Lcom/metamoji/ui/cabinet/ShareViewGridView;->_selectedPosition:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ShareViewGridView;->setSelection(I)V

    :cond_0
    return-void
.end method
