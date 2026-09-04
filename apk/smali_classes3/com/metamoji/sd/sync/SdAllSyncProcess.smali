.class public Lcom/metamoji/sd/sync/SdAllSyncProcess;
.super Lcom/metamoji/sd/sync/SdSyncProcess;
.source "SdAllSyncProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/sd/sync/SdAllSyncProcess$SyncSequence;
    }
.end annotation


# instance fields
.field private m_driveIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_driveSyncProcess:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

.field private m_errFlag:Z

.field private m_groupIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_index:I

.field private m_specified:Z

.field private m_specifiedIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_syncMode:I

.field private m_syncSequence:Lcom/metamoji/sd/sync/SdAllSyncProcess$SyncSequence;


# direct methods
.method public constructor <init>(Lcom/metamoji/sd/sync/SdSyncIntentService;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sd/sync/SdSyncIntentService;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Lcom/metamoji/sd/sync/SdSyncProcess;-><init>(Lcom/metamoji/sd/sync/SdSyncIntentService;)V

    .line 46
    sget-object p1, Lcom/metamoji/sd/sync/SdAllSyncProcess$SyncSequence;->DriveList:Lcom/metamoji/sd/sync/SdAllSyncProcess$SyncSequence;

    iput-object p1, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_syncSequence:Lcom/metamoji/sd/sync/SdAllSyncProcess$SyncSequence;

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_errFlag:Z

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_driveIds:Ljava/util/ArrayList;

    .line 49
    iput p1, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_index:I

    .line 50
    iput-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_driveSyncProcess:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    .line 54
    iput-boolean p1, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_specified:Z

    .line 58
    iput p2, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_syncMode:I

    .line 59
    iput-object p3, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_specifiedIds:Ljava/util/ArrayList;

    .line 60
    iput-object p4, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_groupIds:Ljava/util/ArrayList;

    return-void
.end method

.method private doGetDriveList()Z
    .locals 18

    move-object/from16 v1, p0

    .line 166
    iget v0, v1, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_syncMode:I

    const/4 v2, 0x2

    const/4 v11, 0x1

    if-ne v0, v2, :cond_2

    .line 167
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_specifiedIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_specifiedIds:Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_driveIds:Ljava/util/ArrayList;

    .line 172
    iput-boolean v11, v1, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_specified:Z

    return v11

    .line 168
    :cond_1
    :goto_0
    const-string v0, "[SdAllSyncProcess] :: ERROR doGetDriveList: Option Id\'s not specified."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 176
    :cond_2
    new-instance v10, Lcom/metamoji/sd/SdValue;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v10, v0}, Lcom/metamoji/sd/SdValue;-><init>(Ljava/lang/Object;)V

    .line 177
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 179
    new-instance v2, Lcom/metamoji/cs/dc/params/CsGetDriveEntryParam;

    invoke-direct {v2}, Lcom/metamoji/cs/dc/params/CsGetDriveEntryParam;-><init>()V

    .line 180
    invoke-static {v2}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v2

    check-cast v2, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;

    if-eqz v2, :cond_11

    .line 182
    iget v3, v2, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;->errorCode:I

    if-nez v3, :cond_11

    .line 184
    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;->uid:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;->list:Ljava/util/List;

    if-eqz v3, :cond_11

    if-eqz v0, :cond_11

    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;->uid:Ljava/lang/String;

    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 185
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 186
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 187
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 188
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 189
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 190
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 192
    iget-object v2, v2, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 193
    invoke-static {v3}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 194
    invoke-static {v3}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getGroupId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 197
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 198
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 199
    const-string v13, "groupName"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 200
    const-string v15, "groupOrder"

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v16, v0

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v17, v2

    .line 203
    const-string v2, "groupId"

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-interface {v0, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    :goto_2
    if-eqz v5, :cond_4

    .line 212
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-virtual {v7, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object/from16 v0, v16

    move-object/from16 v2, v17

    const/4 v11, 0x1

    goto :goto_1

    .line 218
    :cond_5
    new-instance v0, Lcom/metamoji/sd/sync/SdAllSyncProcess$1;

    invoke-direct {v0, v1, v7}, Lcom/metamoji/sd/sync/SdAllSyncProcess$1;-><init>(Lcom/metamoji/sd/sync/SdAllSyncProcess;Ljava/util/HashMap;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 233
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v5

    .line 234
    invoke-virtual {v5}, Lcom/metamoji/dvm/DvmDriveManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveMOCManager;

    move-result-object v0

    .line 235
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 236
    new-instance v2, Lcom/metamoji/sd/SdDriveMOManager;

    invoke-direct {v2}, Lcom/metamoji/sd/SdDriveMOManager;-><init>()V

    .line 237
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v3

    .line 239
    :try_start_0
    new-instance v0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

    invoke-direct/range {v0 .. v10}, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;-><init>(Lcom/metamoji/sd/sync/SdAllSyncProcess;Lcom/metamoji/sd/SdDriveMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/util/ArrayList;Lcom/metamoji/dvm/DvmDriveManager;Ljava/util/List;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/metamoji/sd/SdValue;)V

    invoke-virtual {v3, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_6

    .line 346
    :goto_3
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    .line 343
    :try_start_1
    const-string v2, "[SdAllSyncProcess] :: ERROR doGetDriveList: %s"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_6

    goto :goto_3

    .line 350
    :cond_6
    :goto_4
    invoke-virtual {v10}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 352
    invoke-virtual {v5, v12}, Lcom/metamoji/dvm/DvmDriveManager;->saveDriveGroupsInfo(Ljava/util/List;)V

    .line 362
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 363
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 365
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_8

    .line 368
    invoke-static {v5}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isHidden(Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 370
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 372
    :cond_9
    iget v6, v1, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_syncMode:I

    const/4 v11, 0x4

    if-ne v6, v11, :cond_8

    .line 374
    invoke-static {v5}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getGroupId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 375
    iget-object v6, v1, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_groupIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_a
    if-nez v5, :cond_8

    iget-object v5, v1, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_groupIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 377
    :cond_b
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 384
    :cond_c
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 385
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 387
    iget v0, v1, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_syncMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    .line 389
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 390
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_d
    const/4 v3, 0x5

    if-ne v0, v3, :cond_e

    .line 393
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 394
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 395
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_specifiedIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    .line 397
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 398
    iput-boolean v2, v1, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_specified:Z

    goto :goto_6

    :cond_e
    const/4 v2, 0x3

    if-ne v0, v2, :cond_f

    .line 402
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 405
    :cond_f
    :goto_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_driveIds:Ljava/util/ArrayList;

    goto :goto_8

    :goto_7
    if-eqz v3, :cond_10

    .line 346
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 348
    :cond_10
    throw v0

    .line 409
    :cond_11
    :goto_8
    invoke-virtual {v10}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public afterProcesses()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_driveSyncProcess:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->afterProcesses()V

    :cond_0
    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_driveSyncProcess:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    .line 158
    const-string/jumbo v0, "sharedDriveSyncEnd"

    invoke-virtual {p0, v0}, Lcom/metamoji/sd/sync/SdAllSyncProcess;->fireEvent(Ljava/lang/String;)V

    return-void
.end method

.method public beforeProcesses()V
    .locals 2

    .line 85
    const-string/jumbo v0, "sharedDriveSyncStart"

    invoke-virtual {p0, v0}, Lcom/metamoji/sd/sync/SdAllSyncProcess;->fireEvent(Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/metamoji/sd/sync/SdAllSyncProcess$SyncSequence;->DriveList:Lcom/metamoji/sd/sync/SdAllSyncProcess$SyncSequence;

    iput-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_syncSequence:Lcom/metamoji/sd/sync/SdAllSyncProcess$SyncSequence;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_errFlag:Z

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_driveIds:Ljava/util/ArrayList;

    .line 90
    iput-object v1, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_driveSyncProcess:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    .line 91
    iput v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_index:I

    .line 92
    iput-boolean v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_specified:Z

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "SdAllSyncProcess"

    return-object v0
.end method

.method public hasMoreNext()Z
    .locals 3

    .line 72
    iget-boolean v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_errFlag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_syncSequence:Lcom/metamoji/sd/sync/SdAllSyncProcess$SyncSequence;

    sget-object v2, Lcom/metamoji/sd/sync/SdAllSyncProcess$SyncSequence;->Complate:Lcom/metamoji/sd/sync/SdAllSyncProcess$SyncSequence;

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public processOne()I
    .locals 6

    .line 100
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_syncSequence:Lcom/metamoji/sd/sync/SdAllSyncProcess$SyncSequence;

    invoke-virtual {v0}, Lcom/metamoji/sd/sync/SdAllSyncProcess$SyncSequence;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_0

    return v1

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_driveSyncProcess:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    invoke-virtual {v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->hasMoreNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_driveSyncProcess:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    invoke-virtual {v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->processOne()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_driveSyncProcess:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    invoke-virtual {v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->afterProcesses()V

    .line 129
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_driveIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_index:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_index:I

    if-le v0, v3, :cond_2

    .line 130
    new-instance v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_intentService:Lcom/metamoji/sd/sync/SdSyncIntentService;

    iget-object v4, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_driveIds:Ljava/util/ArrayList;

    iget v5, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_index:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;-><init>(Lcom/metamoji/sd/sync/SdSyncIntentService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_driveSyncProcess:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    .line 131
    iget-boolean v3, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_specified:Z

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->setSpecified(Z)V

    .line 132
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_driveSyncProcess:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    invoke-virtual {v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->beforeProcesses()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_driveSyncProcess:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    .line 135
    sget-object v0, Lcom/metamoji/sd/sync/SdAllSyncProcess$SyncSequence;->Complate:Lcom/metamoji/sd/sync/SdAllSyncProcess$SyncSequence;

    iput-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_syncSequence:Lcom/metamoji/sd/sync/SdAllSyncProcess$SyncSequence;

    goto :goto_1

    .line 102
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/sd/sync/SdAllSyncProcess;->doGetDriveList()Z

    move-result v0

    if-nez v0, :cond_4

    .line 103
    iput-boolean v2, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_errFlag:Z

    goto :goto_0

    .line 105
    :cond_4
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_driveIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 106
    new-instance v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_intentService:Lcom/metamoji/sd/sync/SdSyncIntentService;

    iget-object v4, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_driveIds:Ljava/util/ArrayList;

    iget v5, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_index:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;-><init>(Lcom/metamoji/sd/sync/SdSyncIntentService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_driveSyncProcess:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    .line 107
    iget-boolean v3, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_specified:Z

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->setSpecified(Z)V

    .line 108
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_driveSyncProcess:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    invoke-virtual {v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->beforeProcesses()V

    goto :goto_0

    .line 110
    :cond_5
    iput-boolean v2, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_errFlag:Z

    .line 115
    :goto_0
    const-string/jumbo v0, "sharedDriveListSyncUpdated"

    invoke-virtual {p0, v0}, Lcom/metamoji/sd/sync/SdAllSyncProcess;->fireEvent(Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/metamoji/sd/sync/SdAllSyncProcess$SyncSequence;->Drive:Lcom/metamoji/sd/sync/SdAllSyncProcess$SyncSequence;

    iput-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_syncSequence:Lcom/metamoji/sd/sync/SdAllSyncProcess$SyncSequence;

    .line 145
    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess;->m_errFlag:Z

    if-eqz v0, :cond_7

    return v1

    :cond_7
    return v2
.end method
