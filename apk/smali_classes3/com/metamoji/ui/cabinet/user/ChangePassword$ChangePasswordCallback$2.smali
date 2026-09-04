.class Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback$2;
.super Ljava/lang/Object;
.source "ChangePassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 382
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback$2;->this$1:Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback$2;->this$1:Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback;->this$0:Lcom/metamoji/ui/cabinet/user/ChangePassword;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/ChangePassword;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback$2;->this$1:Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback;->this$0:Lcom/metamoji/ui/cabinet/user/ChangePassword;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/ChangePassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$string;->SystemOption_Msg_CabinetUser_Password_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 390
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback$2;->this$1:Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback;->this$0:Lcom/metamoji/ui/cabinet/user/ChangePassword;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/ChangePassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback$2$1;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback$2$1;-><init>(Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback$2;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 400
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 401
    new-instance v1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v1, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 402
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback$2;->this$1:Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback;->this$0:Lcom/metamoji/ui/cabinet/user/ChangePassword;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/ChangePassword;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "ChangePassword_showMsgDialog"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
