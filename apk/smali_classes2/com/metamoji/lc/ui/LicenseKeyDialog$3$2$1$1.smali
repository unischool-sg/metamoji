.class Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2$1$1;
.super Ljava/lang/Object;
.source "LicenseKeyDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2$1;->onResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2$1;


# direct methods
.method constructor <init>(Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2$1$1;->this$3:Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2$1$1;->this$3:Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2$1;

    iget-object v0, v0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2$1;->this$2:Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;

    iget-object v0, v0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;->this$1:Lcom/metamoji/lc/ui/LicenseKeyDialog$3;

    iget-object v0, v0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3;->val$dlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 140
    invoke-static {v0}, Lcom/metamoji/lc/LicenseChecker;->stopLicenseChechkTask(Z)V

    return-void
.end method
