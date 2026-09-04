.class public Lcom/metamoji/sd/SdDriveManagerInitializer;
.super Ljava/lang/Object;
.source "SdDriveManagerInitializer.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doInitialize()V
    .locals 1

    .line 19
    invoke-static {}, Lcom/metamoji/sd/SdUtils;->deleteTempDir()V

    .line 21
    invoke-static {}, Lcom/metamoji/sd/SdDriveManagerInitializer;->doMigration()V

    .line 23
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dvm/DvmDriveManager;->clearnupDiscardedDrives()V

    return-void
.end method

.method public static doMigration()V
    .locals 6

    .line 30
    new-instance v0, Lcom/metamoji/sd/SdDriveMOCManager;

    invoke-direct {v0}, Lcom/metamoji/sd/SdDriveMOCManager;-><init>()V

    .line 31
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveMOCManager;->isDbFileExists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 32
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveMOCManager;->doMigration()V

    .line 33
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveMOCManager;->setupMainContext()V

    .line 35
    new-instance v1, Lcom/metamoji/sd/SdDriveMOManager;

    invoke-direct {v1}, Lcom/metamoji/sd/SdDriveMOManager;-><init>()V

    .line 36
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v2

    .line 38
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveAll(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/sd/entities/SdMODrive;

    .line 40
    new-instance v4, Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMODrive;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMODrive;->getLocalCacheId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/metamoji/sd/SdDriveContentsMOCManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    :try_start_1
    invoke-virtual {v4}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->isDbFileExists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-virtual {v4}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->doMigration()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->discard()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v4}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->discard()V

    .line 47
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    if-eqz v2, :cond_2

    .line 53
    :goto_1
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 50
    :try_start_3
    const-string v3, "[SdDriveManagerInitializer] :: ERROR doMigration: %s"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    goto :goto_1

    .line 57
    :cond_2
    :goto_2
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveMOCManager;->discard()V

    return-void

    :goto_3
    if-eqz v2, :cond_3

    .line 53
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 55
    :cond_3
    throw v0

    :cond_4
    return-void
.end method
