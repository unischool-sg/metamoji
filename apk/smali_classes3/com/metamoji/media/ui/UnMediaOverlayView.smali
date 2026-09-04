.class public Lcom/metamoji/media/ui/UnMediaOverlayView;
.super Landroidx/fragment/app/DialogFragment;
.source "UnMediaOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;
    }
.end annotation


# instance fields
.field private _globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field _guardView:Landroid/view/View;

.field _listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fget_globalLayoutListener(Lcom/metamoji/media/ui/UnMediaOverlayView;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_globalLayoutListener(Lcom/metamoji/media/ui/UnMediaOverlayView;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetListener(Lcom/metamoji/media/ui/UnMediaOverlayView;)Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->getListener()Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 208
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_listener:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0, v0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->setRetainInstance(Z)V

    return-void
.end method

.method private getListener()Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_listener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private removeGuardView()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_guardView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_guardView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_guardView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_guardView:Landroid/view/View;

    return-void
.end method

.method private removeSubviews()V
    .locals 1

    .line 158
    invoke-direct {p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->getListener()Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->getListener()Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;->removeSubviews()V

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->removeGuardView()V

    return-void
.end method


# virtual methods
.method public getGuardView()Landroid/view/View;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_guardView:Landroid/view/View;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->dismissAllowingStateLoss()V

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->removeSubviews()V

    return-void
.end method

.method public isVisibleGuardView()Z
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_guardView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 191
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 358
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    const/4 v0, 0x1

    .line 219
    invoke-virtual {p0, v0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->setRetainInstance(Z)V

    .line 221
    new-instance v0, Lcom/metamoji/media/ui/UnMediaOverlayView$1;

    invoke-virtual {p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$style;->UiProgressRingTheme:I

    invoke-direct {v0, p0, v1, v2}, Lcom/metamoji/media/ui/UnMediaOverlayView$1;-><init>(Lcom/metamoji/media/ui/UnMediaOverlayView;Landroid/content/Context;I)V

    if-eqz p1, :cond_2

    .line 249
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 250
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    if-nez v1, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->dismissAllowingStateLoss()V

    .line 253
    invoke-direct {p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->removeSubviews()V

    return-object v0

    .line 256
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getSoundUnitManager()Lcom/metamoji/un/sound/UnSoundUnitManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 257
    invoke-virtual {v1}, Lcom/metamoji/un/sound/UnSoundUnitManager;->getActiveUnit()Lcom/metamoji/un/sound/UnSoundUnit;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 258
    const-string v1, "playerBarVisibility"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 259
    const-string v2, "recorderBarVisibility"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->dismissAllowingStateLoss()V

    .line 262
    invoke-direct {p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->removeSubviews()V

    return-object v0

    :cond_2
    const/16 v1, 0x8

    move p1, v1

    .line 268
    :goto_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 275
    invoke-virtual {p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/metamoji/noteanytime/R$layout;->media_overlay_view:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_guardView:Landroid/view/View;

    .line 276
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v2, p0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_guardView:Landroid/view/View;

    new-instance v3, Lcom/metamoji/media/ui/UnMediaOverlayView$2;

    invoke-direct {v3, p0}, Lcom/metamoji/media/ui/UnMediaOverlayView$2;-><init>(Lcom/metamoji/media/ui/UnMediaOverlayView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 298
    invoke-direct {p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->getListener()Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 299
    invoke-direct {p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->getListener()Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_guardView:Landroid/view/View;

    invoke-interface {v2, v3}, Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;->addSubviews(Landroid/view/View;)V

    .line 303
    :cond_3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 307
    new-instance v2, Lcom/metamoji/media/ui/UnMediaOverlayView$3;

    invoke-direct {v2, p0, v1, p1}, Lcom/metamoji/media/ui/UnMediaOverlayView$3;-><init>(Lcom/metamoji/media/ui/UnMediaOverlayView;II)V

    iput-object v2, p0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 351
    iget-object p1, p0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_guardView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v1, p0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .line 103
    invoke-virtual {p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 106
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 135
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 117
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 119
    invoke-virtual {p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->dismissAllowingStateLoss()V

    .line 123
    invoke-direct {p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->removeSubviews()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 70
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 72
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_guardView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 73
    sget v1, Lcom/metamoji/noteanytime/R$id;->player_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 76
    const-string v1, "playerBarVisibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_guardView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->recorder_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 81
    const-string v1, "recorderBarVisibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 91
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 92
    invoke-virtual {p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->getDialog()Landroid/app/Dialog;

    return-void
.end method

.method public setListener(Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_listener:Ljava/lang/ref/WeakReference;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaOverlayView;->_listener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public show()Z
    .locals 2

    .line 139
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "UnMediaOverlayView"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/media/ui/UnMediaOverlayView;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
