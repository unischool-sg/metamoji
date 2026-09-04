.class public Lcom/metamoji/lc/LicenseKeyInputProxyActivity;
.super Lcom/metamoji/lib/dialog/task/UtMortalActivity;
.source "LicenseKeyInputProxyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;-><init>()V

    return-void
.end method

.method public static show(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/metamoji/lc/LicenseKeyInputProxyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public handleKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 79
    invoke-super {p0, p1, p2}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->handleKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    return v1

    .line 86
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 39
    new-instance p1, Lcom/metamoji/lc/LicenseKeyInputProxyActivity$1;

    invoke-direct {p1, p0, p0}, Lcom/metamoji/lc/LicenseKeyInputProxyActivity$1;-><init>(Lcom/metamoji/lc/LicenseKeyInputProxyActivity;Landroidx/fragment/app/FragmentActivity;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 49
    invoke-virtual {p1, v0}, Lcom/metamoji/lc/LicenseKeyInputProxyActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 54
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 65
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onPause()V

    .line 66
    invoke-virtual {p0}, Lcom/metamoji/lc/LicenseKeyInputProxyActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p0}, Lcom/metamoji/ui/dialog/UiDialog;->dismissAllDialogs(Landroidx/fragment/app/FragmentActivity;)V

    .line 69
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->unregisterActivity(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 59
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onResume()V

    .line 60
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method
