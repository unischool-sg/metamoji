.class public Lcom/metamoji/ns/ui/NsCollaboProgressView;
.super Ljava/lang/Object;
.source "NsCollaboProgressView.java"


# static fields
.field static HIDE_DELAY_TIME:I = 0xfa0


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static progress(I)Lcom/metamoji/ui/UiToast;
    .locals 3

    .line 45
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "HideWaitIndicator"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 50
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 53
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, -0x1

    invoke-static {v0, v2, p0}, Lcom/metamoji/ui/UiToast;->showProgress(Landroid/view/View;ILjava/lang/String;)Lcom/metamoji/ui/UiToast;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 56
    :catchall_0
    const-string p0, "Collabo: cannot display progress."

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public static toast(I)V
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/ns/ui/NsCollaboProgressView;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public static toast(Ljava/lang/String;)V
    .locals 3

    .line 28
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "HideWaitIndicator"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 36
    sget v1, Lcom/metamoji/ns/ui/NsCollaboProgressView;->HIDE_DELAY_TIME:I

    invoke-static {v0, v1, p0}, Lcom/metamoji/ui/UiToast;->showText(Landroid/view/View;ILjava/lang/String;)Lcom/metamoji/ui/UiToast;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return-void

    .line 39
    :catchall_0
    const-string p0, "Collabo: cannot toast"

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void
.end method
