.class public Lcom/metamoji/ui/UiDialogProvider;
.super Ljava/lang/Object;
.source "UiDialogProvider.java"

# interfaces
.implements Lcom/metamoji/cm/ICmUIProvider;


# static fields
.field private static sInstance:Lcom/metamoji/ui/UiDialogProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/metamoji/ui/UiDialogProvider;
    .locals 1

    .line 29
    sget-object v0, Lcom/metamoji/ui/UiDialogProvider;->sInstance:Lcom/metamoji/ui/UiDialogProvider;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/metamoji/ui/UiDialogProvider;

    invoke-direct {v0}, Lcom/metamoji/ui/UiDialogProvider;-><init>()V

    sput-object v0, Lcom/metamoji/ui/UiDialogProvider;->sInstance:Lcom/metamoji/ui/UiDialogProvider;

    .line 32
    :cond_0
    sget-object v0, Lcom/metamoji/ui/UiDialogProvider;->sInstance:Lcom/metamoji/ui/UiDialogProvider;

    return-object v0
.end method

.method private getResourceString(I)Ljava/lang/String;
    .locals 1

    .line 59
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$runWithActivity$1(Lcom/metamoji/cm/ICmUIProvider$ICallWithActivity;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 108
    invoke-interface {p0, p1}, Lcom/metamoji/cm/ICmUIProvider$ICallWithActivity;->run(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method static synthetic lambda$showAlertDialog$0(Lcom/metamoji/ui/dialog/UiAlertDialog;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 102
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    if-nez p1, :cond_0

    const-string p1, "AlertDialog"

    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createAlertDialogBuilder(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 2

    const/16 v0, 0x15

    .line 69
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->checkOsVersion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 73
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/metamoji/noteanytime/R$style;->UiAlertDialogTheme:I

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public getResourceString(Lcom/metamoji/cm/ICmUIProvider$ResourceId;)Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/metamoji/ui/UiDialogProvider$1;->$SwitchMap$com$metamoji$cm$ICmUIProvider$ResourceId:[I

    invoke-virtual {p1}, Lcom/metamoji/cm/ICmUIProvider$ResourceId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 47
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    invoke-direct {p0, p1}, Lcom/metamoji/ui/UiDialogProvider;->getResourceString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 45
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    invoke-direct {p0, p1}, Lcom/metamoji/ui/UiDialogProvider;->getResourceString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public runWithActivity(Lcom/metamoji/cm/ICmUIProvider$ICallWithActivity;)V
    .locals 2

    .line 107
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/metamoji/ui/UiDialogProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/metamoji/ui/UiDialogProvider$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/cm/ICmUIProvider$ICallWithActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method

.method public showAlertDialog(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnDismissListener;Ljava/lang/String;)V
    .locals 1

    .line 97
    new-instance v0, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v0, p1}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    if-eqz p2, :cond_0

    .line 99
    invoke-virtual {v0, p2}, Lcom/metamoji/ui/dialog/UiAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 101
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    .line 102
    new-instance p2, Lcom/metamoji/ui/UiDialogProvider$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0, p3}, Lcom/metamoji/ui/UiDialogProvider$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/dialog/UiAlertDialog;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method

.method public showAlertDialog(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, p1, v0, p2}, Lcom/metamoji/ui/UiDialogProvider;->showAlertDialog(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnDismissListener;Ljava/lang/String;)V

    return-void
.end method
