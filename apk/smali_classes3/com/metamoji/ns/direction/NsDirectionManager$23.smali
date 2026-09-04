.class Lcom/metamoji/ns/direction/NsDirectionManager$23;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->connectStatusChanged(Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1477
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1480
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 1481
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, v1, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    const-string v2, "MMJNsShareSettings"

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/metamoji/ns/NsCollaboSettings;

    .line 1484
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, v1, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendingDataTable:Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;

    monitor-enter v1

    .line 1485
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v2, v2, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendingDataTable:Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;

    invoke-virtual {v2}, Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;->clear()V

    .line 1486
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1489
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-static {v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->-$$Nest$mpostSendingData(Lcom/metamoji/ns/direction/NsDirectionManager;)V

    .line 1492
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, v1, Lcom/metamoji/ns/direction/NsDirectionManager;->m_collaboRestoreProcInfo:Ljava/util/Map;

    const/4 v8, 0x1

    if-nez v1, :cond_3

    .line 1494
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, v1, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendInvoker:Lcom/metamoji/ns/direction/NsSendInvoker;

    new-instance v2, Lcom/metamoji/ns/direction/NsDirectionManager$23$1;

    invoke-direct {v2, p0, v4}, Lcom/metamoji/ns/direction/NsDirectionManager$23$1;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager$23;Lcom/metamoji/ns/NsCollaboSettings;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ns/direction/NsSendInvoker;->invoke(Ljava/lang/Runnable;)Z

    .line 1503
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, v1, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendInvoker:Lcom/metamoji/ns/direction/NsSendInvoker;

    new-instance v2, Lcom/metamoji/ns/direction/NsDirectionManager$23$2;

    invoke-direct {v2, p0, v4}, Lcom/metamoji/ns/direction/NsDirectionManager$23$2;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager$23;Lcom/metamoji/ns/NsCollaboSettings;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ns/direction/NsSendInvoker;->invoke(Ljava/lang/Runnable;)Z

    .line 1510
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, v1, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendInvoker:Lcom/metamoji/ns/direction/NsSendInvoker;

    new-instance v2, Lcom/metamoji/ns/direction/NsDirectionManager$23$3;

    invoke-direct {v2, p0, v4}, Lcom/metamoji/ns/direction/NsDirectionManager$23$3;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager$23;Lcom/metamoji/ns/NsCollaboSettings;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ns/direction/NsSendInvoker;->invoke(Ljava/lang/Runnable;)Z

    .line 1520
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, v1, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 1521
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 1522
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1523
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v2

    .line 1526
    iget-object v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v3, v3, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 1528
    :try_start_1
    iget-object v5, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v5, v5, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v5, v5, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachBoothRequestingDic:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v8

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 1531
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    .line 1533
    iget-object v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v3, v3, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendInvoker:Lcom/metamoji/ns/direction/NsSendInvoker;

    new-instance v5, Lcom/metamoji/ns/direction/NsDirectionManager$23$4;

    invoke-direct {v5, p0, v1, v4}, Lcom/metamoji/ns/direction/NsDirectionManager$23$4;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager$23;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/ns/NsCollaboSettings;)V

    invoke-virtual {v3, v5}, Lcom/metamoji/ns/direction/NsSendInvoker;->invoke(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 1531
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    move-object v6, v2

    .line 1552
    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, v2, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/metamoji/ns/direction/NsDirectionManager;->-$$Nest$mmakeNotifyBoothIdDic(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/ns/NsCollaboSettings;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v1

    .line 1564
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1565
    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v2, v2, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendInvoker:Lcom/metamoji/ns/direction/NsSendInvoker;

    new-instance v3, Lcom/metamoji/ns/direction/NsDirectionManager$23$5;

    invoke-direct {v3, p0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager$23$5;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager$23;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/ns/direction/NsSendInvoker;->invoke(Ljava/lang/Runnable;)Z

    .line 1574
    :cond_3
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, v1, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/metamoji/nt/NtNoteController;->setEditLayerEditable(Z)V

    .line 1577
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-virtual {v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->updateViewLocationRelatedCommandStatus()V

    .line 1578
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-virtual {v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->updateNoteModeRelatedCommandStatus()V

    .line 1581
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserMode()I

    move-result v1

    .line 1582
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v2

    .line 1583
    iget-object v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-static {v3, v1, v2}, Lcom/metamoji/ns/direction/NsDirectionManager;->-$$Nest$monUserModeChanged(Lcom/metamoji/ns/direction/NsDirectionManager;IZ)V

    .line 1587
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1589
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->allowToJoinNote()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1593
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, v1, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->checkJoinedClassNote()V

    .line 1598
    :cond_4
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/direction/NsDirectionManager$23$6;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/direction/NsDirectionManager$23$6;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager$23;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1613
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/direction/NsDirectionManager$23$7;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/direction/NsDirectionManager$23$7;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager$23;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    .line 1634
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v1, v2, :cond_5

    .line 1636
    const-string v1, "privateLayer"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ns/NsCollaboManager;->changeProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    :catchall_1
    move-exception v0

    .line 1486
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
