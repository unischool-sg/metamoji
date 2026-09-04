.class Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2$1;
.super Ljava/lang/Object;
.source "TrialActivationGuideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2$1;->this$2:Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;

    iput p2, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2$1;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 64
    iget v0, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2$1;->val$result:I

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    .line 71
    iget-object v1, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2$1;->this$2:Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;

    if-eq v0, v3, :cond_0

    .line 91
    iget-object v0, v1, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;->this$1:Lcom/metamoji/mazec/TrialActivationGuideActivity$1;

    iget-object v0, v0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1;->this$0:Lcom/metamoji/mazec/TrialActivationGuideActivity;

    const-string/jumbo v1, "string.trial_activation_dlg_error_unknown"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/metamoji/mazec/TrialActivationGuideActivity;->-$$Nest$mshowAlertDialog(Lcom/metamoji/mazec/TrialActivationGuideActivity;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, v1, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;->this$1:Lcom/metamoji/mazec/TrialActivationGuideActivity$1;

    iget-object v0, v0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1;->this$0:Lcom/metamoji/mazec/TrialActivationGuideActivity;

    const-string/jumbo v1, "string.trial_already_activated"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2$1$1;

    invoke-direct {v2, p0}, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2$1$1;-><init>(Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2$1;)V

    invoke-static {v0, v1, v2}, Lcom/metamoji/mazec/TrialActivationGuideActivity;->-$$Nest$mshowAlertDialog(Lcom/metamoji/mazec/TrialActivationGuideActivity;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2$1;->this$2:Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;

    iget-object v0, v0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;->this$1:Lcom/metamoji/mazec/TrialActivationGuideActivity$1;

    iget-object v0, v0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1;->this$0:Lcom/metamoji/mazec/TrialActivationGuideActivity;

    iget v1, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2$1;->val$result:I

    invoke-static {v0, v1, v3}, Lcom/metamoji/mazec/TrialActivationGuideActivity;->-$$Nest$mfinishWithResult(Lcom/metamoji/mazec/TrialActivationGuideActivity;IZ)V

    goto :goto_0

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2$1;->this$2:Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;

    iget-object v0, v0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;->this$1:Lcom/metamoji/mazec/TrialActivationGuideActivity$1;

    iget-object v0, v0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1;->this$0:Lcom/metamoji/mazec/TrialActivationGuideActivity;

    const-string/jumbo v1, "string.trial_activation_dlg_no_network_connection"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/metamoji/mazec/TrialActivationGuideActivity;->-$$Nest$mshowAlertDialog(Lcom/metamoji/mazec/TrialActivationGuideActivity;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2$1;->this$2:Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;

    iget-object v0, v0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;->this$1:Lcom/metamoji/mazec/TrialActivationGuideActivity$1;

    iget-object v0, v0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1;->this$0:Lcom/metamoji/mazec/TrialActivationGuideActivity;

    const-string/jumbo v1, "string.trial_activation_dlg_error_server_maintenance"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/metamoji/mazec/TrialActivationGuideActivity;->-$$Nest$mshowAlertDialog(Lcom/metamoji/mazec/TrialActivationGuideActivity;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2$1;->this$2:Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;

    iget-object v0, v0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;->this$1:Lcom/metamoji/mazec/TrialActivationGuideActivity$1;

    iget-object v0, v0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1;->val$activateButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2$1;->this$2:Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;

    iget-object v0, v0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;->this$1:Lcom/metamoji/mazec/TrialActivationGuideActivity$1;

    iget-object v0, v0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1;->val$activateButton:Landroid/widget/Button;

    const-string/jumbo v1, "string.trial_activation_register_button"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method
