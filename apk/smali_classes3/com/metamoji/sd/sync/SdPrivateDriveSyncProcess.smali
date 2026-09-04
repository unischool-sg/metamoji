.class public Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;
.super Lcom/metamoji/sd/sync/SdDriveSyncProcess;
.source "SdPrivateDriveSyncProcess.java"


# instance fields
.field private m_privateId:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetm_privateId(Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;->m_privateId:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/metamoji/sd/sync/SdSyncIntentService;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, v0, v1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;-><init>(Lcom/metamoji/sd/sync/SdSyncIntentService;Ljava/lang/String;Z)V

    .line 42
    iput-object p2, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;->m_privateId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doGetHome()Z
    .locals 8

    const/4 v1, 0x0

    .line 50
    :try_start_0
    invoke-static {}, Lcom/metamoji/dvm/DvmUtil;->sendOperationLog()V

    .line 52
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdPrivateDriveMOCManager;

    move-result-object v0

    .line 54
    new-instance v5, Lcom/metamoji/sd/SdPrivateDriveMOManager;

    invoke-direct {v5}, Lcom/metamoji/sd/SdPrivateDriveMOManager;-><init>()V

    .line 56
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->getCloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/sd/cs/SdCloudService;->getContext()Lcom/metamoji/sd/cs/SdCloudServiceContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 58
    new-instance v3, Lcom/metamoji/cs/dc/params/CsGetPrivateDriveHomeParam;

    invoke-direct {v3}, Lcom/metamoji/cs/dc/params/CsGetPrivateDriveHomeParam;-><init>()V

    .line 59
    invoke-static {v3}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;

    if-eqz v7, :cond_5

    .line 61
    iget v3, v7, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->errorCode:I

    if-nez v3, :cond_5

    .line 63
    iget-object v3, v7, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->homeDir:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v7, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->maintenanceText:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v7, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->driveId:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v7, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 64
    new-instance v6, Lcom/metamoji/sd/SdValue;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v6, v2}, Lcom/metamoji/sd/SdValue;-><init>(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v4

    if-nez v4, :cond_1

    if-eqz v4, :cond_0

    .line 103
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    return v1

    .line 71
    :cond_1
    :try_start_1
    new-instance v2, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, p0

    :try_start_2
    invoke-direct/range {v2 .. v7}, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;-><init>(Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdPrivateDriveMOManager;Lcom/metamoji/sd/SdValue;Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;)V

    invoke-virtual {v4, v2}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_2

    .line 103
    :try_start_3
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 107
    :cond_2
    invoke-virtual {v6}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 112
    :cond_3
    iget-object v0, v3, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getCloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/sd/cs/SdCloudService;->getContext()Lcom/metamoji/sd/cs/SdCloudServiceContext;

    move-result-object v0

    iget-object v2, v7, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->driveId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->setDriveId(Ljava/lang/String;)V

    .line 113
    iget-object v0, v3, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getCloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/sd/cs/SdCloudService;->getContext()Lcom/metamoji/sd/cs/SdCloudServiceContext;

    move-result-object v0

    iget-object v2, v7, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->homeDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->setHomeDir(Ljava/lang/String;)V

    .line 114
    iget-object v0, v3, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getCloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/sd/cs/SdCloudService;->getContext()Lcom/metamoji/sd/cs/SdCloudServiceContext;

    move-result-object v0

    iget-object v2, v7, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->maintenanceText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->setMaintenanceText(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, p0

    :goto_0
    if-eqz v4, :cond_4

    .line 103
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 105
    :cond_4
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_5
    move-object v3, p0

    return v1

    :catch_1
    move-exception v0

    move-object v3, p0

    .line 122
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "[SdPrivateDriveSyncProcess] :: ERROR doGetHome: %s"

    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method protected doSetup()Z
    .locals 5

    const/4 v0, 0x0

    .line 133
    :try_start_0
    sget v1, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_OUT_OF_SPACE:I

    sget v2, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_EXPIRED:I

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;->internalPutDriveStatusOff(I)Z

    .line 135
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getCloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object v1

    .line 136
    new-instance v2, Lcom/metamoji/sd/cs/params/SdGetMaintenanceInfoParams;

    invoke-direct {v2}, Lcom/metamoji/sd/cs/params/SdGetMaintenanceInfoParams;-><init>()V

    .line 137
    invoke-virtual {v1, v2}, Lcom/metamoji/sd/cs/SdCloudService;->executeGetMaintenanceInfoWithParams(Lcom/metamoji/sd/cs/params/SdGetMaintenanceInfoParams;)Lcom/metamoji/sd/cs/response/SdGetMaintenanceInfoResult;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 140
    iget-boolean v2, v2, Lcom/metamoji/sd/cs/response/SdGetMaintenanceInfoResult;->isUnderMaintenance:Z

    if-eqz v2, :cond_0

    return v0

    .line 145
    :cond_0
    new-instance v2, Lcom/metamoji/sd/cs/params/SdSyncStartParams;

    invoke-direct {v2}, Lcom/metamoji/sd/cs/params/SdSyncStartParams;-><init>()V

    .line 146
    invoke-virtual {v1, v2}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object v1

    check-cast v1, Lcom/metamoji/sd/cs/response/SdSyncStartResult;

    if-nez v1, :cond_1

    return v0

    .line 151
    :cond_1
    iget v2, v1, Lcom/metamoji/sd/cs/response/SdSyncStartResult;->errorCode:I

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 152
    iget v2, v1, Lcom/metamoji/sd/cs/response/SdSyncStartResult;->errorCode:I

    const/16 v4, 0x2aff

    if-ne v2, v4, :cond_2

    .line 154
    sget v1, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_ACCESS_DENIED:I

    invoke-virtual {p0, v1}, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;->internalPutDriveStatusOn(I)Z

    goto :goto_0

    .line 155
    :cond_2
    iget v1, v1, Lcom/metamoji/sd/cs/response/SdSyncStartResult;->errorCode:I

    const/16 v2, 0x2b02

    if-ne v1, v2, :cond_3

    .line 157
    sget v1, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_EXPIRED:I

    invoke-virtual {p0, v1}, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;->internalPutDriveStatusOn(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_3
    :goto_0
    return v0

    :cond_4
    return v3

    :catch_0
    move-exception v1

    .line 169
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[SdPrivateDriveSyncProcess] :: ERROR doSetup: %s"

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method protected internalDocumentManager()Lcom/metamoji/sd/SdDriveDocumentManager;
    .locals 2

    .line 179
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;->m_privateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdPrivateDriveManager;->getDocumentManagerByPrivateId(Ljava/lang/String;)Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    move-result-object v0

    return-object v0
.end method

.method protected internalDriveSyncLastRevision()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 191
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdPrivateDriveMOCManager;

    move-result-object v0

    .line 193
    new-instance v1, Lcom/metamoji/sd/SdPrivateDriveMOManager;

    invoke-direct {v1}, Lcom/metamoji/sd/SdPrivateDriveMOManager;-><init>()V

    .line 194
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 197
    :try_start_0
    iput-boolean v2, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;->m_errFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v3

    .line 201
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;->m_privateId:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    move-result-object v1

    if-nez v1, :cond_2

    .line 204
    iput-boolean v2, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;->m_errFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_1
    return-object v3

    .line 208
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getLastUpdateRevision()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 213
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 215
    :cond_4
    throw v1
.end method

.method protected internalFireEventSyncStart()V
    .locals 3

    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 306
    const-string v1, "driveId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_Sync_Private_Drive_Name:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 308
    :goto_0
    const-string v1, "driveName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string/jumbo v1, "sharedOneDriveSyncStart"

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;->fireEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected internalFireEventTagOrderTooLong()V
    .locals 3

    .line 316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 317
    const-string v1, "driveId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_Sync_Private_Drive_Name:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 319
    :goto_0
    const-string v1, "driveName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string/jumbo v1, "sharedTagOrderTooLong"

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;->fireEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected internalPrepareSync()V
    .locals 0

    return-void
.end method

.method protected internalPutDriveStatusOff(I)Z
    .locals 2

    .line 291
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;->m_privateId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/sd/SdPrivateDriveManager;->putDriveStatusOff(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method protected internalPutDriveStatusOn(I)Z
    .locals 2

    .line 282
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;->m_privateId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/sd/SdPrivateDriveManager;->putDriveStatusOn(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method protected internalUpdateDriveSyncLastRevision(Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x0

    .line 227
    :try_start_0
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdPrivateDriveMOCManager;

    move-result-object v0

    .line 229
    new-instance v4, Lcom/metamoji/sd/SdPrivateDriveMOManager;

    invoke-direct {v4}, Lcom/metamoji/sd/SdPrivateDriveMOManager;-><init>()V

    .line 230
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-nez v5, :cond_1

    .line 233
    :try_start_1
    iput-boolean v0, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;->m_errFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_0

    .line 266
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return v1

    .line 236
    :cond_1
    :try_start_3
    new-instance v6, Lcom/metamoji/sd/SdValue;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v6, v2}, Lcom/metamoji/sd/SdValue;-><init>(Ljava/lang/Object;)V

    .line 238
    new-instance v2, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;-><init>(Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;Lcom/metamoji/sd/SdPrivateDriveMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdValue;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 259
    invoke-virtual {v6}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_3

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    if-eqz v5, :cond_4

    .line 266
    :try_start_4
    invoke-virtual {v5}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_4
    return v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 268
    :cond_5
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 270
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[SdPrivateDriveSyncProcess] :: ERROR internalUpdateDriveSyncLastRevision: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method protected isPrivate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
