.class public Lcom/metamoji/nt/itemlist/NtItemListScrollView$NtItemListVerticalScrollView;
.super Landroid/widget/ScrollView;
.source "NtItemListScrollView.java"

# interfaces
.implements Lcom/metamoji/nt/itemlist/NtItemListScrollView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/itemlist/NtItemListScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NtItemListVerticalScrollView"
.end annotation


# instance fields
.field private m_listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListScrollView$NtItemListVerticalScrollView;->m_listener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListScrollView$NtItemListVerticalScrollView;->m_listener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListScrollView$NtItemListVerticalScrollView;->m_listener:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListScrollView$NtItemListVerticalScrollView;->m_listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListScrollView$NtItemListVerticalScrollView;->m_listener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public getDistance()I
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemListScrollView$NtItemListVerticalScrollView;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemListScrollView$NtItemListVerticalScrollView;->getHeight()I

    move-result v0

    return v0
.end method

.method public isVertical()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isViewInScreen(Landroid/view/View;)Z
    .locals 5

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v1, p1

    .line 43
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemListScrollView$NtItemListVerticalScrollView;->getScrollY()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemListScrollView$NtItemListVerticalScrollView;->getScrollY()I

    move-result p1

    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemListScrollView$NtItemListVerticalScrollView;->getHeight()I

    move-result v4

    add-int/2addr p1, v4

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    .line 44
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemListScrollView$NtItemListVerticalScrollView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemListScrollView$NtItemListVerticalScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemListScrollView$NtItemListVerticalScrollView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 56
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListScrollView$NtItemListVerticalScrollView;->m_listener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;->onScrollViewScrollChanged(IIII)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 64
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListScrollView$NtItemListVerticalScrollView;->m_listener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;->onScrollViewSizeChanged(IIII)V

    :cond_0
    return-void
.end method

.method public setNtItemListListener(Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;)V
    .locals 1

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListScrollView$NtItemListVerticalScrollView;->m_listener:Ljava/lang/ref/WeakReference;

    return-void
.end method
