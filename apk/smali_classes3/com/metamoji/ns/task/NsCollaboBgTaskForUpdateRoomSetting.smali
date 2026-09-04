.class public Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "NsCollaboBgTaskForUpdateRoomSetting.java"


# instance fields
.field private dialogTag:Ljava/lang/String;

.field public doCloseDialog:Z

.field public roomId:Ljava/lang/String;

.field public roomSettingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetdialogTag(Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->dialogTag:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->dialogTag:Ljava/lang/String;

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->doCloseDialog:Z

    return-void
.end method


# virtual methods
.method public setDialog(Lcom/metamoji/lib/dialog/UtDialog;)V
    .locals 0

    .line 33
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialog;->getTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->dialogTag:Ljava/lang/String;

    return-void
.end method

.method protected taskExec()V
    .locals 6

    .line 49
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->roomId:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->roomSettingList:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->dialogTag:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 56
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 58
    iget v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 66
    sget v1, Lcom/metamoji/noteanytime/R$string;->UpdateRoomMode_Requesting:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 84
    iget-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 85
    iget-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 86
    iget-object v4, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    .line 92
    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move-object v1, v2

    move-object v3, v1

    move-object v4, v3

    :goto_0
    if-nez v2, :cond_3

    .line 97
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->cancel()Z

    return-void

    :cond_3
    const/4 v5, 0x0

    .line 102
    invoke-virtual {v0, v5}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 105
    new-instance v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 106
    iget-object v5, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->roomId:Ljava/lang/String;

    iput-object v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->roomId:Ljava/lang/String;

    .line 107
    iput-object v2, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->email:Ljava/lang/String;

    .line 108
    iput-object v3, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->password:Ljava/lang/String;

    .line 109
    iput-object v4, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->qwd:Ljava/lang/String;

    .line 115
    iput-object v1, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->companyId:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->roomSettingList:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->roomSettingList:Ljava/util/List;

    .line 121
    :try_start_0
    invoke-virtual {v0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_4

    .line 131
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->cancel()Z

    return-void

    .line 136
    :cond_4
    iget-boolean v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->doCloseDialog:Z

    if-eqz v0, :cond_5

    .line 140
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting$1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_5
    return-void

    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->cancel()Z

    .line 125
    const-string v1, "NsCollaboBgTaskForUpdateRoomSetting.taskExec"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 126
    sget v1, Lcom/metamoji/noteanytime/R$string;->UpdateRoomMode_Msg_Failed:I

    invoke-static {v0, v1}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    return-void

    .line 60
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->cancel()Z

    return-void

    .line 51
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomSetting;->cancel()Z

    return-void
.end method
