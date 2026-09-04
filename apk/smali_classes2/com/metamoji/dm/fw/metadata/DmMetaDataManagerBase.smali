.class public abstract Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;
.super Ljava/lang/Object;
.source "DmMetaDataManagerBase.java"


# instance fields
.field protected m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

.field protected m_databaseHelper:Lcom/metamoji/dm/fw/DmDatabaseHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private newMetaData(ZLcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;
    .locals 0

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0, p2}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->newMetaDataInner(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->newMetaDataInner(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public containsMetaData(Ljava/lang/String;)Z
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public containsMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 0

    .line 494
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public copyMetaData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 200
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->dictionary()Ljava/util/HashMap;

    move-result-object p1

    .line 204
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->newMutableDataObject()Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v0

    .line 205
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->setValues(Ljava/util/HashMap;)V

    .line 208
    invoke-virtual {v0, p2}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->setEntityId(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0, v0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    return-void
.end method

.method public copyMetaDataTrans(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 1

    .line 348
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 352
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->dictionary()Ljava/util/HashMap;

    move-result-object p1

    .line 353
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->newMutableDataObject()Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v0

    .line 354
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->setValues(Ljava/util/HashMap;)V

    .line 357
    invoke-virtual {v0, p2}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->setEntityId(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0, v0, p3}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->putMetaDataTrans(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 363
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "copy meta data transaciton occurs error:%s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;
    .locals 2

    .line 234
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->sqlAccessManager()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    move-result-object v0

    .line 235
    new-instance v1, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    invoke-direct {v1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;-><init>()V

    .line 236
    invoke-virtual {v1, v0}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->setSqlDriver(Lcom/metamoji/dm/fw/metadata/DmSqlDriver;)V

    return-object v1
.end method

.method public deleteMetaData(Ljava/lang/String;)Z
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-enter v0

    .line 178
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v1

    .line 179
    iget-object v2, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->newManagedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v2

    .line 180
    invoke-virtual {p0, p1, v2}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p1

    .line 181
    iget-object v3, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v3, v1, p1, v2}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->deleteManagedObjectAndCommit(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 182
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public deleteMetaDataTrans(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 2

    .line 375
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p1

    .line 378
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v1, v0, p1, p2}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->deleteManagedObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    invoke-virtual {p2, p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->addTransactionObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 383
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "delete meta data transaciton occurs error:%s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public endTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/UUID;Z)Z
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->endTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/UUID;Z)Z

    move-result p1

    return p1
.end method

.method public executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 248
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getEntityIdAllForContext(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 407
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v1

    .line 410
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 414
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 415
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    .line 416
    invoke-virtual {v1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->getEntityId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p1

    return-object p1
.end method

.method public getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;
    .locals 9

    .line 82
    iget-object v1, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-enter v1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 85
    :try_start_0
    monitor-exit v1

    return-object v0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v3

    .line 88
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v5

    .line 89
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getPredicate()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 90
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getBindings()Ljava/util/HashMap;

    move-result-object v4

    .line 91
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->clear()Lcom/j256/ormlite/stmt/Where;

    .line 92
    new-instance v6, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v6}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :try_start_1
    const-string v7, "entityId"

    invoke-virtual {v2, v7, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :try_start_2
    invoke-virtual {v4, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {v3, v5}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->setPredicate(Lcom/metamoji/dm/fw/metadata/DmPredicate;)V

    .line 105
    iget-object v2, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v2, 0x1

    if-gt v2, p2, :cond_1

    const/4 p2, 0x0

    .line 107
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    monitor-exit v1

    return-object p1

    .line 109
    :cond_1
    monitor-exit v1

    return-object v0

    .line 99
    :catch_0
    const-string p1, "Unable to set checking entityId to where-phrase"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 100
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 110
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getMetaDataAll(IILcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;",
            ">;"
        }
    .end annotation

    .line 444
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v1

    .line 449
    new-instance v0, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;

    const-string v2, "entityId"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;-><init>(Ljava/lang/String;Z)V

    .line 450
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 451
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    const/4 v3, 0x0

    move v5, p1

    move v6, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object p1

    .line 453
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 454
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    .line 456
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->newMutableDataObject()Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v0

    .line 458
    invoke-virtual {p3}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->dictionary()Ljava/util/HashMap;

    move-result-object p3

    .line 459
    invoke-virtual {v0, p3}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->setValues(Ljava/util/HashMap;)V

    .line 460
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public getMetaDataAllForContext(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 432
    invoke-virtual {p0, v0, v0, p1}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->getMetaDataAll(IILcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getMetaDataByIds(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;",
            ">;"
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->getMetaDataByIds(Ljava/util/ArrayList;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getMetaDataByIds(Ljava/util/ArrayList;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;",
            ">;"
        }
    .end annotation

    .line 522
    iget-object v1, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-enter v1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 525
    :try_start_0
    monitor-exit v1

    return-object v0

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v3

    .line 528
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v5

    .line 529
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getPredicate()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 530
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->clear()Lcom/j256/ormlite/stmt/Where;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    :try_start_1
    const-string v4, "entityId"

    invoke-virtual {v2, v4, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    :try_start_2
    invoke-virtual {v3, v5}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->setPredicate(Lcom/metamoji/dm/fw/metadata/DmPredicate;)V

    .line 542
    iget-object v2, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object p1

    .line 543
    monitor-exit v1

    return-object p1

    .line 537
    :catch_0
    const-string p1, "Unable to set checking entityId to where-phrase"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 538
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 544
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected abstract getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;
.end method

.method public managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v0

    return-object v0
.end method

.method public metaDataCountForContext(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)I
    .locals 1

    .line 477
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v0

    .line 479
    invoke-virtual {p1, v0}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->countForFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)I

    move-result p1

    return p1
.end method

.method public newManagedMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-enter v0

    const/4 v1, 0x1

    .line 38
    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->newMetaData(ZLcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public newMetaDataInner(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public newMutableDataObject()Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->newMetaData(ZLcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v0

    return-object v0
.end method

.method public putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z
    .locals 7

    .line 120
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 124
    :try_start_0
    const-string p1, "error putMetadata is null."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 125
    monitor-exit v0

    return v1

    .line 127
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->getEntityId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 129
    const-string p1, "error putMetadata entityId is null."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 130
    monitor-exit v0

    return v1

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v2

    .line 134
    iget-object v3, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v3}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->newManagedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v3

    .line 135
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->objectID()Lcom/metamoji/dm/fw/metadata/DmManagedObjectId;

    move-result-object v4

    .line 136
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->dictionary()Ljava/util/HashMap;

    move-result-object v5

    .line 138
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->getEntityId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v3}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v6

    if-nez v6, :cond_3

    .line 141
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object p1

    if-nez p1, :cond_2

    .line 142
    invoke-virtual {p0, v3}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->newManagedMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v6

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {v3, v2, v4}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->objectWithID(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectId;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v6

    .line 151
    :cond_3
    :goto_0
    invoke-virtual {v6, v5}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->setValues(Ljava/util/HashMap;)V

    .line 153
    iget-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {p1, v2, v6, v3}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->putManagedObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 155
    monitor-exit v0

    return v1

    .line 161
    :cond_4
    invoke-virtual {v3, v2}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->reset(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)V

    .line 163
    iget-object v1, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v6}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->objectID()Lcom/metamoji/dm/fw/metadata/DmManagedObjectId;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->refreshManagedObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectId;)V

    .line 165
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 166
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putMetaDataTrans(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 291
    :try_start_0
    const-string p1, "error putMetaData is null."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return v0

    .line 294
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->getEntityId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 296
    const-string p1, "error putMetaData entityId is null."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return v0

    .line 300
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->dictionary()Ljava/util/HashMap;

    move-result-object v1

    .line 302
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v2

    .line 303
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->getEntityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v3

    if-nez v3, :cond_3

    .line 306
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v3

    if-nez v3, :cond_2

    .line 309
    invoke-virtual {p0, p2}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->newManagedMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v3

    goto :goto_0

    .line 316
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->objectID()Lcom/metamoji/dm/fw/metadata/DmManagedObjectId;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->objectWithID(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectId;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v3

    :cond_3
    :goto_0
    if-nez v3, :cond_4

    return v0

    .line 330
    :cond_4
    invoke-virtual {v3, v1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->setValues(Ljava/util/HashMap;)V

    .line 331
    iget-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {p1, v2, v3, p2}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->putManagedObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    if-nez p1, :cond_5

    return v0

    .line 334
    :cond_5
    invoke-virtual {p2, v3}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->addTransactionObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 339
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "put meta data transaciton occurs error:%s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public reset()V
    .locals 2

    .line 215
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v1, v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->reset(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)V

    return-void
.end method

.method public resetForContext(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)V
    .locals 1

    .line 500
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v0

    .line 501
    invoke-virtual {p1, v0}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->reset(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)V

    return-void
.end method

.method public abstract sqlAccessManager()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;
.end method

.method public startTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)Ljava/util/UUID;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->startTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)Ljava/util/UUID;

    move-result-object p1

    return-object p1
.end method
