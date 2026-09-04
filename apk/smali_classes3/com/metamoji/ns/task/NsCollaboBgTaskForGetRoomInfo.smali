.class public Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "NsCollaboBgTaskForGetRoomInfo.java"


# instance fields
.field m_email:Ljava/lang/String;

.field m_password:Ljava/lang/String;

.field m_qwd:Ljava/lang/String;

.field public roomId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method


# virtual methods
.method protected taskExec()V
    .locals 15

    .line 62
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->roomId:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 69
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 71
    iget v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto/16 :goto_5

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 79
    sget v2, Lcom/metamoji/noteanytime/R$string;->GetRoomInfo_Role_Requesting:I

    invoke-virtual {v0, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v2, 0x1

    .line 82
    invoke-virtual {v0, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 93
    iget-object v3, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    iput-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->m_email:Ljava/lang/String;

    .line 94
    iget-object v3, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    iput-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->m_password:Ljava/lang/String;

    .line 95
    iget-object v3, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    iput-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->m_qwd:Ljava/lang/String;

    .line 96
    iget-object v3, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    .line 99
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    move-object v5, v0

    move-object v9, v3

    goto :goto_0

    :cond_2
    move-object v5, v2

    move-object v9, v5

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->m_email:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 104
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->cancel()Z

    return-void

    .line 109
    :cond_3
    new-instance v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomInfo;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomInfo;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 110
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->roomId:Ljava/lang/String;

    iput-object v3, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomInfo;->roomId:Ljava/lang/String;

    .line 111
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->m_email:Ljava/lang/String;

    iput-object v3, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomInfo;->email:Ljava/lang/String;

    .line 112
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->m_password:Ljava/lang/String;

    iput-object v3, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomInfo;->password:Ljava/lang/String;

    .line 113
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->m_qwd:Ljava/lang/String;

    iput-object v3, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomInfo;->qwd:Ljava/lang/String;

    .line 116
    iput-object v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomInfo;->companyId:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->cancellableConnection:Lcom/metamoji/ns/service/NsCollaboURLConnection;

    .line 124
    :try_start_0
    invoke-virtual {v0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomInfo;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v13, :cond_4

    .line 133
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->cancel()Z

    return-void

    .line 138
    :cond_4
    const-string/jumbo v0, "roomType"

    invoke-static {v13, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    const-string/jumbo v3, "role"

    invoke-static {v13, v3}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 140
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 141
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 142
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 147
    const-string v4, "owner"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_5

    .line 149
    const-string/jumbo v10, "userId"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 150
    const-string v11, "nickname"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object v4, v2

    move-object v10, v4

    .line 152
    :goto_1
    const-string v11, "presenter"

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_7

    .line 154
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 155
    instance-of v14, v12, Ljava/util/Map;

    if-eqz v14, :cond_6

    .line 156
    check-cast v12, Ljava/util/Map;

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 160
    :cond_7
    const-string/jumbo v11, "speaker"

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_9

    .line 162
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 163
    instance-of v14, v12, Ljava/util/Map;

    if-eqz v14, :cond_8

    .line 164
    check-cast v12, Ljava/util/Map;

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 168
    :cond_9
    const-string/jumbo v11, "visitor"

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_b

    .line 170
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 171
    instance-of v12, v11, Ljava/util/Map;

    if-eqz v12, :cond_a

    .line 172
    check-cast v11, Ljava/util/Map;

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 179
    :cond_b
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 180
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->cancel()Z

    return-void

    .line 187
    :cond_c
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 189
    invoke-virtual {v3}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    .line 190
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    :cond_d
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtMRUDocList;->getLastSelectedItem()Lcom/metamoji/nt/NtMRUDocList$ItemBase;

    move-result-object v3

    .line 208
    invoke-interface {v3}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->driveId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_e

    .line 210
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v3

    .line 211
    invoke-virtual {v3}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtDocument;->getDriveID()Ljava/lang/String;

    move-result-object v3

    :cond_e
    move-object v11, v3

    .line 214
    invoke-static {v11}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserClassNumberAndLoginNameMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    .line 216
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v14

    move-object v3, v10

    move-object v10, v2

    move-object v2, v0

    new-instance v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v13}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo$1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v14, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->cancel()Z

    .line 127
    const-string v1, "NsCollaboBgTaskForGetRoomInfo.taskExec"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 128
    sget v1, Lcom/metamoji/noteanytime/R$string;->GetRoomInfo_Role_Msg_Failed:I

    invoke-static {v0, v1}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    return-void

    .line 73
    :cond_f
    :goto_5
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->cancel()Z

    return-void

    .line 64
    :cond_10
    :goto_6
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomInfo;->cancel()Z

    return-void
.end method
