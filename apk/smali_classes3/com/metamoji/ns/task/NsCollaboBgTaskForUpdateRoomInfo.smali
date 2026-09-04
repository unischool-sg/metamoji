.class public Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "NsCollaboBgTaskForUpdateRoomInfo.java"


# instance fields
.field public companyId:Ljava/lang/String;

.field private dialogTag:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public formalPresenterArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public formalSpeakerArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public formalVisitorArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public groupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_secureRoom:Z

.field m_secureRoomPasswordRetryCount:I

.field public mode2ParamDic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public password:Ljava/lang/String;

.field public qwd:Ljava/lang/String;

.field public roomId:Ljava/lang/String;

.field public roomType:Ljava/lang/String;

.field public updateSecureRoom:Ljava/lang/Boolean;

.field public updateSecureRoomPassword:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetdialogTag(Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->dialogTag:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 1

    .line 73
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->dialogTag:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->groupList:Ljava/util/List;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->m_secureRoom:Z

    .line 67
    iput v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->m_secureRoomPasswordRetryCount:I

    .line 69
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->mode2ParamDic:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public setDialog(Lcom/metamoji/lib/dialog/UtDialog;)V
    .locals 0

    .line 50
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialog;->getTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->dialogTag:Ljava/lang/String;

    return-void
.end method

.method protected taskExec()V
    .locals 8

    .line 83
    const-string v0, "MMJNsShareSettings"

    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->roomId:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->email:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->password:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->qwd:Ljava/lang/String;

    if-eqz v1, :cond_b

    :cond_0
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->dialogTag:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->roomType:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->formalPresenterArray:Ljava/util/List;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->formalSpeakerArray:Ljava/util/List;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->formalVisitorArray:Ljava/util/List;

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v1

    .line 92
    sget v2, Lcom/metamoji/noteanytime/R$string;->UpdateRoomInfo_Role_Requesting:I

    invoke-virtual {v1, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v2, 0x0

    .line 93
    invoke-virtual {v1, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iget-boolean v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->m_secureRoom:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 101
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    .line 102
    invoke-virtual {v3, v5}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 103
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 104
    new-instance v7, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo$1;

    invoke-direct {v7, p0, v1, v6, v3}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo$1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;Lcom/metamoji/cm/CmTaskManager;)V

    invoke-virtual {v3, v7}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 125
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :catch_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 129
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v1, v4

    :goto_0
    if-nez v1, :cond_4

    .line 133
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->cancel()Z

    return-void

    :cond_3
    move-object v1, v4

    .line 139
    :cond_4
    new-instance v2, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 140
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->roomId:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->roomId:Ljava/lang/String;

    .line 141
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->email:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->email:Ljava/lang/String;

    .line 142
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->password:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->password:Ljava/lang/String;

    .line 143
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->qwd:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->qwd:Ljava/lang/String;

    .line 144
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->roomType:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->roomType:Ljava/lang/String;

    .line 145
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->formalPresenterArray:Ljava/util/List;

    iput-object v3, v2, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->formalPresenterArray:Ljava/util/List;

    .line 146
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->formalSpeakerArray:Ljava/util/List;

    iput-object v3, v2, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->formalSpeakerArray:Ljava/util/List;

    .line 147
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->formalVisitorArray:Ljava/util/List;

    iput-object v3, v2, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->formalVisitorArray:Ljava/util/List;

    .line 150
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->companyId:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->companyId:Ljava/lang/String;

    .line 154
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->updateSecureRoom:Ljava/lang/Boolean;

    iput-object v3, v2, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->updateSecureRoom:Ljava/lang/Boolean;

    .line 155
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->updateSecureRoomPassword:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->updateSecureRoomPassword:Ljava/lang/String;

    .line 156
    iput-object v1, v2, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->secureRoomPassword:Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->mode2ParamDic:Ljava/util/Map;

    iput-object v1, v2, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->mode2ParamDic:Ljava/util/Map;

    .line 161
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 163
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v4

    .line 167
    :cond_5
    :try_start_1
    invoke-virtual {v2}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_6

    .line 198
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->cancel()Z

    return-void

    .line 204
    :cond_6
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->updateSecureRoom:Ljava/lang/Boolean;

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    if-eqz v4, :cond_7

    .line 207
    const-string/jumbo v1, "secureRoom"

    invoke-static {v2, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 208
    invoke-virtual {v4, v0}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    if-eqz v0, :cond_7

    .line 209
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettings;->getSecureRoom()Z

    move-result v2

    if-eq v2, v1, :cond_7

    .line 210
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboSettings;->setSecureRoom(Z)V

    .line 212
    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 222
    :cond_7
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->groupList:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 226
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 228
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->groupList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->setGroupList(Ljava/util/List;)V

    .line 237
    :cond_8
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo$2;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    :catch_1
    move-exception v2

    .line 170
    invoke-static {v2}, Lcom/metamoji/ns/service/NsCollaboServiceException;->errorCodeFromException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/ns/service/NsCollaboServiceException;->errorCode(Ljava/lang/String;)I

    move-result v3

    const/16 v6, 0x97

    if-ne v3, v6, :cond_a

    .line 171
    iput-boolean v5, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->m_secureRoom:Z

    .line 172
    iget v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->m_secureRoomPasswordRetryCount:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->m_secureRoomPasswordRetryCount:I

    if-eqz v1, :cond_9

    if-eqz v4, :cond_9

    .line 176
    invoke-virtual {v4, v0}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    if-eqz v0, :cond_9

    .line 177
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettings;->getSecureRoom()Z

    move-result v1

    if-nez v1, :cond_9

    .line 178
    invoke-virtual {v0, v5}, Lcom/metamoji/ns/NsCollaboSettings;->setSecureRoom(Z)V

    .line 180
    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 187
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->taskExec()V

    return-void

    .line 191
    :cond_a
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->cancel()Z

    .line 192
    const-string v0, "NsCollaboBgTaskForUpdateRoomInfo.taskExec"

    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 193
    sget v0, Lcom/metamoji/noteanytime/R$string;->UpdateRoomInfo_Role_Msg_Failed:I

    invoke-static {v2, v0}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    return-void

    .line 86
    :cond_b
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->cancel()Z

    return-void
.end method
