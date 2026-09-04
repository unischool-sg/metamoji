.class public Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveBaseBoothData;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;
.source "NsCollaboBgTaskForReceiveBaseBoothData.java"


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method


# virtual methods
.method protected taskExec()V
    .locals 14

    .line 23
    const-string v0, "MMJNsCollaboBgTaskForReceiveBaseBoothData end"

    const/4 v1, 0x0

    iput v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveBaseBoothData;->m_result:I

    .line 25
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 30
    :cond_0
    const-string v3, "MMJNsCollaboBgTaskForReceiveBaseBoothData start"

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveBaseBoothData;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v3

    .line 34
    sget v4, Lcom/metamoji/noteanytime/R$string;->Share_Receiving_Other_Page_Data:I

    invoke-virtual {v3, v4}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v4, 0x1

    .line 35
    invoke-virtual {v3, v4}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 37
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v5

    .line 38
    invoke-virtual {v5, v4}, Lcom/metamoji/ns/NsCollaboManager;->setLogModeProgressDisabled(Z)V

    .line 40
    :try_start_0
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/nt/NtDocument;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v6

    .line 41
    iput-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveBaseBoothData;->m_editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    .line 42
    iput-object v6, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveBaseBoothData;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    .line 43
    invoke-virtual {v6, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->setBgTaskForReceiveAllData(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    const-wide/16 v7, 0x1f4

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 45
    :try_start_1
    invoke-virtual {v3, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setProgress(F)V

    const/4 v2, 0x3

    .line 47
    new-array v11, v2, [Ljava/lang/String;

    const-string v12, "ROOM"

    aput-object v12, v11, v1

    const-string v12, "CHAT"

    aput-object v12, v11, v4

    const-string v4, "RECORDING"

    const/4 v12, 0x2

    aput-object v4, v11, v12

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_2

    .line 50
    aget-object v12, v11, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    :try_start_2
    invoke-virtual {p0, v12}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveBaseBoothData;->processOneRestoredPageInner(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 54
    :catchall_0
    :try_start_3
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveBaseBoothData;->cancel()Z

    .line 56
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveBaseBoothData;->isCancelled()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 57
    const-string v2, "MMJNsCollaboBgTaskForReceiveBaseBoothData cancelled"

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    int-to-float v12, v4

    int-to-float v13, v2

    div-float/2addr v12, v13

    .line 61
    invoke-virtual {v3, v12}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setProgress(F)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 64
    :cond_2
    :goto_2
    :try_start_4
    invoke-virtual {v6, v10}, Lcom/metamoji/ns/direction/NsDirectionManager;->setBgTaskForReceiveAllData(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;)V

    .line 66
    iput-object v10, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveBaseBoothData;->m_editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    .line 67
    iput-object v10, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveBaseBoothData;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    .line 70
    invoke-virtual {v3, v9}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setProgress(F)V

    .line 71
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveBaseBoothData;->isCancelled()Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v2, :cond_3

    .line 73
    :try_start_5
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 78
    :catch_0
    :cond_3
    :try_start_6
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 81
    invoke-virtual {v5, v1}, Lcom/metamoji/ns/NsCollaboManager;->setLogModeProgressDisabled(Z)V

    return-void

    :catchall_1
    move-exception v2

    .line 64
    :try_start_7
    invoke-virtual {v6, v10}, Lcom/metamoji/ns/direction/NsDirectionManager;->setBgTaskForReceiveAllData(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;)V

    .line 66
    iput-object v10, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveBaseBoothData;->m_editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    .line 67
    iput-object v10, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveBaseBoothData;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    .line 70
    invoke-virtual {v3, v9}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setProgress(F)V

    .line 71
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveBaseBoothData;->isCancelled()Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-nez v3, :cond_4

    .line 73
    :try_start_8
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 78
    :catch_1
    :cond_4
    :try_start_9
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 79
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    .line 81
    invoke-virtual {v5, v1}, Lcom/metamoji/ns/NsCollaboManager;->setLogModeProgressDisabled(Z)V

    .line 82
    throw v0
.end method
