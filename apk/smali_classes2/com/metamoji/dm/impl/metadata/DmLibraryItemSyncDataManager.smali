.class public Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;
.super Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;
.source "DmLibraryItemSyncDataManager.java"


# static fields
.field protected static _instance:Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;


# direct methods
.method private constructor <init>(Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;-><init>(Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;)V

    return-void
.end method

.method public static getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;
    .locals 3

    .line 27
    sget-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;->_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;->_instance:Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;

    if-nez v1, :cond_0

    .line 31
    invoke-static {}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->sharedManager()Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    move-result-object v1

    .line 32
    new-instance v2, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;

    invoke-direct {v2, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;-><init>(Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;)V

    sput-object v2, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;->_instance:Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;

    .line 34
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    sget-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;->_instance:Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;

    return-object v0

    :catchall_0
    move-exception v1

    .line 34
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method protected getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;->_sqlDriver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v0

    return-object v0
.end method

.method protected getType()Lcom/metamoji/dm/DmLibraryType;
    .locals 1

    .line 47
    sget-object v0, Lcom/metamoji/dm/DmLibraryType;->LibraryTypeNoteStyle:Lcom/metamoji/dm/DmLibraryType;

    return-object v0
.end method

.method public newMetaDataInner(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;
    .locals 0

    .line 56
    new-instance p1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemSyncData;

    invoke-direct {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemSyncData;-><init>()V

    return-object p1
.end method

.method public sqlAccessManager()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;
    .locals 4

    .line 74
    sget-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;->_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;->_sqlDriver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    if-nez v1, :cond_0

    .line 78
    const-string v1, "metadata"

    invoke-static {v1}, Lcom/metamoji/dm/fw/DmDatabaseHelperPool;->getDatabaseHelper(Ljava/lang/String;)Lcom/metamoji/dm/fw/DmDatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;->m_databaseHelper:Lcom/metamoji/dm/fw/DmDatabaseHelper;

    .line 79
    new-instance v1, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;->m_databaseHelper:Lcom/metamoji/dm/fw/DmDatabaseHelper;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemSyncData;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;-><init>(Lcom/metamoji/dm/fw/DmDatabaseHelper;[Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)V

    iput-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;->_sqlDriver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    .line 81
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;->_sqlDriver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    return-object v0

    :catchall_0
    move-exception v1

    .line 81
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
