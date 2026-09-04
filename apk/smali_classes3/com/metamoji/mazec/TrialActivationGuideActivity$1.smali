.class Lcom/metamoji/mazec/TrialActivationGuideActivity$1;
.super Ljava/lang/Object;
.source "TrialActivationGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/TrialActivationGuideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/TrialActivationGuideActivity;

.field final synthetic val$activateButton:Landroid/widget/Button;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/TrialActivationGuideActivity;Landroid/widget/Button;Landroid/os/Handler;)V
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

    .line 45
    iput-object p1, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1;->this$0:Lcom/metamoji/mazec/TrialActivationGuideActivity;

    iput-object p2, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1;->val$activateButton:Landroid/widget/Button;

    iput-object p3, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 47
    iget-object p1, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1;->this$0:Lcom/metamoji/mazec/TrialActivationGuideActivity;

    invoke-static {p1}, Lcom/metamoji/mazec/TrialActivationGuideActivity;->isActivated(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1;->this$0:Lcom/metamoji/mazec/TrialActivationGuideActivity;

    const-string/jumbo v0, "string.trial_already_activated"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$1;-><init>(Lcom/metamoji/mazec/TrialActivationGuideActivity$1;)V

    invoke-static {p1, v0, v1}, Lcom/metamoji/mazec/TrialActivationGuideActivity;->-$$Nest$mshowAlertDialog(Lcom/metamoji/mazec/TrialActivationGuideActivity;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1;->val$activateButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getWidth()I

    move-result p1

    .line 55
    iget-object v0, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1;->val$activateButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1;->val$activateButton:Landroid/widget/Button;

    const-string/jumbo v1, "string.trial_activation_register_button2"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 57
    iget-object v0, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1;->val$activateButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 58
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;-><init>(Lcom/metamoji/mazec/TrialActivationGuideActivity$1;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 100
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
