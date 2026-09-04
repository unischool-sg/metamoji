.class public Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "NsCollaboBgTaskForDistributeClass.java"


# instance fields
.field public currentDocId:Ljava/lang/String;

.field public currentDriveId:Ljava/lang/String;

.field public date:Ljava/util/Date;

.field public distributeSharedDrives:Ljava/util/List;
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

.field public paramDic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public roomSettingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public secureRoomPassword:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->secureRoomPassword:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->paramDic:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected taskExec()V
    .locals 6

    .line 60
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->title:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->currentDocId:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->roomSettingList:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->distributeSharedDrives:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 72
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 73
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 74
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass$1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;Lcom/metamoji/ns/ui/NsCollaboWaitView;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 90
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :catch_0
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->cancel()Z

    return-void

    .line 97
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 98
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->distributeSharedDrives:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 99
    const-string v5, "driveId"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 100
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_2
    new-instance v1, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;

    invoke-direct {v1}, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;-><init>()V

    .line 104
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->currentDriveId:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->driveId:Ljava/lang/String;

    .line 105
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->currentDocId:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->docId:Ljava/lang/String;

    .line 106
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->title:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->title:Ljava/lang/String;

    .line 107
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->date:Ljava/util/Date;

    iput-object v3, v1, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->date:Ljava/util/Date;

    .line 108
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->roomSettingList:Ljava/util/List;

    iput-object v3, v1, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->settingList:Ljava/util/List;

    .line 109
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->distributeSharedDrives:Ljava/util/List;

    iput-object v3, v1, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->driveInfoList:Ljava/util/List;

    .line 113
    const-string v3, "0"

    iput-object v3, v1, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->secureRoom:Ljava/lang/String;

    .line 114
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->secureRoomPassword:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 116
    iput-object v3, v1, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->secureRoomPassword:Ljava/lang/String;

    .line 117
    const-string v3, "1"

    iput-object v3, v1, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->secureRoom:Ljava/lang/String;

    .line 120
    :cond_3
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->paramDic:Ljava/util/Map;

    const-string/jumbo v4, "validFlag"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->validFlag:I

    .line 121
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->paramDic:Ljava/util/Map;

    const-string/jumbo v4, "startTime"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/ns/NsShareViewCommand;->convertDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, v1, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->startTime:Ljava/util/Date;

    .line 122
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->paramDic:Ljava/util/Map;

    const-string v4, "endTime"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/ns/NsShareViewCommand;->convertDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, v1, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->endTime:Ljava/util/Date;

    .line 123
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->paramDic:Ljava/util/Map;

    const-string v4, "beforeMode2"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->beforeMode2:I

    .line 124
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->paramDic:Ljava/util/Map;

    const-string/jumbo v4, "testingMode2"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->testingMode2:I

    .line 125
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->paramDic:Ljava/util/Map;

    const-string v4, "afterMode2"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->afterMode2:I

    .line 126
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->paramDic:Ljava/util/Map;

    const-string v4, "reportMode2"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->reportMode2:I

    .line 127
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->paramDic:Ljava/util/Map;

    const-string v4, "endReportMode2"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->endReportMode2:I

    .line 128
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->paramDic:Ljava/util/Map;

    const-string v4, "remandMode2"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->remandMode2:I

    .line 129
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->paramDic:Ljava/util/Map;

    const-string v4, "lockMode2"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->lockMode2:I

    .line 132
    new-instance v3, Lcom/metamoji/dvm/cs/DvmCloudService;

    invoke-direct {v3}, Lcom/metamoji/dvm/cs/DvmCloudService;-><init>()V

    .line 133
    invoke-virtual {v3, v1}, Lcom/metamoji/dvm/cs/DvmCloudService;->executeDistributeClassWithParams(Lcom/metamoji/dvm/cs/DvmDistributeClassParams;)Lcom/metamoji/dvm/cs/DvmDistributeClassResult;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 134
    iget v3, v1, Lcom/metamoji/dvm/cs/DvmDistributeClassResult;->errorCode:I

    if-nez v3, :cond_4

    .line 135
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 136
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass$2;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;Lcom/metamoji/ns/ui/NsCollaboWaitView;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 152
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 157
    :cond_4
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 158
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v4, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass$3;

    invoke-direct {v4, p0, v0, v1, v3}, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass$3;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;Lcom/metamoji/ns/ui/NsCollaboWaitView;Lcom/metamoji/dvm/cs/DvmDistributeClassResult;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v4}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 173
    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 176
    :catch_1
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->cancel()Z

    :catch_2
    :goto_1
    return-void

    .line 62
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForDistributeClass;->cancel()Z

    return-void
.end method
