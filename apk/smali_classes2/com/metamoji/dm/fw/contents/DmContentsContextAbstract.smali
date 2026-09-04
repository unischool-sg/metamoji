.class public abstract Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;
.super Ljava/lang/Object;
.source "DmContentsContextAbstract.java"


# instance fields
.field private volatile m_istrans:Z

.field private m_type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;->m_istrans:Z

    .line 31
    iput-object p1, p0, Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;->m_type:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized begin()Z
    .locals 2

    monitor-enter p0

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;->getDriver()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    .line 59
    :try_start_1
    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->beginTransaction()V

    .line 60
    iput-boolean v1, p0, Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;->m_istrans:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    monitor-exit p0

    return v1

    .line 65
    :catch_0
    :try_start_2
    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->rollback()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    :catch_1
    :try_start_3
    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->reset()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->reset()V

    .line 69
    throw v1

    :goto_0
    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;->m_istrans:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    monitor-exit p0

    return v1

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private declared-synchronized commit()Z
    .locals 2

    monitor-enter p0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;->getDriver()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 83
    :try_start_1
    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->commit()V

    .line 84
    iput-boolean v1, p0, Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;->m_istrans:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 89
    :catch_0
    :try_start_2
    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->rollback()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    :catch_1
    :try_start_3
    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->reset()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->reset()V

    .line 93
    throw v1

    .line 95
    :goto_0
    iput-boolean v1, p0, Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;->m_istrans:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 96
    monitor-exit p0

    return v1

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private declared-synchronized getEntity(Ljava/lang/String;)Lcom/metamoji/dm/fw/contents/DmContentsKeyValueEntity;
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 151
    monitor-exit p0

    return-object v0

    .line 152
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;->getDriver()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v5

    .line 159
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getPredicate()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 161
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getBindings()Ljava/util/HashMap;

    move-result-object v3

    .line 162
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->clear()Lcom/j256/ormlite/stmt/Where;

    .line 163
    new-instance v4, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v4}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :try_start_1
    const-string v6, "key"

    invoke-virtual {v2, v6, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :try_start_2
    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v3, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    invoke-direct {v3}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;-><init>()V

    .line 172
    invoke-static {}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->sharedManager()Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    move-result-object v2

    .line 173
    invoke-virtual {v3, v1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->setSqlDriver(Lcom/metamoji/dm/fw/metadata/DmSqlDriver;)V

    .line 174
    invoke-virtual {v3, v5}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->setPredicate(Lcom/metamoji/dm/fw/metadata/DmPredicate;)V

    .line 176
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 177
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v2, v1, :cond_1

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dm/fw/contents/DmContentsKeyValueEntity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    monitor-exit p0

    return-object p1

    .line 182
    :cond_1
    monitor-exit p0

    return-object v0

    .line 167
    :catch_0
    :try_start_3
    const-string p1, "Unable to set checking entityId to where-phrase"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private declared-synchronized rollback()Z
    .locals 2

    monitor-enter p0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;->getDriver()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    :try_start_1
    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->rollback()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :catch_0
    :try_start_2
    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->reset()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->reset()V

    .line 107
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    :goto_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;->getEntity(Ljava/lang/String;)Lcom/metamoji/dm/fw/contents/DmContentsKeyValueEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public deleteKey(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 194
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;->getEntity(Ljava/lang/String;)Lcom/metamoji/dm/fw/contents/DmContentsKeyValueEntity;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;->getDriver()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    move-result-object v0

    .line 204
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->deleteObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    move-result p1

    return p1
.end method

.method public executeInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
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

    .line 51
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;->getDriver()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    move-result-object v0

    .line 52
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->executeInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContentsType()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;->m_type:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getDriver()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;
.end method

.method public getStorageManager()Lcom/metamoji/dm/fw/storage/IDmStorageManager;
    .locals 1

    .line 43
    invoke-static {}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->getInstance()Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;->getEntity(Ljava/lang/String;)Lcom/metamoji/dm/fw/contents/DmContentsKeyValueEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/contents/DmContentsKeyValueEntity;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isInTransaction()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;->m_istrans:Z

    return v0
.end method

.method public declared-synchronized updateValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 114
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 117
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;->getDriver()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    move-result-object v0

    .line 118
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;->getEntity(Ljava/lang/String;)Lcom/metamoji/dm/fw/contents/DmContentsKeyValueEntity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 120
    new-instance v1, Lcom/metamoji/dm/fw/contents/DmContentsKeyValueEntity;

    invoke-direct {v1}, Lcom/metamoji/dm/fw/contents/DmContentsKeyValueEntity;-><init>()V

    .line 121
    invoke-virtual {v1, p1}, Lcom/metamoji/dm/fw/contents/DmContentsKeyValueEntity;->setKey(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1, p1}, Lcom/metamoji/dm/fw/contents/DmContentsKeyValueEntity;->setEntityId(Ljava/lang/String;)V

    .line 126
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/dm/fw/contents/DmContentsKeyValueEntity;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_3

    if-eqz p2, :cond_2

    .line 130
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {v1, p2}, Lcom/metamoji/dm/fw/contents/DmContentsKeyValueEntity;->setValue(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, v1}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->putObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 131
    :cond_3
    :goto_0
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
