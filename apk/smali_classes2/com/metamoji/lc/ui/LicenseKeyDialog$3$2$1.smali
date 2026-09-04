.class Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2$1;
.super Ljava/lang/Object;
.source "LicenseKeyDialog.java"

# interfaces
.implements Lcom/metamoji/lc/LicenseUtil$ActivateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;


# direct methods
.method constructor <init>(Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2$1;->this$2:Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 136
    new-instance p1, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2$1$1;

    invoke-direct {p1, p0}, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2$1$1;-><init>(Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2$1;)V

    iget-object v0, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2$1;->this$2:Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;

    iget-object v0, v0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;->val$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/metamoji/lc/LicenseUtil;->runOnUiThread(Ljava/lang/Runnable;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
