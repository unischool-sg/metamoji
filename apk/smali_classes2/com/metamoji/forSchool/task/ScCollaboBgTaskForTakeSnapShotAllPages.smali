.class public Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "ScCollaboBgTaskForTakeSnapShotAllPages.java"


# instance fields
.field public snapShotDic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method


# virtual methods
.method processOnePage(Lcom/metamoji/nt/NtPageController;)V
    .locals 3

    .line 67
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "take snapShot of page %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 73
    :try_start_0
    new-instance v1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$1;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;Lcom/metamoji/nt/NtPageController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runModalOnBackground(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/controller/ControllerContext;

    .line 85
    const-string v2, "restoreTemporary finished"

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 88
    new-instance v2, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$2;

    invoke-direct {v2, p0, p1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$2;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;Lcom/metamoji/nt/NtPageController;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 99
    const-string v2, "take snapShot finished"

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 102
    new-instance v2, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$3;

    invoke-direct {v2, p0, p1, v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages$3;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/df/controller/ControllerContext;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->runModalOnBackground(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 113
    const-string p1, "turnInTemporary finished"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 115
    const-string v0, "ScCollaboBgTaskForTakeSnapShotAllPages#processOnePage"

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method protected taskExec()V
    .locals 7

    .line 32
    const-string v0, "MMJScCollaboBgTaskForTakeSnapShotAllPages.taskExec: end"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;->snapShotDic:Ljava/util/Map;

    .line 35
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 43
    :cond_1
    const-string v2, "MMJScCollaboBgTaskForTakeSnapShotAllPages.taskExec: start"

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v2

    const/4 v3, 0x0

    .line 47
    invoke-virtual {v2, v3}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    const/4 v4, 0x0

    .line 50
    :try_start_0
    invoke-virtual {v2, v4}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setProgress(F)V

    .line 52
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_2

    .line 54
    invoke-virtual {v1, v3}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v5

    .line 55
    invoke-virtual {p0, v5}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;->processOnePage(Lcom/metamoji/nt/NtPageController;)V

    add-int/lit8 v3, v3, 0x1

    int-to-float v5, v3

    int-to-float v6, v4

    div-float/2addr v5, v6

    .line 56
    invoke-virtual {v2, v5}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setProgress(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 59
    :cond_2
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 60
    throw v1
.end method
