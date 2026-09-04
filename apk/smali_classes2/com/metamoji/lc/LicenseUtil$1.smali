.class Lcom/metamoji/lc/LicenseUtil$1;
.super Ljava/lang/Object;
.source "LicenseUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lc/LicenseUtil;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$okListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 426
    iput-object p1, p0, Lcom/metamoji/lc/LicenseUtil$1;->val$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/lc/LicenseUtil$1;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/lc/LicenseUtil$1;->val$okListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 431
    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 432
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 433
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 434
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    .line 435
    invoke-virtual {p0, v1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 437
    new-instance p0, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 438
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/UiAlertDialog;->setCancelable(Z)V

    .line 447
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "licenseAlertDialog"

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 429
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    .line 430
    iget-object v1, p0, Lcom/metamoji/lc/LicenseUtil$1;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/lc/LicenseUtil$1;->val$message:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/lc/LicenseUtil$1;->val$okListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v4, Lcom/metamoji/lc/LicenseUtil$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v2, v3}, Lcom/metamoji/lc/LicenseUtil$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v4}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method
