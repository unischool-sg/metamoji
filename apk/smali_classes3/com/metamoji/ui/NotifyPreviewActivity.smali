.class public Lcom/metamoji/ui/NotifyPreviewActivity;
.super Lcom/metamoji/lib/dialog/task/UtMortalActivity;
.source "NotifyPreviewActivity.java"


# static fields
.field public static Key_DicKey:Ljava/lang/String; = "dickey"

.field public static Key_TitleResourceKey:Ljava/lang/String; = "titleresourcekey"


# instance fields
.field private mDialog:Lcom/metamoji/ui/dialog/NotifyPreview;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/metamoji/ui/NotifyPreviewActivity;->mDialog:Lcom/metamoji/ui/dialog/NotifyPreview;

    return-void
.end method

.method static synthetic lambda$onCreate$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 47
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 48
    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    iget v3, v0, Landroidx/core/graphics/Insets;->right:I

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method


# virtual methods
.method public handleKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 119
    invoke-super {p0, p1, p2}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->handleKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/NotifyPreviewActivity;->finish()V

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 41
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {p0}, Lcom/metamoji/nt/NtStartup;->initialize(Landroidx/fragment/app/FragmentActivity;)V

    .line 44
    sget p1, Lcom/metamoji/noteanytime/R$layout;->activity_notify_preview:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/NotifyPreviewActivity;->setContentView(I)V

    .line 46
    sget p1, Lcom/metamoji/noteanytime/R$id;->root:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/NotifyPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/NotifyPreviewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/ui/NotifyPreviewActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 52
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p1, v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/metamoji/ui/NotifyPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    .line 57
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 59
    invoke-virtual {p0}, Lcom/metamoji/ui/NotifyPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 60
    sget-object v0, Lcom/metamoji/ui/NotifyPreviewActivity;->Key_DicKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    sget-object v1, Lcom/metamoji/ui/NotifyPreviewActivity;->Key_TitleResourceKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 64
    invoke-virtual {p0}, Lcom/metamoji/ui/NotifyPreviewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 65
    instance-of v2, v1, Lcom/metamoji/ui/dialog/NotifyPreview;

    if-eqz v2, :cond_1

    .line 67
    move-object v2, v1

    check-cast v2, Lcom/metamoji/ui/dialog/NotifyPreview;

    iput-object v2, p0, Lcom/metamoji/ui/NotifyPreviewActivity;->mDialog:Lcom/metamoji/ui/dialog/NotifyPreview;

    goto :goto_0

    .line 71
    :cond_1
    new-instance v2, Lcom/metamoji/ui/dialog/NotifyPreview;

    invoke-direct {v2}, Lcom/metamoji/ui/dialog/NotifyPreview;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ui/NotifyPreviewActivity;->mDialog:Lcom/metamoji/ui/dialog/NotifyPreview;

    .line 73
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/NotifyPreviewActivity;->mDialog:Lcom/metamoji/ui/dialog/NotifyPreview;

    new-instance v3, Lcom/metamoji/ui/NotifyPreviewActivity$1;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/NotifyPreviewActivity$1;-><init>(Lcom/metamoji/ui/NotifyPreviewActivity;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/dialog/NotifyPreview;->setOnNotifyPreviewClosedListener(Lcom/metamoji/ui/dialog/NotifyPreview$OnNotifyPreviewClosedListener;)V

    .line 80
    iget-object v2, p0, Lcom/metamoji/ui/NotifyPreviewActivity;->mDialog:Lcom/metamoji/ui/dialog/NotifyPreview;

    invoke-virtual {v2, p1}, Lcom/metamoji/ui/dialog/NotifyPreview;->setTitle(I)V

    .line 81
    invoke-static {v0}, Lcom/metamoji/nt/notify/NtSysInfoManager;->GetStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-object v2, p0, Lcom/metamoji/ui/NotifyPreviewActivity;->mDialog:Lcom/metamoji/ui/dialog/NotifyPreview;

    invoke-virtual {v2, p1}, Lcom/metamoji/ui/dialog/NotifyPreview;->setUrl(Ljava/lang/String;)V

    if-nez v1, :cond_2

    .line 84
    iget-object p1, p0, Lcom/metamoji/ui/NotifyPreviewActivity;->mDialog:Lcom/metamoji/ui/dialog/NotifyPreview;

    invoke-virtual {p0}, Lcom/metamoji/ui/NotifyPreviewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/ui/dialog/NotifyPreview;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 114
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 102
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onPause()V

    .line 103
    invoke-virtual {p0}, Lcom/metamoji/ui/NotifyPreviewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {p0}, Lcom/metamoji/ui/dialog/UiDialog;->dismissAllDialogs(Landroidx/fragment/app/FragmentActivity;)V

    .line 106
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->unregisterActivity(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onResume()V

    .line 94
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method
