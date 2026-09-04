.class public Lcom/metamoji/sd/SdPrivateDriveManagerInitializer;
.super Ljava/lang/Object;
.source "SdPrivateDriveManagerInitializer.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doInitialize()V
    .locals 1

    .line 20
    invoke-static {}, Lcom/metamoji/sd/SdUtils;->deleteTempDir()V

    .line 22
    sget-boolean v0, Lcom/metamoji/sd/SdPrivateDriveManager;->_isInitialized:Z

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer;->doMigration()V

    .line 26
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer;->setupPrivateDrive()V

    const/4 v0, 0x1

    .line 28
    sput-boolean v0, Lcom/metamoji/sd/SdPrivateDriveManager;->_isInitialized:Z

    .line 32
    :cond_0
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveManager;->mergeMergingPrivateDrive()V

    .line 34
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveManager;->clearnupDiscardedPrivateDrives()V

    return-void
.end method

.method public static doMigration()V
    .locals 6

    .line 41
    new-instance v0, Lcom/metamoji/sd/SdPrivateDriveMOCManager;

    invoke-direct {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;-><init>()V

    .line 42
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->isDbFileExists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 43
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->doMigration()V

    .line 44
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->setupMainContext()V

    .line 46
    new-instance v1, Lcom/metamoji/sd/SdPrivateDriveMOManager;

    invoke-direct {v1}, Lcom/metamoji/sd/SdPrivateDriveMOManager;-><init>()V

    .line 47
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v2

    .line 49
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveAll(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v1

    .line 50
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    .line 51
    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getId()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-static {v3}, Lcom/metamoji/sd/SdPrivateDriveManager;->getPrivateDriveDataDirWithPrivateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;->getDatabaseFilePathWithPrivateDriveDataDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    new-instance v5, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;

    invoke-direct {v5, v4, v3}, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    :try_start_1
    invoke-virtual {v5}, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;->isDbFileExists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {v5}, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;->doMigration()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;->discard()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v5}, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;->discard()V

    .line 60
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    if-eqz v2, :cond_2

    .line 66
    :goto_1
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 63
    :try_start_3
    const-string v3, "[SdPrivateDriveManagerInitializer] :: ERROR doMigration: %s"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    goto :goto_1

    .line 69
    :cond_2
    :goto_2
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->discard()V

    return-void

    :goto_3
    if-eqz v2, :cond_3

    .line 66
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 68
    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method public static setupPrivateDrive()V
    .locals 5

    .line 77
    new-instance v0, Lcom/metamoji/sd/SdPrivateDriveMOCManager;

    invoke-direct {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;-><init>()V

    .line 78
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->setupMainContext()V

    .line 79
    new-instance v1, Lcom/metamoji/sd/SdPrivateDriveMOManager;

    invoke-direct {v1}, Lcom/metamoji/sd/SdPrivateDriveMOManager;-><init>()V

    .line 80
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v2

    .line 82
    new-instance v3, Lcom/metamoji/sd/SdValue;

    invoke-direct {v3}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 84
    :try_start_0
    new-instance v4, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;

    invoke-direct {v4, v2, v1, v3}, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer$1;-><init>(Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdPrivateDriveMOManager;Lcom/metamoji/sd/SdValue;)V

    invoke-virtual {v2, v4}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 113
    invoke-virtual {v1, v2}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveAll(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v1

    .line 114
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    .line 116
    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/sd/SdPrivateDriveManager;->preparePrivateDrive(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 120
    :try_start_1
    const-string v4, "[SdPrivateDriveManagerInitializer] :: ERROR setupPrivateDrive: %s"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 123
    :goto_1
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 126
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->discard()V

    .line 128
    invoke-virtual {v3}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    return-void

    :goto_2
    if-eqz v2, :cond_2

    .line 123
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 125
    :cond_2
    throw v0
.end method
