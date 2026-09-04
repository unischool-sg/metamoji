.class public abstract Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;
.super Ljava/lang/Object;
.source "DmSyncClientLibraryIndexXMLProxy.java"

# interfaces
.implements Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;


# static fields
.field private static final CONTENTSMETA_FILE:Ljava/lang/String; = "data.json"


# instance fields
.field private contentsFileType:Ljava/lang/String;

.field private contentsManager:Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;

.field private libraryType:Lcom/metamoji/dm/DmLibraryType;

.field private metaDataManager:Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;

.field private syncWorkDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/metamoji/dm/DmLibraryType;Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;Ljava/lang/String;Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;)V
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/dm/fw/DmUtils;->getDmCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "sync.library"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->syncWorkDir:Ljava/io/File;

    .line 52
    iput-object p1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    .line 53
    iput-object p4, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->contentsManager:Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;

    .line 54
    iput-object p3, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->contentsFileType:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->metaDataManager:Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;

    return-void
.end method

.method private containsSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z
    .locals 1

    .line 325
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->getSyncDataWtihClientId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 330
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object p1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private getSyncListWithType(Lcom/metamoji/dm/DmEntitySyncType;)Ljava/util/ArrayList;
    .locals 2
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

    .line 77
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getEntityIdListWithSyncType(Lcom/metamoji/dm/DmEntitySyncType;Lcom/metamoji/dm/DmLibraryType;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private putSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z
    .locals 3

    .line 298
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object v1

    if-nez v1, :cond_0

    .line 301
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->newManagedMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v1

    check-cast v1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    .line 302
    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setEntityId(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v1, p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 307
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncTypePrev(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 308
    invoke-virtual {v1, p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 309
    const-string p1, "nop"

    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncStatus(Ljava/lang/String;)V

    .line 311
    iget-object p1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/DmLibraryType;)Z

    move-result p1

    return p1
.end method

.method private removeSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z
    .locals 2

    .line 316
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object p2

    .line 317
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {p2, p1, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->deleteMetaDataTrans(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public containsDeleteSyncInfo(Ljava/lang/String;)Z
    .locals 1

    .line 377
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->containsSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z

    move-result p1

    return p1
.end method

.method public containsNewSyncInfo(Ljava/lang/String;)Z
    .locals 1

    .line 345
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->New:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->containsSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z

    move-result p1

    return p1
.end method

.method public containsUpdateSyncInfo(Ljava/lang/String;)Z
    .locals 1

    .line 361
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->Update:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->containsSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z

    move-result p1

    return p1
.end method

.method public deleteDuplicatedDocument(Ljava/lang/String;)Z
    .locals 1

    .line 639
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "not supoort function."

    invoke-direct {p1, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteSyncStatus(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public disconnectAndResetAllSyncInfo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public disconnectFromServer(Ljava/lang/String;)Z
    .locals 3

    .line 382
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->containsDeleteSyncInfo(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->removeDeleteSyncInfo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 388
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->removeNewSyncInfo(Ljava/lang/String;)Z

    .line 389
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->removeUpdateSyncInfo(Ljava/lang/String;)Z

    return v2

    .line 392
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->containsUpdateSyncInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 393
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->removeDeleteSyncInfo(Ljava/lang/String;)Z

    .line 394
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->removeNewSyncInfo(Ljava/lang/String;)Z

    .line 395
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->removeUpdateSyncInfo(Ljava/lang/String;)Z

    .line 396
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->putNewSyncInfo(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v2

    .line 404
    :cond_3
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->removeDeleteSyncInfo(Ljava/lang/String;)Z

    .line 405
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->removeNewSyncInfo(Ljava/lang/String;)Z

    .line 406
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->removeUpdateSyncInfo(Ljava/lang/String;)Z

    .line 407
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->putNewSyncInfo(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public duplicateConflictedDocument(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 634
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "not supoort function."

    invoke-direct {p1, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public executeTrans(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 730
    sget-object v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 731
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object v1

    .line 732
    invoke-virtual {v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v2

    .line 733
    iget-object v3, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v1, v3}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->createMyFetchRequest(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v3

    .line 734
    iget-object v4, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/DmLibraryType;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 735
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public generateClientId()Ljava/lang/String;
    .locals 2

    .line 145
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->contentsManager:Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;

    invoke-virtual {v1}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getConctext()Lcom/metamoji/dm/fw/contents/DmContentsContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->getContentsType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmLocalIdManager;->generateRootId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllClientDeadPropertiesDictWityServerIdKey()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 684
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object v0

    .line 685
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 686
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getMetaDataAllForContext(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/DmLibraryType;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 692
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 693
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 694
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    .line 695
    invoke-virtual {v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object v3

    sget-object v4, Lcom/metamoji/dm/DmEntitySyncType;->Synced:Lcom/metamoji/dm/DmEntitySyncType;

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 699
    :cond_1
    invoke-virtual {v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getLibraryType()Lcom/metamoji/dm/DmLibraryType;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 703
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 704
    invoke-virtual {v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getServerId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 709
    :cond_3
    invoke-virtual {v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getLastSyncedRevision()Ljava/lang/String;

    move-result-object v5

    .line 710
    invoke-virtual {v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncUpdate()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Lcom/metamoji/dm/fw/DmUtils;->dateAsNumber(Ljava/util/Date;)D

    move-result-wide v6

    .line 711
    const-string v8, "serverId"

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    const-string v8, "lastSyncedRevision"

    invoke-virtual {v3, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    const-string v5, "entityId"

    invoke-virtual {v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getEntityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    const-string v2, "syncUpdate"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public getAllClientSyncList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getAllSyncTypeEntityIdListWithLibraryType(Lcom/metamoji/dm/DmLibraryType;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getClientIdFromServerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->getClientIdFromServerId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getClientIdFromServerId(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 125
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getMetaDataWithServerResourceId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 129
    const-string p2, "serverId:%s is not exists client."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    if-nez p2, :cond_1

    .line 134
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object p1

    sget-object p2, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    if-ne p1, p2, :cond_1

    return-object v1

    .line 139
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getEntityId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContentsFilePathFromStorage(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->contentsManager:Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;

    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->contentsFileType:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 554
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->getExportFolderPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 555
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 559
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->contentsFileType:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->getTemporaryFolderPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 563
    iget-object v3, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->contentsManager:Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;

    iget-object v4, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->contentsFileType:Ljava/lang/String;

    invoke-virtual {v3, p1, v4}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 564
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 566
    new-instance p1, Ljava/io/File;

    iget-object v4, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->contentsFileType:Ljava/lang/String;

    invoke-direct {p1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 567
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 568
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 571
    :cond_2
    invoke-static {v3, p1}, Lcom/metamoji/cm/CmUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_3

    return-object v1

    .line 576
    :cond_3
    :try_start_0
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->compressDocumentInDirectory(Ljava/io/File;Landroid/net/Uri;Lcom/metamoji/cm/PBE;)Lcom/metamoji/cv/CvResult$Export;

    move-result-object p1

    .line 577
    sget-object v3, Lcom/metamoji/cv/CvResult$Export;->Success:Lcom/metamoji/cv/CvResult$Export;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v3, :cond_4

    .line 583
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object v2

    :cond_4
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object v1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 584
    throw p1

    :cond_5
    :goto_0
    return-object v1
.end method

.method public getDeleteSyncClientIdFromServerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 170
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getMetaDataWithServerResourceId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 176
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getServerId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeleteSyncList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, v0}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->getSyncListWithType(Lcom/metamoji/dm/DmEntitySyncType;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteSyncServerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 181
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->getSyncDataWtihClientId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 186
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getServerId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeletedTime(Ljava/lang/String;)D
    .locals 4

    .line 477
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->getSyncDataWtihClientId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 482
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object v2

    sget-object v3, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    if-eq v2, v3, :cond_1

    return-wide v0

    .line 486
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncUpdate()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/dm/fw/DmUtils;->dateAsNumber(Ljava/util/Date;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getEntitySyncStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->getSyncDataWtihClientId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 196
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncStatus()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExportFolderPath(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 658
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->syncWorkDir:Ljava/io/File;

    const-string v2, "exportIndex"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 659
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 660
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 662
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 663
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 664
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_1
    return-object v1
.end method

.method public getLastSyncedRevisionFromClient(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 492
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->getSyncDataWtihClientId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 497
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getLastSyncedRevision()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLastSyncedRevisionFromServerDeadProperties(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 508
    :cond_0
    const-string v0, "lastSyncedRevision"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getLastupdateTime(Ljava/lang/String;)D
    .locals 2

    .line 525
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->getSyncDataWtihClientId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 530
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncUpdate()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/dm/fw/DmUtils;->dateAsNumber(Ljava/util/Date;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNewSyncList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->New:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, v0}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->getSyncListWithType(Lcom/metamoji/dm/DmEntitySyncType;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getNoEditList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->Synced:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, v0}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->getSyncListWithType(Lcom/metamoji/dm/DmEntitySyncType;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getServerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->getSyncDataWtihClientId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getServerId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getSyncDataWtihClientId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 64
    :cond_0
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object v1

    if-nez v1, :cond_1

    .line 68
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->newManagedMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    .line 69
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setEntityId(Ljava/lang/String;)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getSyncInfoMetaData(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 421
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->getSyncDataWtihClientId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object p1

    .line 422
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    .line 424
    const-string v1, "#.###"

    invoke-static {v1}, Lcom/metamoji/dm/fw/DmUtils;->getDecimalFormatForSync(Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object v1

    .line 425
    const-string v2, "lastSyncedRevision"

    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getLastSyncedRevision()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string v2, "serverId"

    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncUpdate()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/dm/fw/DmUtils;->dateAsNumber(Ljava/util/Date;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string v1, "syncUpdate"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string p1, "create"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getSyncInfoMetaData(Ljava/lang/String;Z)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 437
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->getSyncInfoMetaData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public getTemporaryFolderPath(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 644
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->syncWorkDir:Ljava/io/File;

    const-string v2, "tempIndex"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 645
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 646
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 648
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 649
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 650
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_1
    return-object v1
.end method

.method public getUpdateSyncList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->Update:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, v0}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->getSyncListWithType(Lcom/metamoji/dm/DmEntitySyncType;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public hasContentsData(Ljava/lang/String;)Z
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->contentsManager:Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;

    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->contentsFileType:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->existsContentsData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public initSyncStatus()Z
    .locals 1

    .line 672
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object v0

    .line 673
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->initSyncStatus()Z

    move-result v0

    return v0
.end method

.method public isDeleteSyncServerId(Ljava/lang/String;)Z
    .locals 2

    .line 158
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getMetaDataWithServerResourceId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 164
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

.method public putDeleteSyncInfo(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 367
    sget-object p2, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, p1, p2}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->putSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z

    move-result p1

    return p1
.end method

.method public putNewSyncInfo(Ljava/lang/String;)Z
    .locals 1

    .line 335
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->New:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->putSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z

    move-result p1

    return p1
.end method

.method public putSyncInfoMetaData(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 447
    :cond_0
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object v0

    .line 448
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->getSyncDataWtihClientId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object v1

    if-nez v1, :cond_1

    .line 450
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->newManagedMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v1

    check-cast v1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    .line 451
    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setEntityId(Ljava/lang/String;)V

    .line 452
    const-string p1, "nop"

    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncStatus(Ljava/lang/String;)V

    .line 456
    :cond_1
    const-string p1, "lastSyncedRevision"

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 457
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 458
    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setLastSyncedRevision(Ljava/lang/String;)V

    .line 461
    :cond_2
    const-string p1, "syncUpdate"

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 462
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 463
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 464
    invoke-static {v2, v3}, Lcom/metamoji/dm/fw/DmUtils;->dateFromNumber(D)Ljava/util/Date;

    move-result-object p1

    .line 465
    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncUpdate(Ljava/util/Date;)V

    .line 467
    :cond_3
    const-string p1, "serverId"

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 468
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 469
    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setServerId(Ljava/lang/String;)V

    .line 472
    :cond_4
    iget-object p1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/DmLibraryType;)Z

    move-result p1

    return p1
.end method

.method public putUpdateSyncInfo(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 351
    sget-object p2, Lcom/metamoji/dm/DmEntitySyncType;->Update:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, p1, p2}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->putSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z

    move-result p1

    return p1
.end method

.method public removeClientResource(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 541
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object v0

    .line 542
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->deleteMetaDataTrans(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    .line 543
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->contentsManager:Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;

    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->contentsFileType:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->deleteContentsData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeDeleteSyncInfo(Ljava/lang/String;)Z
    .locals 1

    .line 372
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->removeSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z

    move-result p1

    return p1
.end method

.method public removeNewSyncInfo(Ljava/lang/String;)Z
    .locals 1

    .line 340
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->New:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->removeSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z

    move-result p1

    return p1
.end method

.method public removeUpdateSyncInfo(Ljava/lang/String;)Z
    .locals 1

    .line 356
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->Update:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->removeSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z

    move-result p1

    return p1
.end method

.method public saveTemporaryToStorage(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 615
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->getTemporaryFolderPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 618
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->contentsFileType:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 619
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 627
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    const/4 p1, 0x0

    return p1

    .line 623
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->contentsManager:Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;

    iget-object v3, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->contentsFileType:Ljava/lang/String;

    invoke-virtual {v2, v1, p1, v3}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->moveContentsDataFromFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 627
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 628
    throw p1
.end method

.method public setEndToDeleteSyncStatus(Ljava/lang/String;)V
    .locals 2

    .line 232
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->deleteMetaData(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Z

    return-void
.end method

.method public setEndToDownloadDeleteSyncStatus(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 251
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 257
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncTypePrev(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 258
    sget-object v1, Lcom/metamoji/dm/DmEntitySyncType;->Synced:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 259
    const-string v1, "end"

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncStatus(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/DmLibraryType;)Z

    return-void
.end method

.method public setEndToNewSyncStatus(Ljava/lang/String;)V
    .locals 2

    .line 201
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncTypePrev(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 208
    sget-object v1, Lcom/metamoji/dm/DmEntitySyncType;->Synced:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 209
    const-string v1, "end"

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncStatus(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/DmLibraryType;)Z

    return-void
.end method

.method public setEndToNotModifiedStatus(Ljava/lang/String;)V
    .locals 2

    .line 283
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 289
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncTypePrev(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 290
    sget-object v1, Lcom/metamoji/dm/DmEntitySyncType;->Synced:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 291
    const-string v1, "end"

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncStatus(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/DmLibraryType;)Z

    return-void
.end method

.method public setEndToServerDownloadStatus(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 267
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 273
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncTypePrev(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 274
    sget-object v1, Lcom/metamoji/dm/DmEntitySyncType;->Synced:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 275
    const-string v1, "end"

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncStatus(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/DmLibraryType;)Z

    return-void
.end method

.method public setEndToUpdateSyncStatus(Ljava/lang/String;)V
    .locals 2

    .line 216
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 222
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncTypePrev(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 223
    sget-object v1, Lcom/metamoji/dm/DmEntitySyncType;->Synced:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 224
    const-string v1, "end"

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncStatus(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/DmLibraryType;)Z

    return-void
.end method

.method public setLastSyncedRevision(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 513
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 519
    :cond_0
    invoke-virtual {p1, p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setLastSyncedRevision(Ljava/lang/String;)V

    .line 520
    iget-object p2, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/DmLibraryType;)Z

    move-result p1

    return p1
.end method

.method public setServerId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 150
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p2, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    move-result-object p2

    .line 152
    invoke-virtual {p2, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setServerId(Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p2, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/DmLibraryType;)Z

    move-result p1

    return p1
.end method

.method public writeContentsFilePathToTemporary(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 590
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->getTemporaryFolderPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x1

    .line 595
    invoke-static {p2, p1, v0, v1}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->uncompressDocument(Ljava/io/File;Ljava/io/File;Ljava/util/Map;Z)Lcom/metamoji/cv/CvResult$Import;

    move-result-object p2

    .line 596
    sget-object v1, Lcom/metamoji/cv/CvResult$Import;->Success:Lcom/metamoji/cv/CvResult$Import;

    if-eq v1, p2, :cond_1

    .line 597
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object v0

    .line 601
    :cond_1
    new-instance p2, Ljava/io/File;

    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;->contentsFileType:Ljava/lang/String;

    invoke-direct {p2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 602
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 603
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object v0

    :cond_2
    return-object p2

    :cond_3
    :goto_0
    return-object v0
.end method
