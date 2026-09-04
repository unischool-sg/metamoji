.class Lcom/metamoji/lc/ui/LicenseKeyDialog$1;
.super Ljava/lang/Object;
.source "LicenseKeyDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lc/ui/LicenseKeyDialog;->showLicenseInputDialog(Landroid/content/Context;Lcom/metamoji/lc/LicenseUtil;Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$license:Lcom/metamoji/lc/LicenseUtil;

.field final synthetic val$status:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;


# direct methods
.method constructor <init>(Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;Lcom/metamoji/lc/LicenseUtil;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$1;->val$status:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    iput-object p2, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$1;->val$license:Lcom/metamoji/lc/LicenseUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 34
    new-instance v0, Lcom/metamoji/lc/ui/LicenseKeyDialog;

    invoke-direct {v0}, Lcom/metamoji/lc/ui/LicenseKeyDialog;-><init>()V

    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Lcom/metamoji/lc/ui/LicenseKeyDialog;->setCancelable(Z)V

    .line 36
    iget-object v1, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$1;->val$status:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    invoke-static {v0, v1}, Lcom/metamoji/lc/ui/LicenseKeyDialog;->-$$Nest$fputmStatus(Lcom/metamoji/lc/ui/LicenseKeyDialog;Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;)V

    .line 37
    iget-object v1, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$1;->val$license:Lcom/metamoji/lc/LicenseUtil;

    invoke-static {v0, v1}, Lcom/metamoji/lc/ui/LicenseKeyDialog;->-$$Nest$fputmLicense(Lcom/metamoji/lc/ui/LicenseKeyDialog;Lcom/metamoji/lc/LicenseUtil;)V

    .line 38
    const-string v1, "license_info"

    invoke-virtual {v0, v1}, Lcom/metamoji/lc/ui/LicenseKeyDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method
