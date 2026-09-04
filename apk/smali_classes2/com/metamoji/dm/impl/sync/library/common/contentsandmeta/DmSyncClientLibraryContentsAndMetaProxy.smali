.class public abstract Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;
.super Ljava/lang/Object;
.source "DmSyncClientLibraryContentsAndMetaProxy.java"

# interfaces
.implements Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;


# static fields
.field private static final CONTENTSMETA_FILE:Ljava/lang/String; = "data.json"


# instance fields
.field protected contentsFileType:Ljava/lang/String;

.field protected contentsManager:Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;

.field protected libraryType:Lcom/metamoji/dm/DmLibraryType;

.field protected metaDataManager:Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;

.field private syncWorkDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/metamoji/dm/DmLibraryType;Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;Ljava/lang/String;Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;)V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/dm/fw/DmUtils;->getDmCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "sync.library"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->syncWorkDir:Ljava/io/File;

    .line 58
    iput-object p1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    .line 59
    iput-object p4, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->contentsManager:Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;

    .line 60
    iput-object p3, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->contentsFileType:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->metaDataManager:Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;

    return-void
.end method

.method private containsSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z
    .locals 2

    .line 371
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v0

    .line 372
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 377
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

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

    .line 65
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getEntityIdListWithSyncType(Lcom/metamoji/dm/DmEntitySyncType;Lcom/metamoji/dm/DmLibraryType;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private putSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z
    .locals 6

    .line 344
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object v1

    if-nez v1, :cond_0

    .line 347
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->newManagedMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v1

    check-cast v1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    .line 348
    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setEntityId(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v1, p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lcom/metamoji/dm/fw/DmUtils;->dateFromNumber(D)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncUpdate(Ljava/util/Date;)V

    .line 353
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncTypePrev(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 354
    invoke-virtual {v1, p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 355
    const-string p1, "nop"

    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncStatus(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    move-result p1

    return p1
.end method

.method private removeSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z
    .locals 2

    .line 362
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object p2

    .line 363
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {p2, p1, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->deleteMetaDataTrans(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public containsDeleteSyncInfo(Ljava/lang/String;)Z
    .locals 1

    .line 424
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->containsSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z

    move-result p1

    return p1
.end method

.method public containsNewSyncInfo(Ljava/lang/String;)Z
    .locals 1

    .line 392
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->New:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->containsSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z

    move-result p1

    return p1
.end method

.method public containsUpdateSyncInfo(Ljava/lang/String;)Z
    .locals 1

    .line 408
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->Update:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->containsSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z

    move-result p1

    return p1
.end method

.method public deleteDuplicatedDocument(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
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

    .line 429
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->containsDeleteSyncInfo(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->removeDeleteSyncInfo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 435
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->removeNewSyncInfo(Ljava/lang/String;)Z

    .line 436
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->removeUpdateSyncInfo(Ljava/lang/String;)Z

    return v2

    .line 439
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->containsUpdateSyncInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 440
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->removeDeleteSyncInfo(Ljava/lang/String;)Z

    .line 441
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->removeNewSyncInfo(Ljava/lang/String;)Z

    .line 442
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->removeUpdateSyncInfo(Ljava/lang/String;)Z

    .line 443
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->putNewSyncInfo(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v2

    .line 451
    :cond_3
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->removeDeleteSyncInfo(Ljava/lang/String;)Z

    .line 452
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->removeNewSyncInfo(Ljava/lang/String;)Z

    .line 453
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->removeUpdateSyncInfo(Ljava/lang/String;)Z

    .line 454
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->putNewSyncInfo(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public duplicateConflictedDocument(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
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

    .line 854
    sget-object v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 855
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v1

    .line 856
    invoke-virtual {v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v2

    .line 857
    iget-object v3, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v1, v3}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->createMyFetchRequest(Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v3

    .line 858
    iget-object v4, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/DmLibraryType;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 859
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public generateClientId()Ljava/lang/String;
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->contentsManager:Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getConctext()Lcom/metamoji/dm/fw/contents/DmContentsContext;

    move-result-object v0

    .line 180
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->getContentsType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/cm/CmLocalIdManager;->generateRootId(Ljava/lang/String;)Ljava/lang/String;

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

    .line 808
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v0

    .line 809
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 810
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getMetaDataAllForContext(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/DmLibraryType;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 816
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 817
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 818
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    .line 819
    invoke-virtual {v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object v3

    sget-object v4, Lcom/metamoji/dm/DmEntitySyncType;->Synced:Lcom/metamoji/dm/DmEntitySyncType;

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 823
    :cond_1
    invoke-virtual {v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getLibraryType()Lcom/metamoji/dm/DmLibraryType;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 827
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 828
    invoke-virtual {v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getServerId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 833
    :cond_3
    invoke-virtual {v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getLastSyncedRevision()Ljava/lang/String;

    move-result-object v5

    .line 834
    invoke-virtual {v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getSyncUpdate()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Lcom/metamoji/dm/fw/DmUtils;->dateAsNumber(Ljava/util/Date;)D

    move-result-wide v6

    .line 835
    const-string v8, "serverId"

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    const-string v8, "lastSyncedRevision"

    invoke-virtual {v3, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    const-string v5, "entityId"

    invoke-virtual {v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getEntityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    const-string v2, "syncUpdate"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 138
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getAllSyncTypeEntityIdListWithLibraryType(Lcom/metamoji/dm/DmLibraryType;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getClientIdFromServerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->getClientIdFromServerId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getClientIdFromServerId(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 160
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getMetaDataWithServerResourceId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 163
    const-string p2, "serverId:%s is not exists in this client. return null..."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    if-nez p2, :cond_1

    .line 168
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object p1

    sget-object p2, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    if-ne p1, p2, :cond_1

    return-object v1

    .line 173
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getEntityId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract getClientMetaDictionaryForJson(Ljava/lang/String;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public getContentsFilePathFromStorage(Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .line 608
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->contentsManager:Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;

    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->contentsFileType:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 613
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->getExportFolderPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 614
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 618
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->contentsFileType:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->getTemporaryFolderPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 623
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->isUploadContents(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 624
    iget-object v3, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->contentsManager:Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;

    iget-object v4, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->contentsFileType:Ljava/lang/String;

    invoke-virtual {v3, p1, v4}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 625
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 627
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->contentsFileType:Ljava/lang/String;

    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 628
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 629
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 631
    :cond_2
    invoke-static {v4, v3}, Lcom/metamoji/cm/CmUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_3

    return-object v1

    .line 637
    :cond_3
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->isUploadMetaContents(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 638
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->getClientMetaDictionaryForJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 641
    :try_start_0
    invoke-static {p1}, Lcom/metamoji/cm/CmJson;->createJsonFromMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 646
    new-instance v3, Ljava/io/File;

    const-string v4, "data.json"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 649
    :try_start_1
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 650
    invoke-virtual {v4, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V

    .line 652
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    return-object v1

    .line 658
    :cond_4
    :goto_0
    :try_start_2
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->compressDocumentInDirectory(Ljava/io/File;Landroid/net/Uri;Lcom/metamoji/cm/PBE;)Lcom/metamoji/cv/CvResult$Export;

    move-result-object p1

    .line 659
    sget-object v3, Lcom/metamoji/cv/CvResult$Export;->Success:Lcom/metamoji/cv/CvResult$Export;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v3, :cond_5

    .line 665
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object v2

    :cond_5
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object v1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 666
    throw p1

    :cond_6
    :goto_1
    return-object v1
.end method

.method public getDeleteSyncClientIdFromServerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 209
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getMetaDataWithServerResourceId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 215
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getEntityId()Ljava/lang/String;

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

    .line 110
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, v0}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->getSyncListWithType(Lcom/metamoji/dm/DmEntitySyncType;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteSyncServerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 221
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 227
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getServerId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeletedTime(Ljava/lang/String;)D
    .locals 4

    .line 526
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->getSyncDataWtihClientId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 531
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object v2

    sget-object v3, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    if-eq v2, v3, :cond_1

    return-wide v0

    .line 535
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getSyncUpdate()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/dm/fw/DmUtils;->dateAsNumber(Ljava/util/Date;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getEntitySyncStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 232
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 237
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getSyncStatus()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExportFolderPath(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 782
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->syncWorkDir:Ljava/io/File;

    const-string v2, "export"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 783
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 784
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 786
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 787
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 788
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_1
    return-object v1
.end method

.method public getLastSyncedRevisionFromClient(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 542
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->getSyncDataWtihClientId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 547
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getLastSyncedRevision()Ljava/lang/String;

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

    .line 558
    :cond_0
    const-string v0, "lastSyncedRevision"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getLastupdateTime(Ljava/lang/String;)D
    .locals 2

    .line 579
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->getSyncDataWtihClientId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 584
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getSyncUpdate()Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_1

    return-wide v0

    .line 589
    :cond_1
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

    .line 100
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->New:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, v0}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->getSyncListWithType(Lcom/metamoji/dm/DmEntitySyncType;)Ljava/util/ArrayList;

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

    .line 115
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->Synced:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, v0}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->getSyncListWithType(Lcom/metamoji/dm/DmEntitySyncType;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getServerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->getSyncDataWtihClientId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getServerId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getSyncDataWtihClientId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 124
    :cond_0
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object v1

    if-nez v1, :cond_1

    .line 129
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->newManagedMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    .line 130
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setEntityId(Ljava/lang/String;)V

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

    .line 468
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->getSyncDataWtihClientId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object p1

    .line 470
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    .line 472
    const-string v1, "#.###"

    invoke-static {v1}, Lcom/metamoji/dm/fw/DmUtils;->getDecimalFormatForSync(Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object v1

    .line 473
    const-string v2, "lastSyncedRevision"

    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getLastSyncedRevision()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string v2, "serverId"

    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getSyncUpdate()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/dm/fw/DmUtils;->dateAsNumber(Ljava/util/Date;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string v1, "syncUpdate"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
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

    .line 486
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->getSyncInfoMetaData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public getTemporaryFolderPath(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 767
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->syncWorkDir:Ljava/io/File;

    const-string v2, "temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 768
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 769
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 771
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 772
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 773
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_1
    return-object v1
.end method

.method public getTemporaryMetaDataHashMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 863
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->getTemporaryFolderPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 865
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 869
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "data.json"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 870
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 871
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object v0

    .line 878
    :cond_1
    :try_start_0
    new-instance p1, Ljava/io/FileReader;

    invoke-direct {p1, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 879
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 881
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 882
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 883
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 886
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 888
    invoke-static {v3}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 889
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 897
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 900
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return-object v3

    :catch_1
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v1, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_2

    :catch_3
    move-exception v2

    move-object p1, v0

    move-object v1, p1

    .line 892
    :goto_1
    :try_start_4
    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_3

    .line 897
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_3
    if-eqz p1, :cond_4

    .line 900
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_4
    return-object v0

    :catchall_2
    move-exception v0

    :goto_2
    if-eqz v1, :cond_5

    .line 897
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_5
    if-eqz p1, :cond_6

    .line 900
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 904
    :catch_5
    :cond_6
    throw v0

    :cond_7
    :goto_3
    return-object v0
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

    .line 105
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->Update:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, v0}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->getSyncListWithType(Lcom/metamoji/dm/DmEntitySyncType;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public hasContentsData(Ljava/lang/String;)Z
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->contentsManager:Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;

    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->contentsFileType:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->existsContentsData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public initSyncStatus()Z
    .locals 1

    .line 796
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v0

    .line 797
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->initSyncStatus()Z

    move-result v0

    return v0
.end method

.method public isDeleteSyncServerId(Ljava/lang/String;)Z
    .locals 2

    .line 198
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getMetaDataWithServerResourceId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 204
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

.method public isDownloadContents(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isDownloadMetaContents(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract isTrialClientContents(Ljava/lang/String;)Z
.end method

.method public isUploadContents(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isUploadMetaContents(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract newMutableObject(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;
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

    .line 414
    sget-object p2, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, p1, p2}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->putSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z

    move-result p1

    return p1
.end method

.method public abstract putJsonDictionaryForMetaData(Ljava/util/HashMap;Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;",
            ")",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;"
        }
    .end annotation
.end method

.method public putNewSyncInfo(Ljava/lang/String;)Z
    .locals 1

    .line 382
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->New:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->putSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z

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

    .line 496
    :cond_0
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v0

    .line 497
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->getSyncDataWtihClientId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object v1

    if-nez v1, :cond_1

    .line 499
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->newManagedMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v1

    check-cast v1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    .line 500
    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setEntityId(Ljava/lang/String;)V

    .line 501
    const-string p1, "nop"

    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncStatus(Ljava/lang/String;)V

    .line 505
    :cond_1
    const-string p1, "lastSyncedRevision"

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 506
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 507
    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setLastSyncedRevision(Ljava/lang/String;)V

    .line 510
    :cond_2
    const-string p1, "syncUpdate"

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 511
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 512
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 513
    invoke-static {v2, v3}, Lcom/metamoji/dm/fw/DmUtils;->dateFromNumber(D)Ljava/util/Date;

    move-result-object p1

    .line 514
    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncUpdate(Ljava/util/Date;)V

    .line 516
    :cond_3
    const-string p1, "serverId"

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 517
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 518
    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setServerId(Ljava/lang/String;)V

    .line 521
    :cond_4
    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

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

    .line 398
    sget-object p2, Lcom/metamoji/dm/DmEntitySyncType;->Update:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, p1, p2}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->putSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z

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

    .line 600
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v0

    .line 601
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->deleteMetaDataTrans(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    .line 602
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->metaDataManager:Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->deleteMetaData(Ljava/lang/String;)Z

    .line 603
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->contentsManager:Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;

    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->contentsFileType:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->deleteContentsData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeDeleteSyncInfo(Ljava/lang/String;)Z
    .locals 1

    .line 419
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->removeSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z

    move-result p1

    return p1
.end method

.method public removeNewSyncInfo(Ljava/lang/String;)Z
    .locals 1

    .line 387
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->New:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->removeSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z

    move-result p1

    return p1
.end method

.method public removeUpdateSyncInfo(Ljava/lang/String;)Z
    .locals 1

    .line 403
    sget-object v0, Lcom/metamoji/dm/DmEntitySyncType;->Update:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->removeSyncInfo(Ljava/lang/String;Lcom/metamoji/dm/DmEntitySyncType;)Z

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

    .line 711
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->getTemporaryFolderPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 713
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->isDownloadMetaContents(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 714
    new-instance v1, Ljava/io/File;

    const-string v3, "data.json"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 715
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 747
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return v2

    .line 719
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 720
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 721
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v3}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 723
    iget-object v3, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->metaDataManager:Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;

    invoke-virtual {v3, p1}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v3

    if-nez v3, :cond_1

    .line 725
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->newMutableObject(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v3

    .line 727
    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->putJsonDictionaryForMetaData(Ljava/util/HashMap;Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v1

    .line 728
    iget-object v3, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->metaDataManager:Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;

    invoke-virtual {v3, v1}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    .line 747
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return v2

    .line 735
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->isDownloadContents(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 736
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->contentsFileType:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 737
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_3

    .line 747
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return v2

    .line 741
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->contentsManager:Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;

    iget-object v3, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->contentsFileType:Ljava/lang/String;

    invoke-virtual {v2, v1, p1, v3}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->moveContentsDataFromFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 747
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return p1

    :cond_4
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 748
    throw p1
.end method

.method public setEndToDeleteSyncStatus(Ljava/lang/String;)V
    .locals 2

    .line 273
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->deleteMetaData(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Z

    return-void
.end method

.method public setEndToDownloadDeleteSyncStatus(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 293
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 299
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncTypePrev(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 300
    sget-object v1, Lcom/metamoji/dm/DmEntitySyncType;->Synced:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 301
    const-string v1, "end"

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncStatus(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    return-void
.end method

.method public setEndToNewSyncStatus(Ljava/lang/String;)V
    .locals 2

    .line 242
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 248
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncTypePrev(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 249
    sget-object v1, Lcom/metamoji/dm/DmEntitySyncType;->Synced:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 250
    const-string v1, "end"

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncStatus(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    return-void
.end method

.method public setEndToNotModifiedStatus(Ljava/lang/String;)V
    .locals 2

    .line 325
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->deleteMetaData(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Z

    return-void
.end method

.method public setEndToServerDownloadStatus(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 309
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 315
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncTypePrev(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 316
    sget-object v1, Lcom/metamoji/dm/DmEntitySyncType;->Synced:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 317
    const-string v1, "end"

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncStatus(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    return-void
.end method

.method public setEndToUpdateSyncStatus(Ljava/lang/String;)V
    .locals 2

    .line 257
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->libraryType:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getMetaDataWithClientId(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 263
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncTypePrev(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 264
    sget-object v1, Lcom/metamoji/dm/DmEntitySyncType;->Synced:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 265
    const-string v1, "end"

    invoke-virtual {p1, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncStatus(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    return-void
.end method

.method public setLastSyncedRevision(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 563
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v0

    .line 564
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->getSyncDataWtihClientId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 569
    :cond_0
    invoke-virtual {p1, p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setLastSyncedRevision(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    move-result p1

    return p1
.end method

.method public setServerId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 186
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v0

    .line 187
    invoke-virtual {p0, p2}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->getSyncDataWtihClientId(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 191
    :cond_0
    invoke-virtual {p2, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setServerId(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    move-result p1

    return p1
.end method

.method public writeContentsFilePathToTemporary(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 671
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 675
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->getTemporaryFolderPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    .line 676
    invoke-static {p2, v1, v0, v2}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->uncompressDocument(Ljava/io/File;Ljava/io/File;Ljava/util/Map;Z)Lcom/metamoji/cv/CvResult$Import;

    move-result-object p2

    .line 677
    sget-object v2, Lcom/metamoji/cv/CvResult$Import;->Success:Lcom/metamoji/cv/CvResult$Import;

    if-eq v2, p2, :cond_1

    .line 678
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object v0

    .line 682
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->isDownloadContents(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 683
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->contentsFileType:Ljava/lang/String;

    invoke-direct {p1, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 684
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_2

    .line 685
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object v0

    :cond_2
    return-object p1

    .line 692
    :cond_3
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->isDownloadMetaContents(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 693
    new-instance p1, Ljava/io/File;

    const-string p2, "data.json"

    invoke-direct {p1, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 694
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_4

    .line 695
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object v0

    :cond_4
    return-object p1

    :cond_5
    :goto_0
    return-object v0
.end method
