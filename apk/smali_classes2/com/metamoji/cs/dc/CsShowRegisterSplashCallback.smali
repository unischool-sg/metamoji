.class public Lcom/metamoji/cs/dc/CsShowRegisterSplashCallback;
.super Lcom/metamoji/nt/cabinet/user/UserViewTaskCallBack;
.source "CsShowRegisterSplashCallback.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x158785218e04cadbL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/metamoji/nt/cabinet/user/UserViewTaskCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public OnClickCancelButton_UserViewTaskCallBack()V
    .locals 1

    .line 31
    invoke-super {p0}, Lcom/metamoji/nt/cabinet/user/UserViewTaskCallBack;->OnClickCancelButton_UserViewTaskCallBack()V

    .line 32
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->onHandleCancelRegister()V

    return-void
.end method

.method public OnClickEntryUserButton_UserViewTaskCallBack()V
    .locals 1

    .line 16
    invoke-super {p0}, Lcom/metamoji/nt/cabinet/user/UserViewTaskCallBack;->OnClickEntryUserButton_UserViewTaskCallBack()V

    .line 17
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->onHandleShowRegisterDialog()V

    return-void
.end method

.method public OnClickLoginUserButton_UserViewTaskCallBack()V
    .locals 1

    .line 24
    invoke-super {p0}, Lcom/metamoji/nt/cabinet/user/UserViewTaskCallBack;->OnClickLoginUserButton_UserViewTaskCallBack()V

    .line 25
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->onHandleDoLogin()V

    return-void
.end method

.method public OnDestroy_UserViewTaskCallBack()V
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/metamoji/nt/cabinet/user/UserViewTaskCallBack;->OnDestroy_UserViewTaskCallBack()V

    .line 39
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->onDestroyView()V

    return-void
.end method
