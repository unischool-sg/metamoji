.class public Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "ScCollaboBgTaskForRestoreCollaboDocument.java"


# instance fields
.field public groupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;->title:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;->groupList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addMemberFromShareTemplateDic(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_1

    .line 227
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 228
    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 229
    const-string v2, "dcUser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    const-string v1, "userId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 231
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 234
    :cond_2
    const-string v2, "mailUser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    const-string v1, "address"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 236
    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 242
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method protected taskExec()V
    .locals 20

    move-object/from16 v1, p0

    .line 50
    iget-object v0, v1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;->groupList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;->cancel()Z

    return-void

    .line 57
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 58
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_RESTORE_COLLABODOCUMENT_REQUESTING:I

    invoke-virtual {v0, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v2, 0x1

    .line 61
    invoke-virtual {v0, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 64
    invoke-virtual {v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;->isMaintenanceDCServer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    invoke-virtual {v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;->cancel()Z

    return-void

    .line 75
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 77
    iget-object v5, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 78
    iget-object v6, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 79
    iget-object v7, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    .line 80
    iget-object v8, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    .line 81
    iget-object v3, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    move-object v12, v3

    goto :goto_0

    :cond_2
    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v12, v8

    :goto_0
    if-nez v5, :cond_3

    .line 85
    invoke-virtual {v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;->cancel()Z

    return-void

    :cond_3
    const/4 v3, 0x0

    .line 90
    invoke-virtual {v0, v3}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 93
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v0, v9, v10}, Ljava/util/Random;-><init>(J)V

    .line 94
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    if-gez v0, :cond_4

    mul-int/lit8 v0, v0, -0x1

    .line 98
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 102
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iget-object v13, v1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;->groupList:Ljava/util/List;

    invoke-static {v13, v12}, Lcom/metamoji/forSchool/ScSchoolUtils;->getMemberDicListFromGroupList(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    .line 105
    const-string v14, "teacher"

    invoke-static {v13, v14}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 106
    const-string v15, "member"

    invoke-static {v13, v15}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 108
    invoke-virtual {v1, v0, v14, v12, v5}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;->addMemberFromShareTemplateDic(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1, v10, v13, v12, v5}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;->addMemberFromShareTemplateDic(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v13, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;

    invoke-direct {v13, v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 114
    iput-object v8, v13, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->companyId:Ljava/lang/String;

    .line 115
    iput-object v5, v13, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->email:Ljava/lang/String;

    .line 116
    iput-object v6, v13, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->password:Ljava/lang/String;

    .line 117
    iput-object v7, v13, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->qwd:Ljava/lang/String;

    .line 118
    iput-object v11, v13, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->roomPassword:Ljava/lang/String;

    .line 119
    const-string v5, "formal"

    iput-object v5, v13, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->roomType:Ljava/lang/String;

    .line 120
    iput-object v0, v13, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->formalPresenterArray:Ljava/util/List;

    .line 121
    iput-object v9, v13, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->formalSpeakerArray:Ljava/util/List;

    .line 122
    iput-object v10, v13, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->formalVisitorArray:Ljava/util/List;

    .line 123
    iget-object v0, v1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;->title:Ljava/lang/String;

    iput-object v0, v13, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->title:Ljava/lang/String;

    .line 124
    iput-object v4, v13, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->date:Ljava/util/Date;

    .line 125
    iput-object v4, v13, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->secureRoomPassword:Ljava/lang/String;

    .line 126
    iput-boolean v3, v13, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->scoreEnable:Z

    .line 127
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iput-object v0, v13, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 128
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iput-object v0, v13, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 129
    iput-object v4, v13, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->startDate:Ljava/util/Date;

    .line 130
    iput-object v4, v13, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->endDate:Ljava/util/Date;

    .line 134
    :try_start_0
    invoke-virtual {v13}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_5

    .line 149
    invoke-virtual {v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;->cancel()Z

    return-void

    .line 153
    :cond_5
    const-string v5, "roomID"

    invoke-static {v0, v5}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 155
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 157
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v5

    goto :goto_1

    :cond_6
    move-object v5, v4

    :goto_1
    if-eqz v10, :cond_9

    if-nez v5, :cond_7

    goto :goto_2

    .line 165
    :cond_7
    new-instance v9, Lcom/metamoji/ns/NsCollaboBasicSettings;

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v19, v8

    invoke-direct/range {v9 .. v19}, Lcom/metamoji/ns/NsCollaboBasicSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;)V

    .line 178
    const-string v6, "forSchool"

    iput-object v6, v9, Lcom/metamoji/ns/NsCollaboBasicSettings;->shareType:Ljava/lang/String;

    .line 181
    invoke-virtual {v5}, Lcom/metamoji/nt/NtDocument;->resetCollaboSettings()V

    .line 183
    const-string v6, "MMJNsShareSettings"

    invoke-virtual {v5, v6}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v6

    check-cast v6, Lcom/metamoji/ns/NsCollaboSettings;

    .line 184
    invoke-virtual {v6, v9}, Lcom/metamoji/ns/NsCollaboSettings;->overwriteBasicSettingsFrom(Lcom/metamoji/ns/NsCollaboBasicSettings;)V

    .line 185
    invoke-virtual {v6, v2}, Lcom/metamoji/ns/NsCollaboSettings;->setSeedRevision(I)V

    .line 188
    iget-object v6, v1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;->title:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Lcom/metamoji/nt/NtDocument;->setDocumentTitle(Ljava/lang/String;Z)V

    .line 191
    invoke-virtual {v5, v2}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 197
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 199
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 201
    invoke-virtual {v0, v4}, Lcom/metamoji/ns/direction/NsDirectionManager;->setCollaboRestoreProcInfo(Ljava/util/Map;)V

    .line 206
    :cond_8
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument$1;

    invoke-direct {v2, v1, v5}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument$1;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;Lcom/metamoji/nt/NtDocument;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 160
    :cond_9
    :goto_2
    invoke-virtual {v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;->cancel()Z

    return-void

    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForRestoreCollaboDocument;->cancel()Z

    .line 139
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showCreateRoomErrorMessage(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_3

    .line 143
    :cond_a
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_RESTORE_COLLABODOCUMENT_MSG_FAILED:I

    invoke-static {v0, v2}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    :goto_3
    return-void
.end method
