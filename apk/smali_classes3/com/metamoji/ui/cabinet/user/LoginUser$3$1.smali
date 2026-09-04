.class Lcom/metamoji/ui/cabinet/user/LoginUser$3$1;
.super Ljava/lang/Object;
.source "LoginUser.java"

# interfaces
.implements Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/LoginUser$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/user/LoginUser$3;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/LoginUser$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser$3$1;->this$1:Lcom/metamoji/ui/cabinet/user/LoginUser$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser$3$1;->this$1:Lcom/metamoji/ui/cabinet/user/LoginUser$3;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/LoginUser$3;->this$0:Lcom/metamoji/ui/cabinet/user/LoginUser;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/LoginUser;->_this:Lcom/metamoji/ui/cabinet/user/LoginUser;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/user/LoginUser;->-$$Nest$msetInputControlEnabled(Lcom/metamoji/ui/cabinet/user/LoginUser;Z)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser$3$1;->this$1:Lcom/metamoji/ui/cabinet/user/LoginUser$3;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/LoginUser$3;->this$0:Lcom/metamoji/ui/cabinet/user/LoginUser;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/LoginUser;->_this:Lcom/metamoji/ui/cabinet/user/LoginUser;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/user/LoginUser;->-$$Nest$msetInputControlEnabled(Lcom/metamoji/ui/cabinet/user/LoginUser;Z)V

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 232
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser$3$1;->this$1:Lcom/metamoji/ui/cabinet/user/LoginUser$3;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/LoginUser$3;->this$0:Lcom/metamoji/ui/cabinet/user/LoginUser;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/LoginUser;->_this:Lcom/metamoji/ui/cabinet/user/LoginUser;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/user/LoginUser;->-$$Nest$mgetMailaddress(Lcom/metamoji/ui/cabinet/user/LoginUser;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mailaddress"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {v1, v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onClickForgotPassButton(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method
