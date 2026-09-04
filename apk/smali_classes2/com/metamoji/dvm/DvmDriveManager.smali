.class public Lcom/metamoji/dvm/DvmDriveManager;
.super Ljava/lang/Object;
.source "DvmDriveManager.java"


# static fields
.field private static _instance:Lcom/metamoji/dvm/DvmDriveManager;


# instance fields
.field protected m_cleanupHandlerThread:Landroid/os/HandlerThread;

.field private m_driveDocumentManagerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/sd/SdDriveDocumentManager;",
            ">;"
        }
    .end annotation
.end field

.field protected m_driveGroupsInfo:Ljava/util/List;
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

.field protected m_locationId:Ljava/lang/String;

.field protected m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveMOCManager;

.field protected m_managedObjectManager:Lcom/metamoji/sd/SdDriveMOManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/sd/SdDriveMOCManager;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_driveDocumentManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    iput-object p1, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveMOCManager;

    .line 76
    new-instance p1, Lcom/metamoji/sd/SdDriveMOManager;

    invoke-direct {p1}, Lcom/metamoji/sd/SdDriveMOManager;-><init>()V

    iput-object p1, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveMOManager;

    .line 77
    invoke-direct {p0}, Lcom/metamoji/dvm/DvmDriveManager;->initDriveGroupsInfo()V

    return-void
.end method

.method private callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 892
    :cond_0
    invoke-virtual {p1, p2}, Lcom/metamoji/sd/SdFailureBlock;->setArgument(Ljava/lang/Object;)V

    .line 895
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/sd/SdFailureBlock;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 897
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[SdDriveManager] :: ERROR failureCall: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 876
    :cond_0
    invoke-virtual {p1, p2}, Lcom/metamoji/sd/SdSuccessBlock;->setArgument(Ljava/lang/Object;)V

    .line 879
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/sd/SdSuccessBlock;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 881
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[SdDriveManager] :: ERROR callSuccess: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private getDocumentManagerByOption(Lcom/metamoji/dvm/fw/DvmDriveOption;)Lcom/metamoji/dvm/fw/DvmDocumentManager;
    .locals 3

    .line 109
    sget-object v0, Lcom/metamoji/dvm/DvmDriveManager$9;->$SwitchMap$com$metamoji$dvm$DvmDriveType:[I

    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/DvmDriveOption;->getType()Lcom/metamoji/dvm/DvmDriveType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/dvm/DvmDriveType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 144
    :cond_0
    check-cast p1, Lcom/metamoji/dvm/fw/DvmSharedDriveOption;

    .line 145
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/DvmSharedDriveOption;->getDriveId()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-virtual {p0, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getDocumentManagerByDriveId(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 148
    new-instance v1, Lcom/metamoji/dvm/impl/DvmSharedDriveDocumentManager;

    invoke-direct {v1}, Lcom/metamoji/dvm/impl/DvmSharedDriveDocumentManager;-><init>()V

    .line 149
    invoke-virtual {v1, v0, p1}, Lcom/metamoji/dvm/impl/DvmSharedDriveDocumentManager;->initWithSdDocumentManager(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/dvm/fw/DvmDriveOption;)Ljava/lang/Object;

    return-object v1

    .line 112
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/metamoji/dvm/fw/DvmPrivateDriveOption;

    .line 114
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/DvmPrivateDriveOption;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v1

    if-nez v0, :cond_2

    .line 120
    invoke-virtual {v1}, Lcom/metamoji/sd/SdPrivateDriveManager;->getCurrentPrivateId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 132
    :goto_0
    invoke-virtual {v1, v0}, Lcom/metamoji/sd/SdPrivateDriveManager;->getDocumentManagerByPrivateId(Ljava/lang/String;)Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 135
    new-instance v1, Lcom/metamoji/dvm/impl/DvmPrivateDriveDocumentManager;

    invoke-direct {v1}, Lcom/metamoji/dvm/impl/DvmPrivateDriveDocumentManager;-><init>()V

    .line 136
    invoke-virtual {v1, v0, p1}, Lcom/metamoji/dvm/impl/DvmPrivateDriveDocumentManager;->initWithSdDocumentManager(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/dvm/fw/DvmDriveOption;)Ljava/lang/Object;

    return-object v1

    :cond_3
    :goto_1
    return-object v2
.end method

.method public static getInstance()Lcom/metamoji/dvm/DvmDriveManager;
    .locals 2

    .line 56
    sget-object v0, Lcom/metamoji/dvm/DvmDriveManager;->_instance:Lcom/metamoji/dvm/DvmDriveManager;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/metamoji/sd/SdDriveMOCManager;

    invoke-direct {v0}, Lcom/metamoji/sd/SdDriveMOCManager;-><init>()V

    .line 58
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveMOCManager;->setupMainContext()V

    .line 59
    new-instance v1, Lcom/metamoji/dvm/DvmDriveManager;

    invoke-direct {v1, v0}, Lcom/metamoji/dvm/DvmDriveManager;-><init>(Lcom/metamoji/sd/SdDriveMOCManager;)V

    sput-object v1, Lcom/metamoji/dvm/DvmDriveManager;->_instance:Lcom/metamoji/dvm/DvmDriveManager;

    .line 61
    :cond_0
    sget-object v0, Lcom/metamoji/dvm/DvmDriveManager;->_instance:Lcom/metamoji/dvm/DvmDriveManager;

    return-object v0
.end method

.method private initDriveGroupsInfo()V
    .locals 2

    .line 905
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 906
    const-string v1, "MMJDriveGroupsInfomation"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_driveGroupsInfo:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clearDrive(Ljava/lang/String;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 6

    if-nez p1, :cond_0

    .line 259
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/dvm/DvmDriveManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 263
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDocumentManagerByDriveId(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v4

    .line 264
    new-instance v5, Lcom/metamoji/sd/SdValue;

    invoke-direct {v5}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 265
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v2

    if-nez v2, :cond_2

    .line 268
    :try_start_0
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object v0, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, v0}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/dvm/DvmDriveManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 307
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :cond_1
    move-object v1, p0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_4

    .line 272
    :cond_2
    :try_start_1
    new-instance v0, Lcom/metamoji/dvm/DvmDriveManager$1;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v1, p0

    move-object v3, p1

    :try_start_2
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/dvm/DvmDriveManager$1;-><init>(Lcom/metamoji/dvm/DvmDriveManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/lang/String;Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdValue;)V

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_3

    .line 307
    :goto_0
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, p0

    :goto_1
    move-object p1, v0

    goto :goto_4

    :catch_0
    move-object v1, p0

    .line 303
    :catch_1
    :try_start_3
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object v0, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, v0}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v5, p1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    goto :goto_0

    .line 311
    :cond_3
    :goto_2
    invoke-virtual {v5}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_5

    .line 312
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/dvm/DvmDriveManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    if-eqz p2, :cond_6

    .line 316
    iget-object p1, v1, Lcom/metamoji/dvm/DvmDriveManager;->m_cleanupHandlerThread:Landroid/os/HandlerThread;

    if-nez p1, :cond_4

    .line 317
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "sd_cleanupHandler"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, v1, Lcom/metamoji/dvm/DvmDriveManager;->m_cleanupHandlerThread:Landroid/os/HandlerThread;

    .line 318
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 321
    :cond_4
    new-instance p1, Landroid/os/Handler;

    iget-object p2, v1, Lcom/metamoji/dvm/DvmDriveManager;->m_cleanupHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 322
    new-instance p2, Lcom/metamoji/dvm/DvmDriveManager$2;

    invoke-direct {p2, p0}, Lcom/metamoji/dvm/DvmDriveManager$2;-><init>(Lcom/metamoji/dvm/DvmDriveManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 330
    :cond_5
    invoke-virtual {v5}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/SdError;

    invoke-direct {p0, p4, p1}, Lcom/metamoji/dvm/DvmDriveManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    :cond_6
    :goto_3
    return-void

    :goto_4
    if-eqz v2, :cond_7

    .line 307
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 309
    :cond_7
    throw p1
.end method

.method public clearnupDiscardedDrives()V
    .locals 8

    .line 338
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveMOManager;

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/SdDriveMOManager;->getDiscardedDriveAll(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v1

    .line 341
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/sd/entities/SdMODiscardedDrive;

    .line 342
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODiscardedDrive;->getId()Ljava/lang/String;

    move-result-object v3

    .line 343
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODiscardedDrive;->getLocalCacheId()Ljava/lang/String;

    move-result-object v4

    .line 344
    new-instance v5, Ljava/io/File;

    invoke-static {v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->getDatabaseFileDirWithDriveId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    new-instance v6, Ljava/io/File;

    invoke-static {v3, v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->dirNameForDrive(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/metamoji/sd/SdDriveDocumentManager;->documentContentsDirPathWithName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    new-instance v7, Ljava/io/File;

    invoke-static {v3, v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->dirNameForDrive(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->documentThumbnailDirPathWithName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-static {v7}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 351
    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 352
    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 355
    new-instance v3, Lcom/metamoji/dvm/DvmDriveManager$3;

    invoke-direct {v3, p0, v2, v0}, Lcom/metamoji/dvm/DvmDriveManager$3;-><init>(Lcom/metamoji/dvm/DvmDriveManager;Lcom/metamoji/sd/entities/SdMODiscardedDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 364
    :try_start_1
    const-string v2, "[SdDriveManager] :: ERROR clearnupDiscardedDrives: %s"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_1
    return-void

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 370
    :cond_2
    throw v1
.end method

.method public declared-synchronized discardDocumentManagerByDriveId(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_driveDocumentManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/SdDriveDocumentManager;

    if-eqz p1, :cond_0

    .line 509
    invoke-virtual {p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->discard()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getCurrentDrive()Ljava/lang/String;
    .locals 2

    .line 611
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 612
    const-string v1, "SdCurrentDrive"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFolder()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 629
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 630
    const-string v1, "SdCurrentFolder"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDocumentManagerByDriveId(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;
    .locals 5

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_driveDocumentManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/SdDriveDocumentManager;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->isDiscarded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveMOCManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    :try_start_1
    iget-object v2, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveMOManager;

    invoke-virtual {v2, p1, v1}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODrive;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 169
    new-instance v0, Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODrive;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODrive;->getLocalCacheId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOCManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->isDbFileExists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->setupMainContext()V

    .line 175
    :cond_1
    new-instance v3, Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODrive;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/metamoji/sd/cs/SdCloudServiceContext;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODrive;->getHomeDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->setHomeDir(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODrive;->getMaintenanceText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->setMaintenanceText(Ljava/lang/String;)V

    .line 180
    new-instance v2, Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-direct {v2, v0, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;-><init>(Lcom/metamoji/sd/SdDriveContentsMOCManager;Lcom/metamoji/sd/cs/SdCloudServiceContext;)V

    .line 181
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_driveDocumentManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    :cond_2
    if-eqz v1, :cond_3

    .line 189
    :try_start_2
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 194
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 185
    :try_start_3
    const-string v0, "[SdDriveManager] :: ERROR getDocumentManagerByDriveId: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    .line 189
    :try_start_4
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 186
    :cond_4
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    if-eqz v1, :cond_5

    .line 189
    :try_start_5
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 191
    :cond_5
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public getDriveAll()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/fw/bean/DvmDriveBean;",
            ">;"
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    iget-object v1, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveMOCManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v1, :cond_2

    .line 248
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    .line 236
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveMOManager;

    invoke-virtual {v2, v1}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveAll(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 238
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/sd/entities/SdMODrive;

    .line 239
    new-instance v4, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    invoke-direct {v4, v3}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;-><init>(Lcom/metamoji/sd/entities/SdMODrive;)V

    .line 240
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 248
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 244
    :try_start_1
    const-string v3, "[SdDriveManager] :: ERROR getDriveAll: %s"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 248
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return-object v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 250
    :cond_3
    throw v0
.end method

.method public getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return-object v1

    .line 207
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveMOManager;

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODrive;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 210
    new-instance v2, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    invoke-direct {v2, p1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;-><init>(Lcom/metamoji/sd/entities/SdMODrive;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 218
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return-object v2

    :cond_3
    if-eqz v0, :cond_4

    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 215
    :try_start_1
    const-string v2, "[SdDriveManager] :: ERROR getDriveById: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1

    :goto_2
    if-eqz v0, :cond_5

    .line 218
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 220
    :cond_5
    throw p1
.end method

.method public getDriveGroupAllWithOrderAscending(ZZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;",
            ">;"
        }
    .end annotation

    .line 716
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 718
    iget-object v1, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_driveGroupsInfo:Ljava/util/List;

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 719
    new-instance p2, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_driveGroupsInfo:Ljava/util/List;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 721
    new-instance v1, Lcom/metamoji/dvm/DvmDriveManager$8;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/dvm/DvmDriveManager$8;-><init>(Lcom/metamoji/dvm/DvmDriveManager;Z)V

    invoke-static {p2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 734
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 735
    new-instance v1, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;

    invoke-direct {v1}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;-><init>()V

    .line 736
    const-string v2, "groupId"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->setGroupId(Ljava/lang/String;)V

    .line 737
    const-string v2, "groupName"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->setName(Ljava/lang/String;)V

    .line 738
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 744
    :cond_0
    iget-object v1, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveMOCManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v1, :cond_3

    .line 762
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    .line 750
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveMOManager;

    invoke-virtual {v2, p1, p2, v1}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveGroupAllWithOrderAscending(ZZLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 752
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 753
    new-instance v2, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;

    invoke-direct {v2, p2}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;-><init>(Ljava/util/Map;)V

    .line 754
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 762
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 758
    :try_start_1
    const-string p2, "[SdDriveManager] :: ERROR getDriveGroupAllWithOrderAscending: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 762
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return-object v0

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 764
    :cond_4
    throw p1
.end method

.method public getDriveStatus(Ljava/lang/String;)I
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz v0, :cond_3

    .line 495
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return v1

    .line 484
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveMOManager;

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODrive;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 487
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODrive;->getStatus()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    .line 495
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 491
    :try_start_1
    const-string v2, "[SdDriveManager] :: ERROR getDriveStatus: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 495
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return v1

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 497
    :cond_4
    throw p1
.end method

.method public getDrivesByGroupId(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/fw/bean/DvmDriveBean;",
            ">;"
        }
    .end annotation

    .line 778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 780
    iget-object v1, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveMOCManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v1, :cond_2

    .line 798
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    .line 786
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveMOManager;

    invoke-virtual {v2, p1, p2, p3, v1}, Lcom/metamoji/sd/SdDriveMOManager;->getDrivesByGroupId(Ljava/lang/String;ZZLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 788
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/sd/entities/SdMODrive;

    .line 789
    new-instance p3, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    invoke-direct {p3, p2}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;-><init>(Lcom/metamoji/sd/entities/SdMODrive;)V

    .line 790
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 798
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 794
    :try_start_1
    const-string p2, "[SdDriveManager] :: ERROR getDrivesByGroupId: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 798
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return-object v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 800
    :cond_3
    throw p1
.end method

.method public declared-synchronized getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 90
    :try_start_0
    new-instance p1, Lcom/metamoji/dvm/fw/DvmPrivateDriveOption;

    invoke-direct {p1}, Lcom/metamoji/dvm/fw/DvmPrivateDriveOption;-><init>()V

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p1, v0}, Lcom/metamoji/dvm/fw/DvmPrivateDriveOption;->initWithUserId(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmPrivateDriveOption;

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Lcom/metamoji/dvm/fw/DvmSharedDriveOption;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/DvmSharedDriveOption;-><init>()V

    .line 95
    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/fw/DvmSharedDriveOption;->initWithDriveId(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmSharedDriveOption;

    move-object p1, v0

    .line 98
    :goto_0
    invoke-direct {p0, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDocumentManagerByOption(Lcom/metamoji/dvm/fw/DvmDriveOption;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getGroupIdFromDriveId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 810
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    .line 827
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return-object v1

    .line 816
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveMOManager;

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODrive;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 819
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODrive;->getGroupId()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 827
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return-object p1

    :cond_3
    if-eqz v0, :cond_4

    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 823
    :try_start_1
    const-string v2, "[SdDriveManager] :: ERROR getGroupIdFromDriveId: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1

    :goto_2
    if-eqz v0, :cond_5

    .line 827
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 829
    :cond_5
    throw p1
.end method

.method public getGroupNameByGroupId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 841
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_driveGroupsInfo:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 842
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 843
    const-string v2, "groupId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 844
    const-string p1, "groupName"

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 849
    :cond_1
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-eqz v0, :cond_2

    .line 862
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return-object v1

    .line 855
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveMOManager;

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/sd/SdDriveMOManager;->getGroupNameByGroupId(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 862
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 858
    :try_start_1
    const-string v2, "[SdDriveManager] :: ERROR getGroupNameByGroupId: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 862
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_5
    return-object v1

    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 864
    :cond_6
    throw p1
.end method

.method public getLastUpdateRevisionByDriveId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 640
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz v0, :cond_3

    .line 657
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v1

    .line 646
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveMOManager;

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODrive;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 649
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODrive;->getLastUpdateRevision()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    .line 657
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 653
    :try_start_1
    const-string v2, "[SdDriveManager] :: ERROR getLastUpdateRevisionByDriveId: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 657
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return-object v1

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 659
    :cond_4
    throw p1
.end method

.method public getLocationId()Ljava/lang/String;
    .locals 2

    .line 575
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_locationId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 576
    new-instance v0, Ljava/io/File;

    const-string v1, "locationId.txt"

    invoke-static {v1}, Lcom/metamoji/sd/SdManagedObjectContextManager;->getDatabaseFilePathWithFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->readFileAsString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_locationId:Ljava/lang/String;

    goto :goto_0

    .line 580
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_locationId:Ljava/lang/String;

    .line 581
    invoke-static {v1, v0}, Lcom/metamoji/sd/SdUtils;->writeStringAsFile(Ljava/lang/String;Ljava/io/File;)V

    .line 583
    :goto_0
    const-string v0, "locationId.txt:%s"

    iget-object v1, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_locationId:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 586
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[SdDriveManager] :: ERROR getLocationId: %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 588
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_locationId:Ljava/lang/String;

    return-object v0
.end method

.method public getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveMOCManager;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveMOCManager;

    return-object v0
.end method

.method public putDriveStatusOff(Ljava/lang/String;I)Z
    .locals 7

    .line 426
    new-instance v4, Lcom/metamoji/sd/SdValue;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v0}, Lcom/metamoji/sd/SdValue;-><init>(Ljava/lang/Object;)V

    .line 427
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v2

    const/4 v6, 0x0

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    .line 464
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return v6

    .line 433
    :cond_1
    :try_start_0
    new-instance v0, Lcom/metamoji/dvm/DvmDriveManager$5;

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/dvm/DvmDriveManager$5;-><init>(Lcom/metamoji/dvm/DvmDriveManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/lang/String;Lcom/metamoji/sd/SdValue;I)V

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 454
    invoke-virtual {v4}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    .line 464
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return v6

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_4
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 459
    :try_start_1
    const-string p2, "[SdDriveManager] :: ERROR putDriveStatusOff: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    .line 464
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_5
    return v6

    :goto_0
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 466
    :cond_6
    throw p1
.end method

.method public putDriveStatusOn(Ljava/lang/String;I)Z
    .locals 7

    .line 377
    new-instance v4, Lcom/metamoji/sd/SdValue;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v0}, Lcom/metamoji/sd/SdValue;-><init>(Ljava/lang/Object;)V

    .line 378
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v2

    const/4 v6, 0x0

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    .line 415
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return v6

    .line 384
    :cond_1
    :try_start_0
    new-instance v0, Lcom/metamoji/dvm/DvmDriveManager$4;

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/dvm/DvmDriveManager$4;-><init>(Lcom/metamoji/dvm/DvmDriveManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/lang/String;Lcom/metamoji/sd/SdValue;I)V

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 405
    invoke-virtual {v4}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    .line 415
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return v6

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_4
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 410
    :try_start_1
    const-string p2, "[SdDriveManager] :: ERROR putDriveStatusOn: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    .line 415
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_5
    return v6

    :goto_0
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 417
    :cond_6
    throw p1
.end method

.method public saveDriveGroupsInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 914
    iput-object p1, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_driveGroupsInfo:Ljava/util/List;

    .line 916
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 918
    const-string v1, "MMJDriveGroupsInfomation"

    if-eqz p1, :cond_0

    .line 919
    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 921
    :cond_0
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->removeValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentDrive(Ljava/lang/String;)V
    .locals 2

    .line 596
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 598
    const-string v1, "SdCurrentDrive"

    if-eqz p1, :cond_0

    .line 599
    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 601
    :cond_0
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->removeValue(Ljava/lang/String;)V

    .line 602
    const-string p1, "SdCurrentFolder"

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtUserDefaults;->removeValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentFolder(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 620
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 621
    const-string v1, "SdCurrentFolder"

    invoke-static {p1}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateDriveEntryType(Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 4

    .line 668
    new-instance v0, Lcom/metamoji/sd/SdValue;

    invoke-direct {v0}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 669
    iget-object v1, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveMOCManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    .line 698
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return v2

    .line 675
    :cond_1
    :try_start_0
    new-instance v3, Lcom/metamoji/dvm/DvmDriveManager$7;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/metamoji/dvm/DvmDriveManager$7;-><init>(Lcom/metamoji/dvm/DvmDriveManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 698
    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 693
    :try_start_1
    const-string p2, "[SdDriveManager] :: ERROR updateDriveName: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 694
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_0

    .line 702
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v2

    :goto_2
    if-eqz v1, :cond_4

    .line 698
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 700
    :cond_4
    throw p1
.end method

.method public updateDriveName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 3

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_4

    .line 527
    :cond_0
    new-instance v0, Lcom/metamoji/sd/SdValue;

    invoke-direct {v0}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 528
    iget-object v1, p0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdDriveMOCManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1

    if-nez v1, :cond_1

    .line 531
    :try_start_0
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->DriveIsDiscardError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/dvm/DvmDriveManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 558
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 535
    :cond_1
    :try_start_1
    new-instance v2, Lcom/metamoji/dvm/DvmDriveManager$6;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/metamoji/dvm/DvmDriveManager$6;-><init>(Lcom/metamoji/dvm/DvmDriveManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 558
    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 553
    :try_start_2
    const-string p2, "[SdDriveManager] :: ERROR updateDriveName: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_0

    .line 562
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    .line 563
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p3, p1}, Lcom/metamoji/dvm/DvmDriveManager;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    goto :goto_2

    .line 565
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/SdError;

    invoke-direct {p0, p4, p1}, Lcom/metamoji/dvm/DvmDriveManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    :cond_4
    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_5

    .line 558
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 560
    :cond_5
    throw p1

    .line 523
    :cond_6
    :goto_4
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->ArgumentIsNilError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-direct {p0, p4, p1}, Lcom/metamoji/dvm/DvmDriveManager;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void
.end method
