.class Lcom/metamoji/ui/CustomMenuView$OnCustomGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CustomMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/CustomMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnCustomGestureListener"
.end annotation


# instance fields
.field mOwner:Lcom/metamoji/ui/CustomMenuView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/CustomMenuView;)V
    .locals 0

    .line 187
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/metamoji/ui/CustomMenuView$OnCustomGestureListener;->mOwner:Lcom/metamoji/ui/CustomMenuView;

    return-void
.end method


# virtual methods
.method dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView$OnCustomGestureListener;->mOwner:Lcom/metamoji/ui/CustomMenuView;

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 197
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    .line 198
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView$OnCustomGestureListener;->mOwner:Lcom/metamoji/ui/CustomMenuView;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$OnCustomGestureListener;->mOwner:Lcom/metamoji/ui/CustomMenuView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 204
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$OnCustomGestureListener;->mOwner:Lcom/metamoji/ui/CustomMenuView;

    iget-object v1, v1, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    invoke-virtual {v1}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$OnCustomGestureListener;->mOwner:Lcom/metamoji/ui/CustomMenuView;

    iget-object v1, v1, Lcom/metamoji/ui/CustomMenuView;->_menuContainer:Lcom/metamoji/ui/menu/UiContextSubMenuContainer;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    .line 206
    invoke-static {v1}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->-$$Nest$fget_ispush(Lcom/metamoji/ui/CustomMenuView$MenuItemView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    invoke-virtual {v1}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->clearState()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method
