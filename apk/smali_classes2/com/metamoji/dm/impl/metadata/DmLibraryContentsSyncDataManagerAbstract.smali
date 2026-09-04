.class public abstract Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;
.super Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;
.source "DmLibraryContentsSyncDataManagerAbstract.java"


# static fields
.field private static final USER_ITEM_ID_PREFIX:Ljava/lang/String; = "__localId_[library_item]_"

.field protected static final _lockObject:Ljava/lang/Object;


# instance fields
.field protected _sqlDriver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->_lockObject:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->_sqlDriver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    .line 48
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    return-void
.end method

.method static synthetic access$000(Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;)Lcom/metamoji/dm/fw/metadata/DmPredicate;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;)Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;)Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    return-object p0
.end method


# virtual methods
.method public containsDeleteSyncInfo(Ljava/lang/String;)Z
    .locals 2

    .line 355
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 361
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

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

    .line 323
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 329
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

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

    .line 339
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 345
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object p1

    sget-object v1, Lcom/metamoji/dm/DmEntitySyncType;->Update:Lcom/metamoji/dm/DmEntitySyncType;

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public deleteMetaDataTransForLibrary(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 2

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object p1

    .line 304
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v1, v0, p1, p2}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->deleteManagedObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    invoke-virtual {p2, p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->addTransactionObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 309
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

    .line 768
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v0

    .line 769
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v1

    .line 773
    :try_start_0
    new-instance v2, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$7;

    invoke-direct {v2, p0, v1, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$7;-><init>(Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    .line 817
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

    .line 532
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-enter v1

    .line 534
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v3

    .line 537
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v5

    .line 538
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->sortKeyItemOfString()Ljava/lang/String;

    move-result-object v0

    .line 539
    new-instance v2, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;-><init>(Ljava/lang/String;Z)V

    .line 540
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 541
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v4

    .line 545
    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 548
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 549
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    .line 550
    invoke-virtual {v3}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->getEntityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 552
    :cond_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    .line 553
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEntityIdListOfUnsyncedUserItems()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 401
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-enter v1

    .line 402
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v3

    .line 405
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v5

    .line 406
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getPredicate()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :try_start_1
    const-string v2, "syncType"

    sget-object v4, Lcom/metamoji/dm/DmEntitySyncType;->Synced:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v0, v2, v4}, Lcom/j256/ormlite/stmt/Where;->ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    :try_start_2
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->sortKeyItemOfString()Ljava/lang/String;

    move-result-object v0

    .line 416
    new-instance v2, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;-><init>(Ljava/lang/String;Z)V

    .line 417
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 418
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v4

    .line 422
    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 425
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 426
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    .line 429
    invoke-virtual {v3}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->getEntityId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 430
    const-string v4, "__localId_[library_item]_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 431
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 435
    :cond_1
    monitor-exit v1

    return-object v2

    .line 411
    :catch_0
    const-string v0, "Unable to create where Clause"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 412
    monitor-exit v1

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    .line 436
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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

    .line 366
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-enter v1

    .line 368
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v3

    .line 371
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v5

    .line 372
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getPredicate()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :try_start_1
    const-string v2, "syncType"

    invoke-virtual {v0, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    :try_start_2
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->sortKeyItemOfString()Ljava/lang/String;

    move-result-object p1

    .line 383
    new-instance v0, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2}, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;-><init>(Ljava/lang/String;Z)V

    .line 384
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 385
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v4

    .line 389
    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object p1

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    .line 394
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->getEntityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 396
    :cond_0
    monitor-exit v1

    return-object v0

    .line 379
    :catch_0
    const-string p1, "Unable to create where Clause"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 380
    monitor-exit v1

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 397
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

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object p1

    return-object p1
.end method

.method public getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;
    .locals 9

    .line 733
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-enter v1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 736
    :try_start_0
    monitor-exit v1

    return-object v0

    .line 737
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v3

    .line 739
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v5

    .line 740
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getPredicate()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 741
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getBindings()Ljava/util/HashMap;

    move-result-object v4

    .line 742
    new-instance v6, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v6}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    .line 743
    invoke-virtual {v4, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    :try_start_1
    const-string p1, "entityId"

    invoke-virtual {v2, p1, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 754
    :try_start_2
    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 755
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v2, 0x1

    if-gt v2, p2, :cond_1

    const/4 p2, 0x0

    .line 756
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    monitor-exit v1

    return-object p1

    .line 758
    :cond_1
    monitor-exit v1

    return-object v0

    .line 750
    :catch_0
    const-string p1, "Unable to create where Clause"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 751
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 759
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getMetaDataWithClientId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;
    .locals 9

    .line 448
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-enter v1

    .line 450
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v3

    .line 453
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v5

    .line 454
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getPredicate()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 455
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getBindings()Ljava/util/HashMap;

    move-result-object v2

    .line 456
    new-instance v4, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v4}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    .line 457
    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 460
    :try_start_1
    const-string v2, "entityId"

    invoke-virtual {v0, v2, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    :try_start_2
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->sortKeyItemOfString()Ljava/lang/String;

    move-result-object v0

    .line 468
    new-instance v2, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;-><init>(Ljava/lang/String;Z)V

    .line 469
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 470
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 p1, 0x0

    .line 476
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    monitor-exit v1

    return-object p1

    .line 477
    :cond_0
    monitor-exit v1

    return-object p1

    .line 464
    :catch_0
    const-string v0, "Unable to create where Clause"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 465
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 477
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;
    .locals 9

    .line 491
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-enter v1

    .line 493
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v3

    .line 496
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v5

    .line 497
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getPredicate()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 498
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getBindings()Ljava/util/HashMap;

    move-result-object v2

    .line 499
    new-instance v4, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v4}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    .line 500
    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 503
    :try_start_1
    const-string v2, "entityId"

    invoke-virtual {v0, v2, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    :try_start_2
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->sortKeyItemOfString()Ljava/lang/String;

    move-result-object v0

    .line 511
    new-instance v2, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;-><init>(Ljava/lang/String;Z)V

    .line 512
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 513
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 518
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 p1, 0x0

    .line 519
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    monitor-exit v1

    return-object p1

    .line 520
    :cond_0
    monitor-exit v1

    return-object p1

    .line 507
    :catch_0
    const-string p2, "Unable to create where Clause"

    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 508
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 520
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getMetaDataWithServerResourceId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;
    .locals 9

    .line 59
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-enter v1

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v3

    .line 64
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

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
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->sortKeyItemOfString()Ljava/lang/String;

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
    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

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

    check-cast p1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

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

    .line 678
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v0

    .line 679
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v1

    .line 683
    :try_start_0
    new-instance v2, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$6;

    invoke-direct {v2, p0, v1, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$6;-><init>(Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    .line 724
    :catch_0
    const-string v0, "Unable to init sync status"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public putContentsSyncDataForDelete(Ljava/lang/String;)Z
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v0

    .line 622
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v1

    .line 626
    :try_start_0
    new-instance v2, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$5;-><init>(Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 642
    :catch_0
    const-string p1, "Unable to put contents sync data for delete"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public putContentsSyncDataForDelete(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 3

    .line 651
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 663
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object v1

    sget-object v2, Lcom/metamoji/dm/DmEntitySyncType;->New:Lcom/metamoji/dm/DmEntitySyncType;

    if-ne v1, v2, :cond_0

    .line 664
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->deleteMetaDataTrans(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1

    .line 667
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncTypePrev(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 668
    sget-object p1, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 669
    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncUpdate(Ljava/util/Date;)V

    .line 670
    const-string p1, "nop"

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncStatus(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p0, v0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->putMetaDataTrans(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1

    .line 659
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getType()Lcom/metamoji/dm/DmLibraryType;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "library contents sync metadata id:%s, type:%s is not exists. delete skipped..."

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public putContentsSyncDataForUpdate(Ljava/lang/String;)Z
    .locals 3

    .line 558
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v0

    .line 559
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v1

    .line 563
    :try_start_0
    new-instance v2, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$4;-><init>(Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 579
    :catch_0
    const-string p1, "Unable to set end to delete sync info"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public putContentsSyncDataForUpdate(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 3

    .line 588
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 596
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->newMutableDataObject()Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    .line 597
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setEntityId(Ljava/lang/String;)V

    .line 598
    sget-object p1, Lcom/metamoji/dm/DmEntitySyncType;->New:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 601
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object p1

    sget-object v1, Lcom/metamoji/dm/DmEntitySyncType;->Synced:Lcom/metamoji/dm/DmEntitySyncType;

    if-ne p1, v1, :cond_1

    .line 603
    sget-object p1, Lcom/metamoji/dm/DmEntitySyncType;->Synced:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncTypePrev(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 604
    sget-object p1, Lcom/metamoji/dm/DmEntitySyncType;->Update:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    goto :goto_1

    .line 606
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object p1

    sget-object v1, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    if-ne p1, v1, :cond_2

    .line 608
    sget-object p1, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncTypePrev(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 609
    sget-object p1, Lcom/metamoji/dm/DmEntitySyncType;->Update:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 612
    :cond_2
    :goto_1
    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncUpdate(Ljava/util/Date;)V

    .line 613
    const-string p1, "nop"

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncStatus(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0, v0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->putMetaDataTrans(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1
.end method

.method public putDeleteSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 1

    .line 269
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->putSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1
.end method

.method public putNewSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 1

    .line 246
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->New:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->putSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1
.end method

.method public putSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 3

    .line 220
    invoke-virtual {p0, p1, p3}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->newMutableDataObject()Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    .line 225
    sget-object v1, Lcom/metamoji/dm/DmEntitySyncType;->New:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncTypePrev(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 230
    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setEntityId(Ljava/lang/String;)V

    .line 231
    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncUpdate(Ljava/util/Date;)V

    .line 232
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncTypePrev(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 233
    invoke-virtual {v0, p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 234
    const-string p1, "nop"

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncStatus(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0, v0, p3}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->putMetaDataTrans(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1
.end method

.method public putUpdateSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 1

    .line 257
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->Update:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->putSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1
.end method

.method public revertFromDeleteSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 3

    .line 281
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 284
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->putNewSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1

    .line 287
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getSyncTypePrev()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 288
    sget-object p1, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncTypePrev(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 289
    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncUpdate(Ljava/util/Date;)V

    .line 290
    invoke-virtual {p0, v0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->putMetaDataTrans(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1
.end method

.method public setEndToDeleteSyncInfo(Ljava/lang/String;)V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v1

    .line 190
    :try_start_0
    new-instance v2, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$3;-><init>(Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 214
    :catch_0
    const-string p1, "Unable to set end to delete sync info"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public setEndToUpdateSyncInfo(Ljava/lang/String;)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v1

    .line 147
    :try_start_0
    new-instance v2, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$2;-><init>(Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 175
    :catch_0
    const-string p1, "Unable to set end to update sync info"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public setEndnewSyncInfo(Ljava/lang/String;)V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v1

    .line 104
    :try_start_0
    new-instance v2, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$1;-><init>(Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 132
    :catch_0
    const-string p1, "Unable to set end to new sync info"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void
.end method
