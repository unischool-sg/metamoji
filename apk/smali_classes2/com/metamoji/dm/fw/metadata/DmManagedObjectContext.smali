.class public Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;
.super Ljava/lang/Object;
.source "DmManagedObjectContext.java"


# static fields
.field private static final _lockObject:Ljava/lang/Object;


# instance fields
.field private m_objects:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->_lockObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->m_objects:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public addTransactionObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)V
    .locals 2

    .line 92
    sget-object v0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->_lockObject:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->m_objects:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clearObjects()V
    .locals 2

    .line 103
    sget-object v0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->m_objects:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 106
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public commitAndRefreshAndReset(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)Z
    .locals 6

    .line 124
    sget-object v0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->_lockObject:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 128
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->save(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    const-string v2, "commit and refresh failed."

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->rollback(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v1

    .line 135
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->m_objects:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    .line 137
    invoke-virtual {v3}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v5

    if-eq v5, p0, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0, p1, v3, v4}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->refreshObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Z)V

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->reset(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v4

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 147
    :try_start_4
    const-string v3, "commit and refresh and reset caught exception. %s"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->rollback(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 150
    :try_start_5
    monitor-exit v0

    return v1

    .line 160
    :goto_1
    throw p1

    :catchall_1
    move-exception p1

    .line 161
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public countForFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)I
    .locals 1

    .line 46
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->sqlDriver()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->countForFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)I

    move-result p1

    return p1
.end method

.method public deleteObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z
    .locals 0

    .line 52
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->sqlDriver()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->deleteObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    move-result p1

    return p1
.end method

.method public executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->sqlDriver()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
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

    .line 114
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->sqlDriver()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->executeInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public objectWithID(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectId;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;
    .locals 1

    .line 76
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->sqlDriver()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->objectWithId(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectId;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z
    .locals 0

    .line 58
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->sqlDriver()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->putObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    move-result p1

    return p1
.end method

.method public refreshObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Z)V
    .locals 0

    return-void
.end method

.method public reset(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)V
    .locals 0

    .line 64
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->sqlDriver()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->reset()V

    return-void
.end method

.method public rollback(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)V
    .locals 0

    .line 192
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->sqlDriver()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->rollback()V

    return-void
.end method

.method public rollbackAndReset(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)V
    .locals 3

    .line 166
    sget-object v0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->rollback(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 180
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->clearObjects()V

    .line 181
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->reset(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 174
    :try_start_2
    const-string v2, "rollback caught exception. %s"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 187
    :catch_1
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    .line 180
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->clearObjects()V

    .line 181
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->reset(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    :catch_2
    :try_start_5
    throw v1

    .line 187
    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public save(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)Z
    .locals 0

    .line 70
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->sqlDriver()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->save()Z

    move-result p1

    return p1
.end method

.method public startTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)V
    .locals 0

    .line 119
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->sqlDriver()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->beginTransaction()V

    return-void
.end method
