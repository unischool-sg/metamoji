.class public abstract Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;
.super Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;
.source "DmLibraryIndexXMLSyncDataManagerAbstract.java"


# static fields
.field protected static final _lockObject:Ljava/lang/Object;


# instance fields
.field protected _sqlDriver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->_lockObject:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->_sqlDriver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    .line 42
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    return-void
.end method

.method static synthetic access$000(Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;)Lcom/metamoji/dm/fw/metadata/DmPredicate;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;)Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;)Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    return-object p0
.end method


# virtual methods
.method public containsDeleteSyncInfo(Ljava/lang/String;)Z
    .locals 2

    .line 319
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 325
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object p1

    sget-object v1, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public containsNewSyncInfo(Ljava/lang/String;)Z
    .locals 2

    .line 287
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 293
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object p1

    sget-object v1, Lcom/metamoji/dm/DmEntitySyncType;->New:Lcom/metamoji/dm/DmEntitySyncType;

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public containsUpdateSyncInfo(Ljava/lang/String;)Z
    .locals 2

    .line 303
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 309
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object p1

    sget-object v1, Lcom/metamoji/dm/DmEntitySyncType;->Update:Lcom/metamoji/dm/DmEntitySyncType;

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public deleteMetaDataTrans(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 2

    .line 691
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object p1

    .line 694
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v0

    .line 695
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v1, v0, p1, p2}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->deleteManagedObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    invoke-virtual {p2, p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->addTransactionObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 699
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "delete meta data transaciton occurs error:%s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public disconnectAndResetAllSyncInfo()Z
    .locals 3

    .line 712
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v0

    .line 713
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v1

    .line 717
    :try_start_0
    new-instance v2, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$7;

    invoke-direct {v2, p0, v1, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$7;-><init>(Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    .line 761
    :catch_0
    const-string v0, "Unable to disconnect and reset all sync info"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getAllSyncTypeEntityIdListWithLibraryType()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 456
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-enter v1

    .line 458
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v3

    .line 461
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v5

    .line 462
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->sortKeyItemOfString()Ljava/lang/String;

    move-result-object v0

    .line 463
    new-instance v2, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;-><init>(Ljava/lang/String;Z)V

    .line 464
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 465
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v4

    .line 469
    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 472
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 473
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    .line 474
    invoke-virtual {v3}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->getEntityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 476
    :cond_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    .line 477
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEntityIdListWithSyncType(Lcom/metamoji/dm/DmEntitySyncType;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dm/DmEntitySyncType;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 330
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-enter v1

    .line 332
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v3

    .line 335
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v5

    .line 336
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getPredicate()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :try_start_1
    const-string v2, "syncType"

    invoke-virtual {v0, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    :try_start_2
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->sortKeyItemOfString()Ljava/lang/String;

    move-result-object p1

    .line 347
    new-instance v0, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2}, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;-><init>(Ljava/lang/String;Z)V

    .line 348
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 349
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v4

    .line 353
    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object p1

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 357
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    .line 358
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->getEntityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 360
    :cond_0
    monitor-exit v1

    return-object v0

    .line 343
    :catch_0
    const-string p1, "Unable to create where Clause"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 344
    monitor-exit v1

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 361
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public bridge synthetic getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object p1

    return-object p1
.end method

.method public getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;
    .locals 9

    .line 512
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-enter v1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 515
    :try_start_0
    monitor-exit v1

    return-object v0

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v3

    .line 520
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v5

    .line 521
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getPredicate()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 522
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getBindings()Ljava/util/HashMap;

    move-result-object v4

    .line 523
    new-instance v6, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v6}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    .line 524
    invoke-virtual {v4, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    :try_start_1
    const-string p1, "entityId"

    invoke-virtual {v2, p1, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 536
    :try_start_2
    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 537
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v2, 0x1

    if-gt v2, p2, :cond_1

    const/4 p2, 0x0

    .line 538
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    monitor-exit v1

    return-object p1

    .line 540
    :cond_1
    monitor-exit v1

    return-object v0

    .line 531
    :catch_0
    const-string p1, "Unable to create where Clause"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 532
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 541
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getMetaDataWithClientId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;
    .locals 9

    .line 372
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-enter v1

    .line 374
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v3

    .line 377
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v5

    .line 378
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getPredicate()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 379
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getBindings()Ljava/util/HashMap;

    move-result-object v2

    .line 380
    new-instance v4, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v4}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    .line 381
    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 384
    :try_start_1
    const-string v2, "entityId"

    invoke-virtual {v0, v2, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    :try_start_2
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->sortKeyItemOfString()Ljava/lang/String;

    move-result-object v0

    .line 392
    new-instance v2, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;-><init>(Ljava/lang/String;Z)V

    .line 393
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 394
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 p1, 0x0

    .line 400
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    monitor-exit v1

    return-object p1

    .line 402
    :cond_0
    monitor-exit v1

    return-object p1

    .line 388
    :catch_0
    const-string v0, "Unable to create where Clause"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 389
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 403
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;
    .locals 9

    .line 415
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-enter v1

    .line 417
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v3

    .line 420
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v5

    .line 421
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getPredicate()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 422
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getBindings()Ljava/util/HashMap;

    move-result-object v2

    .line 423
    new-instance v4, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v4}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    .line 424
    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 427
    :try_start_1
    const-string v2, "entityId"

    invoke-virtual {v0, v2, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    :try_start_2
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->sortKeyItemOfString()Ljava/lang/String;

    move-result-object v0

    .line 435
    new-instance v2, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;-><init>(Ljava/lang/String;Z)V

    .line 436
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 437
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 442
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 p1, 0x0

    .line 443
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    monitor-exit v1

    return-object p1

    .line 445
    :cond_0
    monitor-exit v1

    return-object p1

    .line 431
    :catch_0
    const-string p2, "Unable to create where Clause"

    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 432
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 446
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getMetaDataWithServerResourceId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;
    .locals 9

    .line 59
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-enter v1

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v3

    .line 64
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v5

    .line 65
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getPredicate()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 66
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getBindings()Ljava/util/HashMap;

    move-result-object v2

    .line 67
    new-instance v4, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v4}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    .line 68
    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 71
    :try_start_1
    const-string v2, "serverId"

    invoke-virtual {v0, v2, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->sortKeyItemOfString()Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v2, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;-><init>(Ljava/lang/String;Z)V

    .line 80
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 p1, 0x0

    .line 87
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    monitor-exit v1

    return-object p1

    .line 88
    :cond_0
    monitor-exit v1

    return-object p1

    .line 75
    :catch_0
    const-string v0, "Unable to create where Clause"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 76
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 88
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected getType()Lcom/metamoji/dm/DmLibraryType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initSyncStatus()Z
    .locals 3

    .line 630
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v0

    .line 631
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v1

    .line 635
    :try_start_0
    new-instance v2, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$6;

    invoke-direct {v2, p0, v1, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$6;-><init>(Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    .line 677
    :catch_0
    const-string v0, "Unable to init sync status"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public putContentsSyncDataForDelete(Ljava/lang/String;)Z
    .locals 3

    .line 574
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v0

    .line 575
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v1

    .line 579
    :try_start_0
    new-instance v2, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$5;-><init>(Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 595
    :catch_0
    const-string p1, "Unable to put contents sync data for delete"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public putContentsSyncDataForDelete(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 3

    .line 604
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 616
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object v1

    sget-object v2, Lcom/metamoji/dm/DmEntitySyncType;->New:Lcom/metamoji/dm/DmEntitySyncType;

    if-ne v1, v2, :cond_0

    .line 617
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->deleteMetaDataTrans(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1

    .line 620
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncTypePrev(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 621
    sget-object p1, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 622
    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncUpdate(Ljava/util/Date;)V

    .line 623
    invoke-virtual {p0, v0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->putMetaDataTrans(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1

    .line 612
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->getType()Lcom/metamoji/dm/DmLibraryType;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "library contents sync metadata id:%s, type:%s is not exists. delete skipped..."

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public putContentsSyncDataForUpdate(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 3

    .line 546
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->newMutableDataObject()Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    .line 555
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setEntityId(Ljava/lang/String;)V

    .line 556
    sget-object p1, Lcom/metamoji/dm/DmEntitySyncType;->New:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 559
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object p1

    sget-object v1, Lcom/metamoji/dm/DmEntitySyncType;->Synced:Lcom/metamoji/dm/DmEntitySyncType;

    if-ne p1, v1, :cond_1

    .line 561
    sget-object p1, Lcom/metamoji/dm/DmEntitySyncType;->Synced:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncTypePrev(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 562
    sget-object p1, Lcom/metamoji/dm/DmEntitySyncType;->Update:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 565
    :cond_1
    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncUpdate(Ljava/util/Date;)V

    .line 566
    const-string p1, "nop"

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncStatus(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0, v0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->putMetaDataTrans(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1
.end method

.method public putIndexXMLSyncDataForUpdate(Ljava/lang/String;)Z
    .locals 3

    .line 482
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v0

    .line 483
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v1

    .line 487
    :try_start_0
    new-instance v2, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$4;-><init>(Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 503
    :catch_0
    const-string p1, "Unable to put index XML sync data for update"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public putNewSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 1

    .line 245
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->New:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->putSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1
.end method

.method putSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 3

    .line 219
    invoke-virtual {p0, p1, p3}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->newMutableDataObject()Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    .line 224
    sget-object v1, Lcom/metamoji/dm/DmEntitySyncType;->New:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncTypePrev(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 229
    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setEntityId(Ljava/lang/String;)V

    .line 230
    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncUpdate(Ljava/util/Date;)V

    .line 231
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncTypePrev(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 232
    invoke-virtual {v0, p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 233
    const-string p1, "nop"

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncStatus(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0, v0, p3}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->putMetaDataTrans(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1
.end method

.method public removeDeleteSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 0

    .line 277
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->deleteMetaDataTrans(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1
.end method

.method public revertFromDeleteSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 3

    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->putNewSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1

    .line 262
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncTypePrev()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 263
    sget-object p1, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncTypePrev(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 264
    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncUpdate(Ljava/util/Date;)V

    .line 265
    invoke-virtual {p0, v0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->putMetaDataTrans(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1
.end method

.method public setEndNewSyncInfo(Ljava/lang/String;)V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v1

    .line 104
    :try_start_0
    new-instance v2, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$1;-><init>(Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 131
    :catch_0
    const-string p1, "Unable to set end to new sync info"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public setEndToDeleteSyncInfo(Ljava/lang/String;)V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v1

    .line 189
    :try_start_0
    new-instance v2, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$3;-><init>(Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 213
    :catch_0
    const-string p1, "Unable to set end to delete sync info"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public setEndToUpdateSyncInfo(Ljava/lang/String;)V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v1

    .line 146
    :try_start_0
    new-instance v2, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$2;-><init>(Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 174
    :catch_0
    const-string p1, "Unable to set end to update sync info"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void
.end method
