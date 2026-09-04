.class public Lcom/metamoji/cs/dc/CsShowLoginDialogCallback;
.super Ljava/lang/Object;
.source "CsShowLoginDialogCallback.java"

# interfaces
.implements Lcom/metamoji/nt/cabinet/user/LoginUserTaskCallBack;
.implements Lcom/metamoji/nt/cabinet/user/LoginPageTaskCallBack;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2ba5858230ad01fcL


# instance fields
.field private m_afterAction:Lcom/metamoji/ui/cabinet/user/ICabinetUserAction;

.field private onDone:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogCallback;->onDone:Z

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/cabinet/user/ICabinetUserAction;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogCallback;->onDone:Z

    .line 26
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogCallback;->m_afterAction:Lcom/metamoji/ui/cabinet/user/ICabinetUserAction;

    return-void
.end method


# virtual methods
.method public OnClickCancelButton_LoginPageTaskCallBack()V
    .locals 1

    .line 98
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onHandleCancelLogin()V

    return-void
.end method

.method public OnClickCancelButton_LoginUserTaskCallBack()V
    .locals 1

    .line 44
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onHandleCancelLogin()V

    return-void
.end method

.method public OnClickForgotPassButton_LoginUserTaskCallBack(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 75
    const-string v0, "mailaddress"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onHandleResetPassword(Ljava/lang/String;)V

    return-void
.end method

.method public OnClickLoginButton_LoginPageTaskCallBack(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object v0

    .line 90
    const-string v1, "cologinid"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    const-string v2, "loginname"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 92
    const-string v3, "password"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v1, v2, p1}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onHandleLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnClickLoginButton_LoginUserTaskCallBack(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object v0

    .line 35
    const-string v1, "mailaddress"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 36
    const-string v2, "password"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1, p1}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onHandleLogin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnClickReentryButton_LoginPageTaskCallBack()V
    .locals 1

    .line 106
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onHandleRegister()V

    return-void
.end method

.method public OnClickReentryButton_LoginUserTaskCallBack()V
    .locals 1

    .line 52
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onHandleRegister()V

    return-void
.end method

.method public OnDestroyView_LoginPageTaskCallBack()V
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogCallback;->onDone:Z

    if-nez v0, :cond_0

    .line 118
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onHandleCancelLogin()V

    .line 120
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onDestroyView()V

    return-void
.end method

.method public OnDestroyView_LoginUserTaskCallBack()V
    .locals 2

    .line 63
    iget-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogCallback;->onDone:Z

    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onHandleCancelLogin()V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogCallback;->m_afterAction:Lcom/metamoji/ui/cabinet/user/ICabinetUserAction;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 67
    invoke-interface {v0, v1}, Lcom/metamoji/ui/cabinet/user/ICabinetUserAction;->action(Z)V

    .line 69
    :cond_1
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onDestroyView()V

    return-void
.end method

.method public OnDone_LoginPageTaskcallback()V
    .locals 1

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogCallback;->onDone:Z

    return-void
.end method

.method public OnDone_LoginUserTaskcallback()V
    .locals 1

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogCallback;->onDone:Z

    return-void
.end method
