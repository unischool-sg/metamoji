.class public abstract Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;
.super Ljava/lang/Object;
.source "DmCacheManagerBaseAbstract.java"


# static fields
.field private static final CACHE_DATA_DIR:Ljava/lang/String; = "com.metamoji.dm.cache"

.field protected static _lockObject:Ljava/lang/Object;


# instance fields
.field protected m_ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->_lockObject:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/metamoji/dm/fw/contents/DmCacheContext;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    return-void
.end method

.method private declared-synchronized createUniqueFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 311
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/metamoji/dm/fw/DmUtils;->dateAsNumber(Ljava/util/Date;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    .line 312
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 316
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 317
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 322
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private getCacheCategoryDir()Ljava/io/File;
    .locals 4

    .line 81
    invoke-direct {p0}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheRootDir()Ljava/io/File;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    invoke-virtual {v3}, Lcom/metamoji/dm/fw/contents/DmCacheContext;->getContentsType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    return-object v1
.end method

.method private declared-synchronized getCacheFileInner(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    monitor-enter p0

    .line 134
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 135
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized getCacheFileRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    monitor-enter p0

    .line 144
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheFileInner(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 145
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->toRelativePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized getCacheRootDir()Ljava/io/File;
    .locals 3

    monitor-enter p0

    .line 62
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getStorageRootDir()Ljava/io/File;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/io/File;

    const-string v2, "com.metamoji.dm.cache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getStorageRootDir()Ljava/io/File;
    .locals 2

    .line 44
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    invoke-virtual {v1}, Lcom/metamoji/dm/fw/contents/DmCacheContext;->getStorageManager()Lcom/metamoji/dm/fw/storage/IDmStorageManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/dm/fw/storage/IDmStorageManager;->getCacheRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private toRelativePath(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getStorageRootDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public declared-synchronized copyCacheData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    monitor-enter p0

    .line 405
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 406
    invoke-direct {p0, p1, p2}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheFileRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 408
    sget-object p2, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->_lockObject:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 410
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    invoke-virtual {v1, p1}, Lcom/metamoji/dm/fw/contents/DmCacheContext;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 412
    invoke-virtual {p0, p3}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 413
    invoke-direct {p0, p3, p4}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheFileRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 414
    invoke-direct {p0, p3, p4}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->createUniqueFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 416
    iget-object p4, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    invoke-virtual {p4, v2}, Lcom/metamoji/dm/fw/contents/DmCacheContext;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 418
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 419
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/contents/DmCacheContext;->getStorageManager()Lcom/metamoji/dm/fw/storage/IDmStorageManager;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->toRelativePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->toRelativePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v0, v3, v4, v5}, Lcom/metamoji/dm/fw/storage/IDmStorageManager;->copyCache(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    iget-object v3, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 424
    :try_start_2
    invoke-virtual {v3}, Lcom/metamoji/dm/fw/contents/DmCacheContext;->getStorageManager()Lcom/metamoji/dm/fw/storage/IDmStorageManager;

    move-result-object p3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/metamoji/dm/fw/storage/IDmStorageManager;->deleteCache(Ljava/lang/String;)Z

    .line 425
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v4

    .line 432
    :cond_0
    :try_start_3
    new-instance p1, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$4;

    invoke-direct {p1, p0, v3, v2, p3}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$4;-><init>(Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;Lcom/metamoji/dm/fw/contents/DmCacheContext;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/metamoji/dm/fw/contents/DmCacheContext;->executeInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    .line 456
    :try_start_4
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 457
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 458
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 459
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 463
    :cond_1
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v5

    :catch_0
    move-exception p1

    .line 444
    :try_start_5
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 445
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    .line 464
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1
.end method

.method public declared-synchronized deleteCacheData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    .line 343
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheFileRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 345
    sget-object v0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->_lockObject:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 347
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    invoke-virtual {v1, p2}, Lcom/metamoji/dm/fw/contents/DmCacheContext;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 348
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v2, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    :try_start_2
    iget-object v2, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    .line 358
    new-instance v3, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$3;

    invoke-direct {v3, p0, v2, p2}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$3;-><init>(Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;Lcom/metamoji/dm/fw/contents/DmCacheContext;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/dm/fw/contents/DmCacheContext;->executeInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 366
    iget-object v2, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    invoke-virtual {v2}, Lcom/metamoji/dm/fw/contents/DmCacheContext;->getStorageManager()Lcom/metamoji/dm/fw/storage/IDmStorageManager;

    move-result-object v2

    .line 367
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->toRelativePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/metamoji/dm/fw/storage/IDmStorageManager;->deleteCache(Ljava/lang/String;)Z

    .line 368
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 369
    array-length v1, v1

    if-nez v1, :cond_2

    .line 370
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 375
    :cond_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p2

    :catch_0
    move-exception p1

    .line 377
    :try_start_4
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 378
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 350
    :cond_3
    :goto_0
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 399
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1
.end method

.method public declared-synchronized existsCacheData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 503
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheFileRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 504
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 506
    sget-object v0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->_lockObject:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 508
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    invoke-virtual {v1, p2}, Lcom/metamoji/dm/fw/contents/DmCacheContext;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 510
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 513
    :cond_0
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 514
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 515
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method protected getCacheCategoryPath()Ljava/lang/String;
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheCategoryDir()Ljava/io/File;

    move-result-object v0

    .line 77
    invoke-direct {p0, v0}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->toRelativePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCacheData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    monitor-enter p0

    .line 468
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheFileRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 469
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 471
    sget-object v0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->_lockObject:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 473
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    invoke-virtual {v1, p2}, Lcom/metamoji/dm/fw/contents/DmCacheContext;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 474
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 475
    invoke-direct {p0, v1}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->toRelativePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 477
    iget-object p2, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    invoke-virtual {p2}, Lcom/metamoji/dm/fw/contents/DmCacheContext;->getStorageManager()Lcom/metamoji/dm/fw/storage/IDmStorageManager;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/metamoji/dm/fw/storage/IDmStorageManager;->readCache(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 480
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x400

    .line 483
    :try_start_2
    new-array v1, v1, [B

    .line 485
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gez v2, :cond_0

    .line 492
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 v3, 0x0

    .line 489
    :try_start_4
    invoke-virtual {p2, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 495
    :catch_0
    :try_start_5
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 497
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 499
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1
.end method

.method protected getCacheDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheCategoryDir()Ljava/io/File;

    move-result-object v1

    .line 106
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 108
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v2

    :catch_0
    :cond_3
    :goto_1
    return-object v0
.end method

.method public declared-synchronized getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    monitor-enter p0

    .line 140
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getCacheFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 155
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheFileRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 158
    sget-object v2, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->_lockObject:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 160
    :try_start_1
    iget-object v3, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    invoke-virtual {v3, v0}, Lcom/metamoji/dm/fw/contents/DmCacheContext;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    iget-object v4, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    if-nez v3, :cond_0

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->createUniqueFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :try_start_2
    new-instance p2, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$1;

    invoke-direct {p2, p0, v4, v0, p1}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$1;-><init>(Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;Lcom/metamoji/dm/fw/contents/DmCacheContext;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Lcom/metamoji/dm/fw/contents/DmCacheContext;->executeInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 173
    :try_start_3
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 174
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 188
    :cond_0
    :goto_0
    :try_start_4
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 189
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method protected declared-synchronized getCachePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    monitor-enter p0

    .line 95
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 96
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->toRelativePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized getCacheRootPath()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 57
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheRootDir()Ljava/io/File;

    move-result-object v0

    .line 58
    invoke-direct {p0, v0}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->toRelativePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getConctext()Lcom/metamoji/dm/fw/contents/DmCacheContext;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    return-object v0
.end method

.method protected declared-synchronized getRawFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 326
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheFileRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 328
    sget-object p2, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->_lockObject:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 330
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/fw/contents/DmCacheContext;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 332
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 333
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public declared-synchronized writeCacheDataFromData([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 276
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 279
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 280
    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->writeCacheDataFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized writeCacheDataFromFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 294
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 295
    :try_start_1
    invoke-virtual {p0, v1, p2, p3}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->writeCacheDataFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 295
    :catch_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    .line 301
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 306
    :catch_2
    :cond_0
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catch_3
    :goto_1
    if-eqz v0, :cond_1

    .line 301
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    .line 297
    :catch_4
    :cond_1
    :goto_2
    monitor-exit p0

    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized writeCacheDataFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    monitor-enter p0

    .line 200
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheFileRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {p0, p2}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 203
    sget-object v7, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->_lockObject:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 205
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    invoke-virtual {v0, v3}, Lcom/metamoji/dm/fw/contents/DmCacheContext;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 206
    invoke-direct {p0, p2, p3}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->createUniqueFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 208
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 210
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p3

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_2

    .line 214
    :cond_0
    :try_start_3
    iget-object p2, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    invoke-virtual {p2}, Lcom/metamoji/dm/fw/contents/DmCacheContext;->getStorageManager()Lcom/metamoji/dm/fw/storage/IDmStorageManager;

    move-result-object p2

    invoke-direct {p0, v5}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->toRelativePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, p1, v0, v1}, Lcom/metamoji/dm/fw/storage/IDmStorageManager;->writeCache(Ljava/io/InputStream;Ljava/lang/String;Z)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p1, :cond_1

    .line 216
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return p3

    .line 221
    :cond_1
    :try_start_5
    iget-object v2, p0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmCacheContext;

    .line 225
    new-instance v0, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$2;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v1, p0

    :try_start_6
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract$2;-><init>(Lcom/metamoji/dm/fw/contents/DmCacheManagerBaseAbstract;Lcom/metamoji/dm/fw/contents/DmCacheContext;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v2, v0}, Lcom/metamoji/dm/fw/contents/DmCacheContext;->executeInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz p1, :cond_2

    if-eqz v8, :cond_2

    .line 256
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 257
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 259
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 263
    :cond_2
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit p0

    return p1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, p0

    :goto_0
    move-object p1, v0

    .line 239
    :try_start_8
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 240
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    monitor-exit p0

    return p3

    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_1
    move-object p1, v0

    .line 264
    :goto_2
    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p1

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v1, p0

    :goto_3
    move-object p1, v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw p1

    :catchall_4
    move-exception v0

    goto :goto_3
.end method
