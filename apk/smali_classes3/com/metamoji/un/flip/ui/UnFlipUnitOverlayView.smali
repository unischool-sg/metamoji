.class public Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;
.super Landroidx/fragment/app/DialogFragment;
.source "UnFlipUnitOverlayView.java"


# instance fields
.field private _globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field _guardView:Landroid/view/View;

.field delegate_:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/un/flip/ui/IUnFlipUnitOverlayViewDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$oBcSITZEFwXb3UubV_ZM0jM68FU(Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->lambda$onCreateDialog$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$vcwn0k_koS4daMfbozZMUw34RY8(Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->lambda$onCreateDialog$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 164
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->delegate_:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, v0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->setRetainInstance(Z)V

    return-void
.end method

.method private getListener()Lcom/metamoji/un/flip/ui/IUnFlipUnitOverlayViewDelegate;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->delegate_:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/flip/ui/IUnFlipUnitOverlayViewDelegate;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 208
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->getListener()Lcom/metamoji/un/flip/ui/IUnFlipUnitOverlayViewDelegate;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 213
    invoke-direct {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->getListener()Lcom/metamoji/un/flip/ui/IUnFlipUnitOverlayViewDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/un/flip/ui/IUnFlipUnitOverlayViewDelegate;->tappedOverlayView()V

    :cond_1
    :goto_0
    return p2
.end method

.method private synthetic lambda$onCreateDialog$1()V
    .locals 2

    .line 231
    invoke-direct {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->getListener()Lcom/metamoji/un/flip/ui/IUnFlipUnitOverlayViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->getListener()Lcom/metamoji/un/flip/ui/IUnFlipUnitOverlayViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/un/flip/ui/IUnFlipUnitOverlayViewDelegate;->onGlobalLayout()V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->_guardView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 240
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method private removeGuardView()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->_guardView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->_guardView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->_guardView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->_guardView:Landroid/view/View;

    return-void
.end method

.method private removeSubviews()V
    .locals 1

    .line 122
    invoke-direct {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->getListener()Lcom/metamoji/un/flip/ui/IUnFlipUnitOverlayViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->getListener()Lcom/metamoji/un/flip/ui/IUnFlipUnitOverlayViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/un/flip/ui/IUnFlipUnitOverlayViewDelegate;->removeSubviews()V

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->removeGuardView()V

    return-void
.end method


# virtual methods
.method public getGuardView()Landroid/view/View;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->_guardView:Landroid/view/View;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->dismissAllowingStateLoss()V

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->removeSubviews()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const/4 p1, 0x1

    .line 176
    invoke-virtual {p0, p1}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->setRetainInstance(Z)V

    .line 178
    new-instance p1, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView$1;

    invoke-virtual {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$style;->UiProgressRingTheme:I

    invoke-direct {p1, p0, v0, v1}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView$1;-><init>(Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;Landroid/content/Context;I)V

    .line 196
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 203
    invoke-virtual {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$layout;->flip_unit_overlay_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->_guardView:Landroid/view/View;

    .line 204
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->_guardView:Landroid/view/View;

    new-instance v1, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 223
    invoke-direct {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->getListener()Lcom/metamoji/un/flip/ui/IUnFlipUnitOverlayViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->getListener()Lcom/metamoji/un/flip/ui/IUnFlipUnitOverlayViewDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->_guardView:Landroid/view/View;

    sget v2, Lcom/metamoji/noteanytime/R$id;->main:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/metamoji/un/flip/ui/IUnFlipUnitOverlayViewDelegate;->addSubviews(Landroid/view/View;)V

    .line 228
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 230
    new-instance v0, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;)V

    iput-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 243
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->_guardView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 76
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 102
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 86
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 88
    invoke-virtual {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->dismissAllowingStateLoss()V

    .line 92
    invoke-direct {p0}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->removeSubviews()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 66
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    return-void
.end method

.method public setOverlayViewDelegate(Lcom/metamoji/un/flip/ui/IUnFlipUnitOverlayViewDelegate;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->delegate_:Ljava/lang/ref/WeakReference;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->delegate_:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public show()V
    .locals 2

    .line 106
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "UnFlipUnitOverlayView"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
