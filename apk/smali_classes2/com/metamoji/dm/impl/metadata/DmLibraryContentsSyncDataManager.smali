.class public Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;
.super Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;
.source "DmLibraryContentsSyncDataManager.java"


# static fields
.field private static _instance:Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

.field private static _itemSyncManager:Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;

.field private static final _lockObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->_lockObject:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    return-void
.end method

.method public static getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;
    .locals 3

    .line 37
    sget-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->_instance:Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    if-nez v1, :cond_0

    .line 41
    invoke-static {}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->sharedManager()Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    move-result-object v1

    .line 42
    new-instance v2, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    invoke-direct {v2, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;-><init>(Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;)V

    sput-object v2, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->_instance:Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    .line 43
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;

    move-result-object v1

    sput-object v1, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->_itemSyncManager:Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;

    .line 45
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    sget-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->_instance:Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    return-object v0

    :catchall_0
    move-exception v1

    .line 45
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;
    .locals 2

    .line 56
    sget-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager$1;->$SwitchMap$com$metamoji$dm$DmLibraryType:[I

    invoke-virtual {p1}, Lcom/metamoji/dm/DmLibraryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 61
    const-string v0, "No applicable SyncDataManager for type %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 59
    :cond_0
    sget-object p1, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->_itemSyncManager:Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;

    return-object p1
.end method

.method private getSyncDataManager(Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;)Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;
    .locals 0

    .line 68
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getLibraryType()Lcom/metamoji/dm/DmLibraryType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public createMyFetchRequest(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    move-result-object p1

    .line 219
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public deleteMetaData(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Z
    .locals 0

    .line 202
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    move-result-object p2

    .line 203
    invoke-virtual {p2, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->deleteMetaData(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public deleteMetaDataTrans(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 0

    .line 88
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    move-result-object p2

    .line 89
    invoke-virtual {p2, p1, p3}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->deleteMetaDataTransForLibrary(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1
.end method

.method public disconnectAndResetAllSyncInfo()Z
    .locals 1

    .line 170
    sget-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->_itemSyncManager:Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;->disconnectAndResetAllSyncInfo()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/DmLibraryType;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;",
            "Lcom/metamoji/dm/DmLibraryType;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 210
    invoke-direct {p0, p3}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    move-result-object p3

    .line 211
    invoke-virtual {p3, p1, p2, p4}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAllSyncTypeEntityIdListWithLibraryType(Lcom/metamoji/dm/DmLibraryType;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dm/DmLibraryType;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getAllSyncTypeEntityIdListWithLibraryType()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getEntityIdListWithSyncType(Lcom/metamoji/dm/DmEntitySyncType;Lcom/metamoji/dm/DmLibraryType;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dm/DmEntitySyncType;",
            "Lcom/metamoji/dm/DmLibraryType;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    move-result-object p2

    .line 95
    invoke-virtual {p2, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getEntityIdListWithSyncType(Lcom/metamoji/dm/DmEntitySyncType;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getMetaData(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;
    .locals 1

    .line 154
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    move-result-object p2

    .line 155
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object p1

    return-object p1
.end method

.method public getMetaData(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;
    .locals 0

    .line 160
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    move-result-object p2

    .line 161
    invoke-virtual {p2, p1, p3}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object p1

    return-object p1
.end method

.method public getMetaDataAllForContext(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/DmLibraryType;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;",
            "Lcom/metamoji/dm/DmLibraryType;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;",
            ">;"
        }
    .end annotation

    .line 240
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    move-result-object p2

    .line 241
    invoke-virtual {p2, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getMetaDataAllForContext(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;
    .locals 0

    .line 106
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    move-result-object p2

    .line 107
    invoke-virtual {p2, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getMetaDataWithClientId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object p1

    return-object p1
.end method

.method public getMetaDataWithServerResourceId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;
    .locals 0

    .line 77
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    move-result-object p2

    .line 78
    invoke-virtual {p2, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getMetaDataWithServerResourceId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object p1

    return-object p1
.end method

.method protected getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initSyncStatus()Z
    .locals 1

    .line 147
    sget-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->_itemSyncManager:Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSyncDataManager;->initSyncStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public newManagedMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;
    .locals 0

    .line 181
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    move-result-object p2

    .line 182
    invoke-virtual {p2, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->newManagedMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p1

    return-object p1
.end method

.method public putContentsSyncDataForDelete(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Z
    .locals 0

    .line 135
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    move-result-object p2

    .line 136
    invoke-virtual {p2, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->putContentsSyncDataForDelete(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public putContentsSyncDataForDelete(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 0

    .line 141
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    move-result-object p2

    .line 142
    invoke-virtual {p2, p1, p3}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->putContentsSyncDataForDelete(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1
.end method

.method public putContentsSyncDataForUpdate(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Z
    .locals 0

    .line 123
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    move-result-object p2

    .line 124
    invoke-virtual {p2, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->putContentsSyncDataForUpdate(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public putContentsSyncDataForUpdate(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 0

    .line 129
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    move-result-object p2

    .line 130
    invoke-virtual {p2, p1, p3}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->putContentsSyncDataForUpdate(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1
.end method

.method public putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z
    .locals 1

    .line 192
    move-object v0, p1

    check-cast v0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    invoke-direct {p0, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;)Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    move-result-object v0

    .line 193
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    move-result p1

    return p1
.end method

.method public putMetaDataTrans(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/DmLibraryType;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 0

    .line 229
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    move-result-object p2

    .line 230
    invoke-virtual {p2, p1, p3}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->putMetaDataTrans(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1
.end method

.method public sqlAccessManager()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
