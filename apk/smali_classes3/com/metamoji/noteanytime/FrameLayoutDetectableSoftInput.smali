.class public Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;
.super Landroid/widget/FrameLayout;
.source "FrameLayoutDetectableSoftInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$OnShowHideSoftInputListener;
    }
.end annotation


# instance fields
.field private _detectable:Z

.field _mainLooperHandler:Landroid/os/Handler;

.field _onHideSoftInputRunnable:Ljava/lang/Runnable;

.field _onShowHideSoftInputListener:Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$OnShowHideSoftInputListener;

.field _onShowSoftInputRunnable:Ljava/lang/Runnable;

.field private _tmpPt:Landroid/graphics/Point;

.field private _tmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_mainLooperHandler:Landroid/os/Handler;

    .line 46
    new-instance p1, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$1;

    invoke-direct {p1, p0}, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$1;-><init>(Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;)V

    iput-object p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_onShowSoftInputRunnable:Ljava/lang/Runnable;

    .line 53
    new-instance p1, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$2;

    invoke-direct {p1, p0}, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$2;-><init>(Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;)V

    iput-object p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_onHideSoftInputRunnable:Ljava/lang/Runnable;

    .line 61
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_tmpRect:Landroid/graphics/Rect;

    .line 62
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_tmpPt:Landroid/graphics/Point;

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_detectable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_mainLooperHandler:Landroid/os/Handler;

    .line 46
    new-instance p1, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$1;

    invoke-direct {p1, p0}, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$1;-><init>(Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;)V

    iput-object p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_onShowSoftInputRunnable:Ljava/lang/Runnable;

    .line 53
    new-instance p1, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$2;

    invoke-direct {p1, p0}, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$2;-><init>(Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;)V

    iput-object p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_onHideSoftInputRunnable:Ljava/lang/Runnable;

    .line 61
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_tmpRect:Landroid/graphics/Rect;

    .line 62
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_tmpPt:Landroid/graphics/Point;

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_detectable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_mainLooperHandler:Landroid/os/Handler;

    .line 46
    new-instance p1, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$1;

    invoke-direct {p1, p0}, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$1;-><init>(Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;)V

    iput-object p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_onShowSoftInputRunnable:Ljava/lang/Runnable;

    .line 53
    new-instance p1, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$2;

    invoke-direct {p1, p0}, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$2;-><init>(Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;)V

    iput-object p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_onHideSoftInputRunnable:Ljava/lang/Runnable;

    .line 61
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_tmpRect:Landroid/graphics/Rect;

    .line 62
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_tmpPt:Landroid/graphics/Point;

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_detectable:Z

    return-void
.end method


# virtual methods
.method public isSoftInputVisible()Z
    .locals 2

    .line 97
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->retainData()Lcom/metamoji/nt/NtRetainData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    const-string/jumbo v1, "softInputVisible"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtRetainData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 66
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 68
    iget-boolean p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_detectable:Z

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 71
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 73
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/FragmentActivity;

    .line 74
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 75
    iget-object v0, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_tmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 76
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    iget-object v1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_tmpPt:Landroid/graphics/Point;

    invoke-virtual {p2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 77
    iget-object p2, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_tmpPt:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, v0

    sub-int/2addr p2, p1

    .line 79
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 80
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->retainData()Lcom/metamoji/nt/NtRetainData;

    move-result-object v0

    if-eqz v0, :cond_2

    int-to-float p2, p2

    const/high16 v1, 0x43160000    # 150.0f

    mul-float/2addr p1, v1

    cmpl-float p1, p2, p1

    .line 82
    const-string/jumbo p2, "softInputVisible"

    if-ltz p1, :cond_1

    .line 83
    invoke-virtual {v0, p2}, Lcom/metamoji/nt/NtRetainData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 84
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/metamoji/nt/NtRetainData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    iget-object p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_mainLooperHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_onShowSoftInputRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 88
    :cond_1
    invoke-virtual {v0, p2}, Lcom/metamoji/nt/NtRetainData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 89
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/metamoji/nt/NtRetainData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    iget-object p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_mainLooperHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_onHideSoftInputRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setDetectable(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_detectable:Z

    return-void
.end method

.method public setOnShowHideSoftInputListener(Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$OnShowHideSoftInputListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_onShowHideSoftInputListener:Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$OnShowHideSoftInputListener;

    return-void
.end method
