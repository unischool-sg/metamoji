.class public Lcom/metamoji/mazec/TrialActivationGuideActivity;
.super Landroid/app/Activity;
.source "TrialActivationGuideActivity.java"


# static fields
.field private static final CONNECT_TIMEOUT:I = 0xbb8

.field private static final KEY_DAYS:Ljava/lang/String; = "i_days"

.field private static final KEY_DEVICEID:Ljava/lang/String; = "tt_deviceid"

.field private static final KEY_HASH:Ljava/lang/String; = "tt_hash"

.field private static final KEY_PRODUCTID:Ljava/lang/String; = "tt_productid"

.field private static final KEY_RESULT:Ljava/lang/String; = "i_result"

.field private static final SOCKET_TIMEOUT:I = 0xbb8


# direct methods
.method static bridge synthetic -$$Nest$mactivate(Lcom/metamoji/mazec/TrialActivationGuideActivity;)I
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/mazec/TrialActivationGuideActivity;->activate()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mfinishWithResult(Lcom/metamoji/mazec/TrialActivationGuideActivity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/TrialActivationGuideActivity;->finishWithResult(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowAlertDialog(Lcom/metamoji/mazec/TrialActivationGuideActivity;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/TrialActivationGuideActivity;->showAlertDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private activate()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private finishWithResult(IZ)V
    .locals 2

    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 119
    const-string v1, "activated"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/mazec/TrialActivationGuideActivity;->setResult(ILandroid/content/Intent;)V

    .line 121
    invoke-virtual {p0}, Lcom/metamoji/mazec/TrialActivationGuideActivity;->finish()V

    return-void
.end method

.method public static isActivated(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private isConnected()Z
    .locals 1

    .line 138
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/TrialActivationGuideActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 139
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private showAlertDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 125
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const-string/jumbo v0, "string.dialog_button_ok"

    .line 127
    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/metamoji/mazec/TrialActivationGuideActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 41
    const-string p1, "layout.trial_activation_guide_main"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/TrialActivationGuideActivity;->setContentView(I)V

    .line 43
    const-string p1, "id.register"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/TrialActivationGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 45
    new-instance v1, Lcom/metamoji/mazec/TrialActivationGuideActivity$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/metamoji/mazec/TrialActivationGuideActivity$1;-><init>(Lcom/metamoji/mazec/TrialActivationGuideActivity;Landroid/widget/Button;Landroid/os/Handler;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 109
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/TrialActivationGuideActivity;->setResult(I)V

    .line 110
    invoke-virtual {p0}, Lcom/metamoji/mazec/TrialActivationGuideActivity;->finish()V

    return p1

    .line 113
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
