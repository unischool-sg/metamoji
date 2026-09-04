.class public Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "NsCollaboBgTaskForLogin.java"


# instance fields
.field public docId:Ljava/lang/String;

.field public driveId:Ljava/lang/String;

.field m_email:Ljava/lang/String;

.field m_password:Ljava/lang/String;

.field m_qwd:Ljava/lang/String;

.field m_robyServerLogined:Z

.field m_secureRoom:Z

.field m_secureRoomPasswordRetryCount:I

.field public roomId:Ljava/lang/String;

.field public roomPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->m_uiGuard:Z

    .line 72
    iput-boolean p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->m_secureRoom:Z

    .line 73
    iput p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->m_secureRoomPasswordRetryCount:I

    return-void
.end method


# virtual methods
.method protected onCompleted(ZLjava/lang/Throwable;)V
    .locals 5

    .line 376
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 379
    iget-boolean v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->m_robyServerLogined:Z

    if-nez v0, :cond_2

    .line 380
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 384
    iget-boolean v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->m_secureRoom:Z

    if-nez v1, :cond_0

    .line 385
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 387
    const-string v2, "MMJNsShareSettings"

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/NsCollaboSettings;

    if-eqz v1, :cond_0

    .line 391
    iget-boolean v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->m_secureRoom:Z

    if-nez v2, :cond_0

    .line 392
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboSettings;->getSecureRoom()Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->m_secureRoom:Z

    .line 399
    :cond_0
    iget-boolean v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->m_secureRoom:Z

    if-eqz v1, :cond_1

    .line 405
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->existConnectRoomAfterAction()Z

    move-result v1

    if-nez v1, :cond_2

    .line 406
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 408
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 410
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    new-instance v4, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$3;

    invoke-direct {v4, p0, v0, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$3;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/INtEditor;)V

    new-instance v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$4;

    invoke-direct {v0, p0, v2}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$4;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;Ljava/util/concurrent/CountDownLatch;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v4, v1, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    .line 431
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$5;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$5;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 451
    :catch_0
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->onCompleted(ZLjava/lang/Throwable;)V

    return-void
.end method

.method protected taskExec()V
    .locals 17

    move-object/from16 v1, p0

    .line 83
    const-string v2, "MMJNsShareSettings"

    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    const/4 v4, 0x0

    .line 87
    iput-boolean v4, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->m_robyServerLogined:Z

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    iget-object v5, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->roomId:Ljava/lang/String;

    if-eqz v5, :cond_16

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_5

    .line 102
    :cond_0
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 103
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->cancel()Z

    .line 104
    sget v0, Lcom/metamoji/noteanytime/R$string;->LoginRoom_Msg_Offline:I

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 109
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v5

    .line 110
    sget v6, Lcom/metamoji/noteanytime/R$string;->LoginRoom_Requesting:I

    invoke-virtual {v5, v6}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    .line 115
    iget-boolean v6, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->m_secureRoom:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    .line 116
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v6

    .line 117
    invoke-virtual {v6, v3}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 118
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v8, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 119
    new-instance v9, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$1;

    invoke-direct {v9, v1, v0, v8, v6}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;Lcom/metamoji/cm/CmTaskManager;)V

    invoke-virtual {v6, v9}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 140
    :try_start_0
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :catch_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 144
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v7

    :goto_0
    if-nez v0, :cond_4

    .line 148
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->cancel()Z

    return-void

    :cond_3
    move-object v0, v7

    .line 155
    :cond_4
    invoke-virtual {v5, v3}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 158
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->isMaintenanceDCServer()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 159
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->cancel()Z

    return-void

    .line 164
    :cond_5
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v6

    .line 165
    invoke-virtual {v6}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 174
    iget v6, v6, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_7

    .line 177
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 179
    iget-object v8, v6, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    iput-object v8, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->m_email:Ljava/lang/String;

    .line 180
    iget-object v8, v6, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    iput-object v8, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->m_password:Ljava/lang/String;

    .line 181
    iget-object v8, v6, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    iput-object v8, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->m_qwd:Ljava/lang/String;

    .line 185
    iget-object v8, v6, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    .line 186
    iget-object v6, v6, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    move-object v15, v8

    goto :goto_1

    .line 188
    :cond_6
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 190
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->cancel()Z

    return-void

    :cond_7
    move-object v6, v7

    move-object v15, v6

    .line 198
    :goto_1
    iget-object v8, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->m_email:Ljava/lang/String;

    if-eqz v8, :cond_15

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_15

    if-nez v6, :cond_8

    goto/16 :goto_4

    .line 205
    :cond_8
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v8

    .line 206
    new-instance v9, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;

    invoke-direct {v9, v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 207
    iget-object v10, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->roomId:Ljava/lang/String;

    iput-object v10, v9, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->roomId:Ljava/lang/String;

    .line 208
    iget-object v10, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->roomPassword:Ljava/lang/String;

    iput-object v10, v9, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->roomPassword:Ljava/lang/String;

    .line 209
    iget-object v10, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->m_email:Ljava/lang/String;

    iput-object v10, v9, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->email:Ljava/lang/String;

    .line 210
    iget-object v10, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->m_password:Ljava/lang/String;

    iput-object v10, v9, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->password:Ljava/lang/String;

    .line 211
    iget-object v10, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->m_qwd:Ljava/lang/String;

    iput-object v10, v9, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->qwd:Ljava/lang/String;

    .line 214
    iput-object v6, v9, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->companyId:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 220
    invoke-virtual {v8}, Lcom/metamoji/ns/NsCollaboManager;->getSecureRoomPassword()Ljava/lang/String;

    move-result-object v0

    .line 223
    :cond_9
    invoke-virtual {v8, v7}, Lcom/metamoji/ns/NsCollaboManager;->setSecureRoomPassword(Ljava/lang/String;)V

    .line 224
    iput-object v0, v9, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->secureRoomPassword:Ljava/lang/String;

    .line 228
    iput-object v9, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->cancellableConnection:Lcom/metamoji/ns/service/NsCollaboURLConnection;

    .line 232
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 234
    invoke-virtual {v6}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 235
    invoke-virtual {v6}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v10

    check-cast v10, Lcom/metamoji/noteanytime/EditorActivity;

    move-object v11, v10

    move-object v10, v0

    goto :goto_2

    :cond_a
    move-object v10, v7

    move-object v11, v10

    .line 239
    :goto_2
    :try_start_1
    invoke-virtual {v9}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v0, :cond_b

    .line 293
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->cancel()Z

    return-void

    .line 298
    :cond_b
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_c

    goto/16 :goto_3

    .line 303
    :cond_c
    invoke-virtual {v5, v4}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 306
    iput-boolean v3, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->m_robyServerLogined:Z

    if-eqz v6, :cond_e

    if-eqz v11, :cond_d

    .line 311
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/forSchool/ScSchoolManager;->canShowEditAreaView()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 312
    invoke-virtual {v11, v3}, Lcom/metamoji/noteanytime/EditorActivity;->setEditAreaVisibility(Z)V

    :cond_d
    if-eqz v10, :cond_e

    .line 316
    const-string/jumbo v4, "secureRoom"

    invoke-static {v0, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 317
    invoke-virtual {v10, v2}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/NsCollaboSettings;

    if-eqz v2, :cond_e

    .line 318
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboSettings;->getSecureRoom()Z

    move-result v5

    if-eq v5, v4, :cond_e

    .line 319
    invoke-virtual {v2, v4}, Lcom/metamoji/ns/NsCollaboSettings;->setSecureRoom(Z)V

    .line 321
    invoke-virtual {v10, v3}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 330
    :cond_e
    const-string/jumbo v2, "serverAddress"

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    .line 331
    const-string/jumbo v2, "serverPort"

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 332
    const-string/jumbo v2, "sessionID"

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    .line 333
    const-string/jumbo v2, "serverProtocolVersion"

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 334
    const-string v3, "clientDirectionVersion"

    invoke-static {v0, v3}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, -0x1

    .line 340
    :try_start_2
    const-string/jumbo v5, "sslServerAddress"

    invoke-static {v0, v5}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 341
    const-string/jumbo v6, "sslServerPort"

    invoke-static {v0, v6}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v7, v5

    .line 347
    :catch_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/metamoji/ns/NsCollaboManager;->checkProtocolVersion(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 349
    sget v0, Lcom/metamoji/noteanytime/R$string;->Share_Version_Error_Protocol:I

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 352
    :cond_f
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/metamoji/ns/NsCollaboManager;->checkDirectionVersion(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 354
    sget v0, Lcom/metamoji/noteanytime/R$string;->Share_Version_Error_Direction:I

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    :cond_10
    if-eqz v7, :cond_11

    .line 358
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    if-ltz v4, :cond_11

    .line 359
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v8

    iget-object v9, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->driveId:Ljava/lang/String;

    iget-object v10, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->docId:Ljava/lang/String;

    iget-object v11, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->roomId:Ljava/lang/String;

    const/16 v16, 0x1

    move v13, v4

    move-object v12, v7

    invoke-virtual/range {v8 .. v16}, Lcom/metamoji/ns/NsCollaboManager;->loginRoomSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_3

    .line 361
    :cond_11
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v8

    iget-object v9, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->driveId:Ljava/lang/String;

    iget-object v10, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->docId:Ljava/lang/String;

    iget-object v11, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->roomId:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual/range {v8 .. v16}, Lcom/metamoji/ns/NsCollaboManager;->loginRoomSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_3

    :catch_2
    move-exception v0

    .line 242
    invoke-static {v0}, Lcom/metamoji/ns/service/NsCollaboServiceException;->errorCodeFromException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/ns/service/NsCollaboServiceException;->errorCode(Ljava/lang/String;)I

    move-result v5

    const/16 v7, 0x97

    if-ne v5, v7, :cond_13

    .line 243
    iput-boolean v3, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->m_secureRoom:Z

    .line 244
    iget v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->m_secureRoomPasswordRetryCount:I

    add-int/2addr v0, v3

    iput v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->m_secureRoomPasswordRetryCount:I

    if-eqz v6, :cond_12

    if-eqz v10, :cond_12

    .line 248
    invoke-virtual {v10, v2}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    if-eqz v0, :cond_12

    .line 249
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettings;->getSecureRoom()Z

    move-result v2

    if-nez v2, :cond_12

    .line 250
    invoke-virtual {v0, v3}, Lcom/metamoji/ns/NsCollaboSettings;->setSecureRoom(Z)V

    .line 252
    invoke-virtual {v10, v3}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    if-eqz v11, :cond_12

    .line 258
    invoke-virtual {v11, v4}, Lcom/metamoji/noteanytime/EditorActivity;->setEditAreaVisibility(Z)V

    .line 263
    :cond_12
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->taskExec()V

    return-void

    .line 267
    :cond_13
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->cancel()Z

    .line 268
    const-string v2, "NsCollaboBgTaskForLogin.taskExec"

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 271
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 272
    new-instance v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$2;

    invoke-direct {v3, v1, v2}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$2;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;Ljava/util/concurrent/CountDownLatch;)V

    .line 279
    invoke-static {v0, v3}, Lcom/metamoji/ns/NsCollaboUtils;->showLoginRoomErrorMessage(Ljava/lang/Exception;Lcom/metamoji/ns/INsCollaboAction;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 281
    sget v4, Lcom/metamoji/noteanytime/R$string;->LoginRoom_Msg_Failed:I

    invoke-static {v0, v4}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    .line 285
    :cond_14
    :try_start_3
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :goto_3
    return-void

    .line 199
    :cond_15
    :goto_4
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->cancel()Z

    return-void

    .line 95
    :cond_16
    :goto_5
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->cancel()Z

    .line 96
    sget v0, Lcom/metamoji/noteanytime/R$string;->Import_AtCollabo_Failed_Message:I

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void
.end method
