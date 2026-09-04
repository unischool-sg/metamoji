.class public Lcom/metamoji/ui/menu/UiMenuScrollView;
.super Landroid/widget/ScrollView;
.source "UiMenuScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 15
    invoke-virtual {p0}, Lcom/metamoji/ui/menu/UiMenuScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/menu/UiMenuScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 17
    instance-of v2, v1, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    if-eqz v2, :cond_1

    .line 18
    check-cast v1, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    .line 19
    invoke-virtual {v1}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    .line 21
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 22
    instance-of v4, v3, Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    if-eqz v4, :cond_0

    .line 23
    check-cast v3, Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    .line 24
    invoke-virtual {v3}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->is_ispush()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 25
    invoke-virtual {v3}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->clearState()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
