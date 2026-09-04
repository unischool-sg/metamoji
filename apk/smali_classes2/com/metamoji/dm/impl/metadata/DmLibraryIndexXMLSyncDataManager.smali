.class public Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;
.super Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;
.source "DmLibraryIndexXMLSyncDataManager.java"


# static fields
.field private static _instance:Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

.field private static _itemIndexXMLSyncDataManager:Lcom/metamoji/dm/impl/metadata/DmLibraryItemIndexXMLSyncDataManager;

.field private static final _lockObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->_lockObject:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    return-void
.end method

.method public static getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;
    .locals 3

    .line 36
    sget-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->_instance:Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    if-nez v1, :cond_0

    .line 40
    invoke-static {}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->sharedManager()Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    move-result-object v1

    .line 41
    new-instance v2, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    invoke-direct {v2, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;-><init>(Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;)V

    sput-object v2, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->_instance:Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    .line 42
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryItemIndexXMLSyncDataManager;

    move-result-object v1

    sput-object v1, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->_itemIndexXMLSyncDataManager:Lcom/metamoji/dm/impl/metadata/DmLibraryItemIndexXMLSyncDataManager;

    .line 44
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    sget-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->_instance:Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    return-object v0

    :catchall_0
    move-exception v1

    .line 44
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;
    .locals 2

    .line 56
    sget-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager$1;->$SwitchMap$com$metamoji$dm$DmLibraryType:[I

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
    sget-object p1, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->_itemIndexXMLSyncDataManager:Lcom/metamoji/dm/impl/metadata/DmLibraryItemIndexXMLSyncDataManager;

    return-object p1
.end method


# virtual methods
.method public createMyFetchRequest(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;
    .locals 0

    .line 184
    invoke-direct {p0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object p1

    return-object p1
.end method

.method public deleteMetaData(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Z
    .locals 0

    .line 176
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;

    move-result-object p2

    .line 177
    invoke-virtual {p2, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->deleteMetaData(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public deleteMetaDataTrans(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 0

    .line 136
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;

    move-result-object p2

    .line 137
    invoke-virtual {p2, p1, p3}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->deleteMetaDataTrans(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1
.end method

.method public disconnectAndResetAllSyncInfo()Z
    .locals 1

    .line 146
    sget-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->_itemIndexXMLSyncDataManager:Lcom/metamoji/dm/impl/metadata/DmLibraryItemIndexXMLSyncDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemIndexXMLSyncDataManager;->disconnectAndResetAllSyncInfo()Z

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

    .line 193
    invoke-direct {p0, p3}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;

    move-result-object p3

    .line 194
    invoke-virtual {p3, p1, p2, p4}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

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

    .line 101
    invoke-direct {p0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->getAllSyncTypeEntityIdListWithLibraryType()Ljava/util/ArrayList;

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

    .line 78
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;

    move-result-object p2

    .line 79
    invoke-virtual {p2, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->getEntityIdListWithSyncType(Lcom/metamoji/dm/DmEntitySyncType;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getMetaData(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getMetaData(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object p1

    return-object p1
.end method

.method public getMetaData(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;
    .locals 0

    .line 118
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;

    move-result-object p2

    .line 119
    invoke-virtual {p2, p1, p3}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

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

    .line 204
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;

    move-result-object p2

    .line 205
    invoke-virtual {p2, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->getMetaDataAllForContext(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;
    .locals 0

    .line 90
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;

    move-result-object p2

    .line 91
    invoke-virtual {p2, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->getMetaDataWithClientId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object p1

    return-object p1
.end method

.method public getMetaDataWithServerResourceId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;
    .locals 0

    .line 72
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;

    move-result-object p2

    .line 73
    invoke-virtual {p2, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->getMetaDataWithServerResourceId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

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

    .line 124
    sget-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->_itemIndexXMLSyncDataManager:Lcom/metamoji/dm/impl/metadata/DmLibraryItemIndexXMLSyncDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemIndexXMLSyncDataManager;->initSyncStatus()Z

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

    .line 156
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;

    move-result-object p2

    .line 157
    invoke-virtual {p2, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->newManagedMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p1

    return-object p1
.end method

.method public putIndexXMLSyncDataForUpdate(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Z
    .locals 0

    .line 107
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;

    move-result-object p2

    .line 108
    invoke-virtual {p2, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->putIndexXMLSyncDataForUpdate(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/DmLibraryType;)Z
    .locals 0

    .line 166
    invoke-direct {p0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getSyncDataManager(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;

    move-result-object p2

    .line 167
    invoke-virtual {p2, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    move-result p1

    return p1
.end method

.method public sqlAccessManager()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
