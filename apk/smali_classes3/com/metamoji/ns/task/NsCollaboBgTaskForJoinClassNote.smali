.class public Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "NsCollaboBgTaskForJoinClassNote.java"


# instance fields
.field public roomId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method


# virtual methods
.method protected taskExec()V
    .locals 16

    move-object/from16 v1, p0

    .line 52
    iget-object v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;->roomId:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 59
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 61
    iget v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto/16 :goto_1

    .line 68
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    const/4 v2, 0x1

    .line 71
    invoke-virtual {v0, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 88
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 90
    iget-object v5, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    .line 91
    iget-object v6, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    .line 92
    iget-object v7, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->idNumber:Ljava/lang/String;

    .line 93
    iget-object v8, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    .line 94
    iget-object v9, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 95
    iget-object v10, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 96
    iget-object v11, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    .line 102
    iget-object v3, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v3, v4

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    :goto_0
    if-nez v9, :cond_3

    .line 107
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;->cancel()Z

    return-void

    :cond_3
    const/4 v12, 0x0

    .line 112
    invoke-virtual {v0, v12}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 114
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_4

    .line 116
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;->cancel()Z

    return-void

    .line 120
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v12

    if-nez v12, :cond_5

    .line 122
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;->cancel()Z

    return-void

    .line 127
    :cond_5
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/nt/NtMRUDocList;->getLastSelectedItem()Lcom/metamoji/nt/NtMRUDocList$ItemBase;

    move-result-object v13

    .line 128
    invoke-interface {v13}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->driveId()Ljava/lang/String;

    move-result-object v13

    .line 130
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;->isCancelled()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 132
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;->cancel()Z

    return-void

    .line 137
    :cond_6
    invoke-static {v5}, Lcom/metamoji/forSchool/ScSchoolUtils;->alreadyJoinedClassNote(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 138
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;->cancel()Z

    return-void

    .line 142
    :cond_7
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v14

    .line 143
    invoke-virtual {v14}, Lcom/metamoji/ns/NsCollaboManager;->allowToJoinNote()Z

    move-result v15

    if-nez v15, :cond_8

    .line 144
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;->cancel()Z

    return-void

    .line 151
    :cond_8
    :try_start_0
    invoke-virtual {v12, v2}, Lcom/metamoji/nt/NtNoteController;->setShowJoinClassNoteAlert(Z)V

    .line 152
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MESSAGE_JOIN_CLASS_NOTE:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lcom/metamoji/cm/CmUtils;->modalYesNoDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    invoke-virtual {v14}, Lcom/metamoji/ns/NsCollaboManager;->allowToJoinNote()Z

    move-result v2

    if-nez v2, :cond_9

    .line 160
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;->cancel()Z

    return-void

    :cond_9
    if-eqz v0, :cond_12

    .line 166
    invoke-static {v5}, Lcom/metamoji/forSchool/ScSchoolUtils;->alreadyJoinedClassNote(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 167
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;->cancel()Z

    return-void

    .line 171
    :cond_a
    invoke-virtual {v12}, Lcom/metamoji/nt/NtNoteController;->getStudentCount()I

    move-result v0

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_b

    .line 174
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;->cancel()Z

    .line 175
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote$1;

    invoke-direct {v2, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote$1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void

    .line 185
    :cond_b
    new-instance v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 186
    iget-object v2, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;->roomId:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->roomId:Ljava/lang/String;

    .line 187
    iput-object v9, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->email:Ljava/lang/String;

    .line 188
    iput-object v10, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->password:Ljava/lang/String;

    .line 189
    iput-object v11, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->qwd:Ljava/lang/String;

    .line 192
    iput-object v3, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->companyId:Ljava/lang/String;

    const/4 v2, 0x1

    .line 194
    iput-boolean v2, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->isAddRole:Z

    .line 195
    const-string/jumbo v2, "visitor"

    iput-object v2, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->role:Ljava/lang/String;

    .line 199
    :try_start_1
    invoke-virtual {v0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_c

    .line 208
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;->cancel()Z

    return-void

    .line 212
    :cond_c
    const-string/jumbo v2, "role"

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 213
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez v7, :cond_e

    .line 215
    invoke-static {v13}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserClassNumberAndLoginNameMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 217
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 218
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 220
    const-string v2, "classNumber"

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_d
    if-eqz v4, :cond_e

    move-object v7, v4

    .line 228
    :cond_e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 229
    const-string/jumbo v2, "user-id"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string/jumbo v2, "user-name"

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v2, ""

    if-nez v7, :cond_f

    move-object v7, v2

    :cond_f
    const-string v3, "class-number"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v8, :cond_10

    move-object v8, v2

    .line 232
    :cond_10
    const-string v2, "login-name"

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-virtual {v12, v0}, Lcom/metamoji/nt/NtNoteController;->appendUserToGroupList(Ljava/util/Map;)V

    :cond_11
    return-void

    :catch_0
    move-exception v0

    .line 201
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;->cancel()Z

    .line 202
    const-string v2, "NsCollaboBgTaskForUpdateRoomSetting.taskExec"

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 203
    sget v2, Lcom/metamoji/noteanytime/R$string;->UpdateRoomMode_Msg_Failed:I

    invoke-static {v0, v2}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    return-void

    .line 237
    :cond_12
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;->cancel()Z

    return-void

    :catch_1
    move-exception v0

    .line 154
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 155
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;->cancel()Z

    return-void

    .line 63
    :cond_13
    :goto_1
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;->cancel()Z

    return-void

    .line 54
    :cond_14
    :goto_2
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForJoinClassNote;->cancel()Z

    return-void
.end method
