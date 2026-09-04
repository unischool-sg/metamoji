.class public Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "NsCollaboBgTaskForCreateRoom.java"


# instance fields
.field public companyId:Ljava/lang/String;

.field public date:Ljava/util/Date;

.field public deleteCurrentDoc:Z

.field public deleteCurrentDocEvenIfCancel:Z

.field public distributeClass:Ljava/lang/String;

.field public distributeCommand:Lcom/metamoji/nt/NtCommand;

.field public distributePackage:Ljava/lang/String;

.field public distributeSharedDriveId:Ljava/lang/String;

.field public distributeSharedDriveTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public email:Ljava/lang/String;

.field public endDate:Ljava/util/Date;

.field public endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

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

.field public ownerId:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

.field public qwd:Ljava/lang/String;

.field public roomSettingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public roomType:Ljava/lang/String;

.field public scoreEnable:Z

.field public secureRoomPassword:Ljava/lang/String;

.field public startDate:Ljava/util/Date;

.field public submitByStudent:Z

.field public title:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public viewController:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->viewController:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->submitByStudent:Z

    return-void
.end method


# virtual methods
.method addAddressArray(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_1

    .line 327
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 328
    const-string/jumbo v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 329
    const-string v2, "mailUser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    const-string v1, "address"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 331
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method protected taskExec()V
    .locals 17

    move-object/from16 v1, p0

    .line 86
    iget-object v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->viewController:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    iget-object v3, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->userId:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->email:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->password:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->qwd:Ljava/lang/String;

    if-eqz v3, :cond_a

    :cond_0
    iget-object v3, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->title:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->roomType:Ljava/lang/String;

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 94
    :cond_1
    iget-object v3, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->companyId:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 95
    iput-boolean v2, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_isDoneProcessing:Z

    return-void

    .line 101
    :cond_2
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v3

    .line 102
    sget v0, Lcom/metamoji/noteanytime/R$string;->CreateRoom_Requesting:I

    invoke-virtual {v3, v0}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v4, 0x1

    .line 105
    invoke-virtual {v3, v4}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 108
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->isMaintenanceDCServer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->cancel()Z

    .line 110
    iget-object v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->viewController:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iput-boolean v2, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_isDoneProcessing:Z

    return-void

    .line 115
    :cond_3
    invoke-virtual {v3, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 118
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Ljava/util/Random;-><init>(J)V

    .line 119
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    if-gez v0, :cond_4

    mul-int/lit8 v0, v0, -0x1

    .line 123
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 126
    new-instance v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 127
    iget-object v5, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->email:Ljava/lang/String;

    iput-object v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->email:Ljava/lang/String;

    .line 128
    iget-object v5, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->password:Ljava/lang/String;

    iput-object v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->password:Ljava/lang/String;

    .line 129
    iget-object v5, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->qwd:Ljava/lang/String;

    iput-object v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->qwd:Ljava/lang/String;

    .line 130
    iput-object v7, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->roomPassword:Ljava/lang/String;

    .line 131
    iget-object v5, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->roomType:Ljava/lang/String;

    iput-object v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->roomType:Ljava/lang/String;

    .line 132
    iget-object v5, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->formalPresenterArray:Ljava/util/List;

    iput-object v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->formalPresenterArray:Ljava/util/List;

    .line 133
    iget-object v5, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->formalSpeakerArray:Ljava/util/List;

    iput-object v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->formalSpeakerArray:Ljava/util/List;

    .line 134
    iget-object v5, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->formalVisitorArray:Ljava/util/List;

    iput-object v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->formalVisitorArray:Ljava/util/List;

    .line 135
    iget-object v5, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->title:Ljava/lang/String;

    iput-object v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->title:Ljava/lang/String;

    .line 136
    iget-object v5, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->date:Ljava/util/Date;

    iput-object v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->date:Ljava/util/Date;

    .line 139
    iget-object v5, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->companyId:Ljava/lang/String;

    iput-object v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->companyId:Ljava/lang/String;

    .line 143
    iget-object v5, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->ownerId:Ljava/lang/String;

    iput-object v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->ownerId:Ljava/lang/String;

    .line 147
    iget-object v5, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->secureRoomPassword:Ljava/lang/String;

    iput-object v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->secureRoomPassword:Ljava/lang/String;

    .line 149
    iget-boolean v5, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->scoreEnable:Z

    iput-boolean v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->scoreEnable:Z

    .line 150
    iget-object v5, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iput-object v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 151
    iget-object v5, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iput-object v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 152
    iget-object v5, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->startDate:Ljava/util/Date;

    iput-object v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->startDate:Ljava/util/Date;

    .line 153
    iget-object v5, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->endDate:Ljava/util/Date;

    iput-object v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->endDate:Ljava/util/Date;

    .line 157
    :try_start_0
    invoke-virtual {v0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v5, :cond_5

    .line 180
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->cancel()Z

    .line 181
    iget-object v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->viewController:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iput-boolean v2, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_isDoneProcessing:Z

    return-void

    .line 186
    :cond_5
    const-string/jumbo v0, "roomID"

    invoke-static {v5, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 187
    iget-object v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->roomSettingList:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 188
    new-instance v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 189
    iput-object v6, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->roomId:Ljava/lang/String;

    .line 190
    iget-object v8, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->email:Ljava/lang/String;

    iput-object v8, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->email:Ljava/lang/String;

    .line 191
    iget-object v8, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->password:Ljava/lang/String;

    iput-object v8, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->password:Ljava/lang/String;

    .line 192
    iget-object v8, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->qwd:Ljava/lang/String;

    iput-object v8, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->qwd:Ljava/lang/String;

    .line 198
    iget-object v8, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->companyId:Ljava/lang/String;

    iput-object v8, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->companyId:Ljava/lang/String;

    .line 200
    iget-object v8, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->roomSettingList:Ljava/util/List;

    iput-object v8, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->roomSettingList:Ljava/util/List;

    .line 204
    :try_start_1
    invoke-virtual {v0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->responseJsonFromRequest()Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 212
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 213
    sget v8, Lcom/metamoji/noteanytime/R$string;->UpdateRoomMode_Msg_Failed:I

    invoke-static {v0, v8}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    .line 224
    :cond_6
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v8, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom$2;

    invoke-direct {v8, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom$2;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;)V

    invoke-virtual {v0, v8}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 235
    const-string/jumbo v0, "secureRoom"

    invoke-static {v5, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 236
    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 240
    new-instance v5, Lcom/metamoji/ns/NsCollaboBasicSettings;

    iget-object v8, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->userId:Ljava/lang/String;

    iget-object v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->roomSettingList:Ljava/util/List;

    const-string v10, "allowToJoinNote"

    .line 246
    invoke-static {v0, v10, v4}, Lcom/metamoji/ns/NsCollaboManager;->getBoolValueWithRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Z

    move-result v10

    iget-object v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->roomSettingList:Ljava/util/List;

    const-string v11, "allowToOpePage"

    .line 247
    invoke-static {v0, v11, v2}, Lcom/metamoji/ns/NsCollaboManager;->getBoolValueWithRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Z

    move-result v11

    iget-object v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->roomSettingList:Ljava/util/List;

    const-string v12, "allowToEditOths"

    .line 249
    invoke-static {v0, v12, v2}, Lcom/metamoji/ns/NsCollaboManager;->getBoolValueWithRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Z

    move-result v12

    iget-object v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->roomSettingList:Ljava/util/List;

    const-string v13, "allowToChgGrp"

    .line 252
    invoke-static {v0, v13, v2}, Lcom/metamoji/ns/NsCollaboManager;->getBoolValueWithRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Z

    move-result v13

    iget-object v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->roomSettingList:Ljava/util/List;

    const-string v2, "allowToSaveNote"

    .line 255
    invoke-static {v0, v2, v4}, Lcom/metamoji/ns/NsCollaboManager;->getBoolValueWithRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Z

    move-result v14

    iget-object v15, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->companyId:Ljava/lang/String;

    invoke-direct/range {v5 .. v15}, Lcom/metamoji/ns/NsCollaboBasicSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;)V

    .line 263
    iget-object v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    sget-object v2, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    if-ne v0, v2, :cond_7

    iget-object v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    sget-object v2, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    if-ne v0, v2, :cond_7

    .line 264
    const-string v0, "forSchool"

    goto :goto_1

    .line 265
    :cond_7
    const-string v0, "forSchoolWithDeadline"

    :goto_1
    iput-object v0, v5, Lcom/metamoji/ns/NsCollaboBasicSettings;->shareType:Ljava/lang/String;

    .line 266
    iget-object v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->ownerId:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 267
    iget-object v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->ownerId:Ljava/lang/String;

    iput-object v0, v5, Lcom/metamoji/ns/NsCollaboBasicSettings;->ownerDcUserId:Ljava/lang/String;

    .line 272
    :cond_8
    sget v0, Lcom/metamoji/noteanytime/R$string;->ShareNote_Opening:I

    invoke-virtual {v3, v0}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    .line 273
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    .line 276
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    iget-object v3, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->formalPresenterArray:Ljava/util/List;

    invoke-virtual {v1, v0, v3}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->addAddressArray(Ljava/util/List;Ljava/util/List;)V

    .line 278
    iget-object v3, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->formalSpeakerArray:Ljava/util/List;

    invoke-virtual {v1, v0, v3}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->addAddressArray(Ljava/util/List;Ljava/util/List;)V

    .line 279
    iget-object v3, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->formalVisitorArray:Ljava/util/List;

    invoke-virtual {v1, v0, v3}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->addAddressArray(Ljava/util/List;Ljava/util/List;)V

    .line 280
    iget-object v3, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->distributeCommand:Lcom/metamoji/nt/NtCommand;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v4, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->distributePackage:Ljava/lang/String;

    iget-object v6, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->distributeClass:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v4, v6}, Lcom/metamoji/ns/NsCollaboManager;->setDistributeCommandInfo(Lcom/metamoji/nt/NtCommand;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->secureRoomPassword:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/metamoji/ns/NsCollaboManager;->setSecureRoomPassword(Ljava/lang/String;)V

    .line 287
    iget-object v11, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->title:Ljava/lang/String;

    iget-boolean v12, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->deleteCurrentDoc:Z

    iget-object v13, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->distributeSharedDriveId:Ljava/lang/String;

    iget-object v14, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->distributeSharedDriveTags:Ljava/util/List;

    iget-object v15, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->groupList:Ljava/util/List;

    iget-boolean v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->submitByStudent:Z

    move/from16 v16, v0

    move-object v10, v5

    invoke-static/range {v10 .. v16}, Lcom/metamoji/ns/NsCollaboCommand;->createAndEditCollaboFileWithBasicSettings(Lcom/metamoji/ns/NsCollaboBasicSettings;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 303
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->cancel()Z

    .line 305
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->clearDistributeCommandInfo()V

    .line 306
    const-string v2, "NsCollaboBgTaskForCreateRoom.taskExec"

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom$3;

    invoke-direct {v2, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom$3;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;)V

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    goto :goto_2

    :catch_2
    move-exception v0

    .line 159
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->cancel()Z

    .line 162
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showCreateRoomErrorMessage(Ljava/lang/Exception;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 164
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom$1;

    invoke-direct {v2, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom$1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 173
    :cond_9
    sget v3, Lcom/metamoji/noteanytime/R$string;->CreateRoom_Msg_Failed:I

    invoke-static {v0, v3}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    .line 174
    iget-object v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->viewController:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iput-boolean v2, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_isDoneProcessing:Z

    :goto_2
    return-void

    .line 88
    :cond_a
    :goto_3
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->cancel()Z

    .line 89
    iget-object v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateRoom;->viewController:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iput-boolean v2, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_isDoneProcessing:Z

    return-void
.end method
