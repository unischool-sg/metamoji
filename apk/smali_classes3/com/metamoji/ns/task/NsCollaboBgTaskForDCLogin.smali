.class public Lcom/metamoji/ns/task/NsCollaboBgTaskForDCLogin;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "NsCollaboBgTaskForDCLogin.java"


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method


# virtual methods
.method protected taskExec()V
    .locals 2

    .line 23
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 25
    iget v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForDCLogin;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 34
    sget v1, Lcom/metamoji/noteanytime/R$string;->OwnerToolLogin_Requesting:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForDCLogin;->isMaintenanceDCServer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForDCLogin;->cancel()Z

    return-void

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForDCLogin;->checkServerVersion()Z

    move-result v0

    if-nez v0, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForDCLogin;->cancel()Z

    return-void

    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForDCLogin;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-nez v0, :cond_3

    .line 55
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForDCLogin;->cancel()Z

    :cond_3
    return-void

    .line 26
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForDCLogin;->cancel()Z

    .line 28
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJID_MSG_NOT_REGIST_CABINETUSER_FOR_CREATESHARENOTE:I

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showCabinetUserRegistrationMessage(I)V

    return-void
.end method
