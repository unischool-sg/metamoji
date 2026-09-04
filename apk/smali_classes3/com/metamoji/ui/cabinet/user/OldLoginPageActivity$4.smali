.class Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$4;
.super Ljava/lang/Object;
.source "OldLoginPageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->logoutWithClearPasscode(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$withCommunication:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 360
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$4;->val$withCommunication:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 363
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$4;->val$withCommunication:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-static {}, Lcom/metamoji/nt/NtClientSettingsStore;->storeClientSettingsToServer()V

    .line 368
    new-instance v0, Lcom/metamoji/cs/dc/params/CsLogoutParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsLogoutParam;-><init>()V

    .line 369
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cs/dc/response/CsLogoutResponse;

    if-eqz v0, :cond_0

    .line 370
    iget v0, v0, Lcom/metamoji/cs/dc/response/CsLogoutResponse;->errorCode:I

    if-nez v0, :cond_0

    .line 374
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->logoutRoomSocket()V

    .line 389
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 395
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$4$1;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$4$1;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$4;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 401
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->clearSession()V

    .line 404
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v1

    .line 405
    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v2

    .line 406
    iget-object v3, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    .line 407
    iget-object v3, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    .line 408
    iget-object v3, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->inputedRootServer:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->inputedRootServer:Ljava/lang/String;

    .line 409
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyName:Ljava/lang/String;

    iput-object v0, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyName:Ljava/lang/String;

    .line 410
    invoke-virtual {v1, v2}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    .line 413
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->WipeLocalCache()V

    .line 416
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$4$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$4$2;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$4;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method
