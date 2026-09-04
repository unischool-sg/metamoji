.class Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;
.super Ljava/lang/Object;
.source "OldLoginPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIBlocker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;


# direct methods
.method private constructor <init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1036
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .line 1087
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$mclearQwd(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Z)V

    return-void
.end method

.method public block()V
    .locals 3

    .line 1041
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    sget v1, Lcom/metamoji/noteanytime/R$id;->blockView:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1042
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    sget v2, Lcom/metamoji/noteanytime/R$id;->progressRing:I

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1043
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    sget v2, Lcom/metamoji/noteanytime/R$id;->downloadPanel:I

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1044
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 1045
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    iget-boolean v0, v0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_simpleLoginMode:Z

    if-nez v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->stopQRCodeCapture()V

    .line 1048
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$fgetm_qrCodePreviewGuard(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$fgetm_btnLogin(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Lcom/metamoji/ui/common/UiButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 1051
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-eqz v0, :cond_1

    .line 1052
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$fgetm_btnChangeServer(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public hideGuruGuru()V
    .locals 2

    .line 1060
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    sget v1, Lcom/metamoji/noteanytime/R$id;->progressRing:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 1070
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    sget v1, Lcom/metamoji/noteanytime/R$id;->blockView:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 1072
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$msetLoginButtonEnable(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    .line 1073
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$mclearQwd(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Z)V

    .line 1074
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$fgetm_btnChangeServer(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    iget-boolean v0, v0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_simpleLoginMode:Z

    if-nez v0, :cond_1

    .line 1079
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->startQRCodeCapture()V

    :cond_1
    return-void
.end method

.method public showGuruGuru()V
    .locals 2

    .line 1063
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$UIBlocker;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    sget v1, Lcom/metamoji/noteanytime/R$id;->progressRing:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
