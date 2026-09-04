.class Lcom/metamoji/ui/cabinet/user/ChangePassword$4;
.super Ljava/lang/Object;
.source "ChangePassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/ChangePassword;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/ChangePassword;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/ChangePassword;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword$4;->this$0:Lcom/metamoji/ui/cabinet/user/ChangePassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 194
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword$4;->this$0:Lcom/metamoji/ui/cabinet/user/ChangePassword;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/ChangePassword;->-$$Nest$mcheckInput(Lcom/metamoji/ui/cabinet/user/ChangePassword;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 196
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword$4;->this$0:Lcom/metamoji/ui/cabinet/user/ChangePassword;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/ChangePassword;->_this:Lcom/metamoji/ui/cabinet/user/ChangePassword;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/metamoji/ui/cabinet/user/ChangePassword;->-$$Nest$msetInputControlEnabled(Lcom/metamoji/ui/cabinet/user/ChangePassword;Z)V

    .line 197
    new-instance p1, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword$4;->this$0:Lcom/metamoji/ui/cabinet/user/ChangePassword;

    invoke-direct {p1, v0}, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback;-><init>(Lcom/metamoji/ui/cabinet/user/ChangePassword;)V

    .line 198
    new-instance v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;-><init>()V

    .line 199
    new-instance v1, Lcom/metamoji/cs/dc/params/CsChangePasswordParam;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/params/CsChangePasswordParam;-><init>()V

    .line 200
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword$4;->this$0:Lcom/metamoji/ui/cabinet/user/ChangePassword;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_newPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/params/CsChangePasswordParam;->passwordNew:Ljava/lang/String;

    .line 201
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword$4;->this$0:Lcom/metamoji/ui/cabinet/user/ChangePassword;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_nowPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/params/CsChangePasswordParam;->passwordOld:Ljava/lang/String;

    .line 202
    sget-object v2, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithLoginDialog:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    invoke-virtual {v0, v1, v2, p1}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->changePasswordAsync(Lcom/metamoji/cs/dc/params/CsChangePasswordParam;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    :cond_0
    return-void
.end method
