.class public Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "ExtHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/ui/ExtHorizontalScrollView$OnHorizontalScrollListener;
    }
.end annotation


# instance fields
.field private mDisableFling:Z

.field private mScrollListener:Lcom/metamoji/mazec/ui/ExtHorizontalScrollView$OnHorizontalScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput-object v0, p0, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->mScrollListener:Lcom/metamoji/mazec/ui/ExtHorizontalScrollView$OnHorizontalScrollListener;

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->mDisableFling:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->mScrollListener:Lcom/metamoji/mazec/ui/ExtHorizontalScrollView$OnHorizontalScrollListener;

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->mDisableFling:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->mScrollListener:Lcom/metamoji/mazec/ui/ExtHorizontalScrollView$OnHorizontalScrollListener;

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->mDisableFling:Z

    return-void
.end method


# virtual methods
.method public canScrollLeft()Z
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->computeHorizontalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canScrollRight()Z
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->getScrollX()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public disableFling(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->mDisableFling:Z

    return-void
.end method

.method public fling(I)V
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->mDisableFling:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 68
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->fling(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 126
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 127
    iget-object p2, p1, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->mScrollListener:Lcom/metamoji/mazec/ui/ExtHorizontalScrollView$OnHorizontalScrollListener;

    if-eqz p2, :cond_0

    .line 128
    invoke-interface {p2, p0}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView$OnHorizontalScrollListener;->onLayouting(Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;)V

    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 116
    iget-object v0, p0, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->mScrollListener:Lcom/metamoji/mazec/ui/ExtHorizontalScrollView$OnHorizontalScrollListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 117
    invoke-interface/range {v0 .. v5}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView$OnHorizontalScrollListener;->onScrollChanged(Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;IIII)V

    :cond_0
    return-void
.end method

.method public setScrollListener(Lcom/metamoji/mazec/ui/ExtHorizontalScrollView$OnHorizontalScrollListener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->mScrollListener:Lcom/metamoji/mazec/ui/ExtHorizontalScrollView$OnHorizontalScrollListener;

    return-void
.end method
