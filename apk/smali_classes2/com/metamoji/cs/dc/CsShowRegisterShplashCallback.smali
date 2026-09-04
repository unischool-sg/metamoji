.class public Lcom/metamoji/cs/dc/CsShowRegisterShplashCallback;
.super Lcom/metamoji/nt/cabinet/user/UserViewActivityTaskCallBack;
.source "CsShowRegisterShplashCallback.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x158785218e04cadbL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/metamoji/nt/cabinet/user/UserViewActivityTaskCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public OnClickCancelButton_UserViewActivityTaskCallBack(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/metamoji/nt/cabinet/user/UserViewActivityTaskCallBack;->OnClickCancelButton_UserViewActivityTaskCallBack(Landroidx/fragment/app/FragmentActivity;)V

    .line 45
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->onHandleCancelRegister()V

    return-void
.end method

.method public OnClickEntryUserButton_UserViewActivityTaskCallBack(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/metamoji/nt/cabinet/user/UserViewActivityTaskCallBack;->OnClickEntryUserButton_UserViewActivityTaskCallBack(Landroidx/fragment/app/FragmentActivity;)V

    .line 29
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->onHandleShowRegisterDialog()V

    return-void
.end method

.method public OnClickLoginUserButton_UserViewActivityTaskCallBack(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/metamoji/nt/cabinet/user/UserViewActivityTaskCallBack;->OnClickLoginUserButton_UserViewActivityTaskCallBack(Landroidx/fragment/app/FragmentActivity;)V

    .line 37
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->onHandleDoLogin()V

    return-void
.end method

.method public OnDestroy_UserViewActivityTaskCallBack()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/metamoji/nt/cabinet/user/UserViewActivityTaskCallBack;->OnDestroy_UserViewActivityTaskCallBack()V

    .line 52
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->onDestroyView()V

    return-void
.end method
