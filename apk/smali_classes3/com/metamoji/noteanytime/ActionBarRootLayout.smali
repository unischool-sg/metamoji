.class public Lcom/metamoji/noteanytime/ActionBarRootLayout;
.super Landroid/widget/FrameLayout;
.source "ActionBarRootLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/noteanytime/ActionBarRootLayout$HeightChangedEventArg;
    }
.end annotation


# instance fields
.field public onHeightChangedListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/noteanytime/ActionBarRootLayout$HeightChangedEventArg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance p1, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p1}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBarRootLayout;->onHeightChangedListener:Lcom/metamoji/cm/CmEventListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p1, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p1}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBarRootLayout;->onHeightChangedListener:Lcom/metamoji/cm/CmEventListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance p1, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p1}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBarRootLayout;->onHeightChangedListener:Lcom/metamoji/cm/CmEventListener;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 47
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_3

    .line 50
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Viewport;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    .line 51
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->getFocusedTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->focusToViewForSoftInputAndShowSoftInput(Z)V

    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Viewport;->requestFocus()Z

    .line 58
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    if-eq p2, p4, :cond_0

    .line 65
    iget-object p1, p0, Lcom/metamoji/noteanytime/ActionBarRootLayout;->onHeightChangedListener:Lcom/metamoji/cm/CmEventListener;

    new-instance p3, Lcom/metamoji/noteanytime/ActionBarRootLayout$HeightChangedEventArg;

    invoke-direct {p3, p0, p2}, Lcom/metamoji/noteanytime/ActionBarRootLayout$HeightChangedEventArg;-><init>(Lcom/metamoji/noteanytime/ActionBarRootLayout;I)V

    invoke-virtual {p1, p3}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
