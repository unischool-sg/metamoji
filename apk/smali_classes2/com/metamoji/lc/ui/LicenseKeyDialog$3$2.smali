.class Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;
.super Ljava/lang/Object;
.source "LicenseKeyDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lc/ui/LicenseKeyDialog$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/lc/ui/LicenseKeyDialog$3;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$userid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/lc/ui/LicenseKeyDialog$3;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;->this$1:Lcom/metamoji/lc/ui/LicenseKeyDialog$3;

    iput-object p2, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;->val$userid:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 124
    iget-object v0, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;->val$userid:Ljava/lang/String;

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x19

    if-lt v1, v2, :cond_0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;->val$userid:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 127
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;->val$userid:Ljava/lang/String;

    const/16 v5, 0xa

    .line 128
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;->val$userid:Ljava/lang/String;

    const/16 v4, 0xf

    .line 129
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;->val$userid:Ljava/lang/String;

    const/16 v5, 0x14

    .line 130
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;->val$userid:Ljava/lang/String;

    .line 131
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;->this$1:Lcom/metamoji/lc/ui/LicenseKeyDialog$3;

    iget-object v1, v1, Lcom/metamoji/lc/ui/LicenseKeyDialog$3;->this$0:Lcom/metamoji/lc/ui/LicenseKeyDialog;

    invoke-static {v1}, Lcom/metamoji/lc/ui/LicenseKeyDialog;->-$$Nest$fgetmLicense(Lcom/metamoji/lc/ui/LicenseKeyDialog;)Lcom/metamoji/lc/LicenseUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;->val$context:Landroid/content/Context;

    new-instance v3, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2$1;

    invoke-direct {v3, p0}, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2$1;-><init>(Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/metamoji/lc/LicenseUtil;->activate(Landroid/content/Context;Ljava/lang/String;Lcom/metamoji/lc/LicenseUtil$ActivateCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 148
    :cond_1
    new-instance v0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2$2;

    invoke-direct {v0, p0}, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2$2;-><init>(Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;)V

    iget-object v1, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/metamoji/lc/LicenseUtil;->runOnUiThread(Ljava/lang/Runnable;Landroid/content/Context;)V

    return-void
.end method
