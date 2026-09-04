.class public Lcom/metamoji/dm/fw/contents/DmCacheContext;
.super Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;
.source "DmCacheContext.java"


# instance fields
.field private m_driver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

.field private m_helper:Lcom/metamoji/dm/fw/DmDatabaseHelper;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 23
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/contents/DmContentsContextAbstract;-><init>(Ljava/lang/String;)V

    .line 12
    const-string p1, "caches"

    invoke-static {p1}, Lcom/metamoji/dm/fw/DmDatabaseHelperPool;->getDatabaseHelper(Ljava/lang/String;)Lcom/metamoji/dm/fw/DmDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/dm/fw/contents/DmCacheContext;->m_helper:Lcom/metamoji/dm/fw/DmDatabaseHelper;

    .line 14
    new-instance v0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;

    invoke-static {p1}, Lcom/metamoji/dm/fw/DmDatabaseHelperPool;->getDatabaseHelper(Ljava/lang/String;)Lcom/metamoji/dm/fw/DmDatabaseHelper;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/metamoji/dm/fw/contents/DmContentsKeyValueEntity;

    invoke-direct {v0, p1, v1}, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;-><init>(Lcom/metamoji/dm/fw/DmDatabaseHelper;[Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)V

    iput-object v0, p0, Lcom/metamoji/dm/fw/contents/DmCacheContext;->m_driver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    return-void
.end method

.method private declared-synchronized initDriver(Lcom/metamoji/dm/fw/metadata/DmSqlDriver;)V
    .locals 2

    monitor-enter p0

    .line 28
    :try_start_0
    iget-object p1, p0, Lcom/metamoji/dm/fw/contents/DmCacheContext;->m_helper:Lcom/metamoji/dm/fw/DmDatabaseHelper;

    invoke-virtual {p1}, Lcom/metamoji/dm/fw/DmDatabaseHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object p1

    .line 29
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 32
    const-string p1, "caches"

    invoke-static {p1}, Lcom/metamoji/dm/fw/DmDatabaseHelperPool;->removeAndReleaseDatabaseHelper(Ljava/lang/String;)V

    .line 33
    const-string p1, "caches"

    invoke-static {p1}, Lcom/metamoji/dm/fw/DmDatabaseHelperPool;->getDatabaseHelper(Ljava/lang/String;)Lcom/metamoji/dm/fw/DmDatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/dm/fw/contents/DmCacheContext;->m_helper:Lcom/metamoji/dm/fw/DmDatabaseHelper;

    .line 34
    new-instance p1, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;

    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmCacheContext;->m_helper:Lcom/metamoji/dm/fw/DmDatabaseHelper;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/metamoji/dm/fw/contents/DmContentsKeyValueEntity;

    invoke-direct {p1, v0, v1}, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;-><init>(Lcom/metamoji/dm/fw/DmDatabaseHelper;[Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)V

    iput-object p1, p0, Lcom/metamoji/dm/fw/contents/DmCacheContext;->m_driver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method protected getDriver()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmCacheContext;->m_driver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    invoke-direct {p0, v0}, Lcom/metamoji/dm/fw/contents/DmCacheContext;->initDriver(Lcom/metamoji/dm/fw/metadata/DmSqlDriver;)V

    .line 19
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmCacheContext;->m_driver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    return-object v0
.end method
