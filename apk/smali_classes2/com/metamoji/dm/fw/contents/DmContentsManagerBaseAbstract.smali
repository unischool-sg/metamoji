.class public abstract Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;
.super Ljava/lang/Object;
.source "DmContentsManagerBaseAbstract.java"


# static fields
.field private static final CONTENTS_DATA_DIR:Ljava/lang/String; = ".contents"


# instance fields
.field protected m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;


# direct methods
.method protected constructor <init>(Lcom/metamoji/dm/fw/contents/DmContentsContext;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    return-void
.end method

.method private declared-synchronized createUniqueFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 380
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/metamoji/dm/fw/DmUtils;->dateAsNumber(Ljava/util/Date;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    .line 381
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 383
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

    .line 384
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 385
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 386
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
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

    .line 388
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 391
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

.method private getContentsCategoryDir()Ljava/io/File;
    .locals 4

    .line 88
    invoke-direct {p0}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsRootDir()Ljava/io/File;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    invoke-virtual {v3}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->getContentsType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    return-object v1
.end method

.method private getContentsDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsCategoryDir()Ljava/io/File;

    move-result-object v1

    .line 113
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 115
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

.method private declared-synchronized getContentsFileInner(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    monitor-enter p0

    .line 141
    :try_start_0
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 142
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
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

.method private declared-synchronized getContentsFileRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    monitor-enter p0

    .line 152
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsFileInner(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 153
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->toRelativePath(Ljava/io/File;)Ljava/lang/String;

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

.method private declared-synchronized getContentsRootDir()Ljava/io/File;
    .locals 3

    monitor-enter p0

    .line 68
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getStorageRootDir()Ljava/io/File;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/io/File;

    const-string v2, ".contents"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
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

    .line 50
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    invoke-virtual {v1}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->getStorageManager()Lcom/metamoji/dm/fw/storage/IDmStorageManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/dm/fw/storage/IDmStorageManager;->getDataRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private toRelativePath(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getStorageRootDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public declared-synchronized copyContentsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    monitor-enter p0

    .line 467
    :try_start_0
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 468
    invoke-direct {p0, p1, p2}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsFileRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 469
    iget-object p2, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    invoke-virtual {p2, p1}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 471
    invoke-direct {p0, p3}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 472
    invoke-direct {p0, p3, p4}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsFileRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-direct {p0, p3, p4}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->createUniqueFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 475
    iget-object p4, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    invoke-virtual {p4, v1}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 477
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 478
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->getStorageManager()Lcom/metamoji/dm/fw/storage/IDmStorageManager;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->toRelativePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->toRelativePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v2, v3, v4}, Lcom/metamoji/dm/fw/storage/IDmStorageManager;->copy(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    iget-object v2, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 483
    :try_start_1
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->getStorageManager()Lcom/metamoji/dm/fw/storage/IDmStorageManager;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/metamoji/dm/fw/storage/IDmStorageManager;->delete(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    monitor-exit p0

    return v3

    .line 491
    :cond_0
    :try_start_2
    new-instance p1, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$5;

    invoke-direct {p1, p0, v2, v1, p3}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$5;-><init>(Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;Lcom/metamoji/dm/fw/contents/DmContentsContext;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->executeInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    .line 499
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 500
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 501
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 502
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    :cond_1
    monitor-exit p0

    return v4

    :catch_0
    move-exception p1

    .line 508
    :try_start_3
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 509
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized deleteContentsData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 408
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsFileRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 409
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    invoke-virtual {v0, p2}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 410
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    .line 420
    new-instance v2, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$4;

    invoke-direct {v2, p0, v1, p2}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$4;-><init>(Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;Lcom/metamoji/dm/fw/contents/DmContentsContext;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->executeInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 428
    iget-object v1, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    invoke-virtual {v1}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->getStorageManager()Lcom/metamoji/dm/fw/storage/IDmStorageManager;

    move-result-object v1

    .line 429
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->toRelativePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/metamoji/dm/fw/storage/IDmStorageManager;->delete(Ljava/lang/String;)Z

    .line 430
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 431
    array-length v0, v0

    if-nez v0, :cond_2

    .line 432
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    :cond_2
    monitor-exit p0

    return p2

    :catch_0
    move-exception p1

    .line 439
    :try_start_2
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 440
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 412
    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized deleteContentsRootDirIfEmpty()Z
    .locals 2

    monitor-enter p0

    .line 535
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsCategoryDir()Ljava/io/File;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    .line 538
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 541
    :cond_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized existsContentsData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 578
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsFileRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 579
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 580
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    invoke-virtual {v0, p2}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 582
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 585
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 586
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getConctext()Lcom/metamoji/dm/fw/contents/DmContentsContext;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    return-object v0
.end method

.method protected getContentsCategoryPath()Ljava/lang/String;
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsCategoryDir()Ljava/io/File;

    move-result-object v0

    .line 83
    invoke-direct {p0, v0}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->toRelativePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getContentsData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    monitor-enter p0

    .line 545
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsFileRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 546
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 547
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    invoke-virtual {v0, p2}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 548
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 549
    invoke-direct {p0, v0}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->toRelativePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 551
    iget-object p2, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    invoke-virtual {p2}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->getStorageManager()Lcom/metamoji/dm/fw/storage/IDmStorageManager;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/metamoji/dm/fw/storage/IDmStorageManager;->read(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 554
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x400

    .line 557
    :try_start_1
    new-array v0, v0, [B

    .line 559
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gez v1, :cond_0

    .line 566
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 v2, 0x0

    .line 563
    :try_start_2
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 569
    :catch_0
    :try_start_3
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 572
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized getContentsFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    monitor-enter p0

    .line 147
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 148
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getContentsFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 164
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsFileRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 166
    iget-object v2, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    invoke-virtual {v2, v0}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    iget-object v3, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    if-nez v2, :cond_0

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->createUniqueFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    iget-object p1, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    new-instance p2, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$1;

    invoke-direct {p2, p0, v3, v0, v2}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$1;-><init>(Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;Lcom/metamoji/dm/fw/contents/DmContentsContext;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->executeInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 180
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 182
    :try_start_1
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected declared-synchronized getContentsPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    monitor-enter p0

    .line 102
    :try_start_0
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 103
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->toRelativePath(Ljava/io/File;)Ljava/lang/String;

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

.method protected declared-synchronized getContentsRootPath()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsRootDir()Ljava/io/File;

    move-result-object v0

    .line 64
    invoke-direct {p0, v0}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->toRelativePath(Ljava/io/File;)Ljava/lang/String;

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

.method protected declared-synchronized getRawFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    monitor-enter p0

    .line 395
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsFileRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 396
    iget-object p2, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    invoke-virtual {p2, p1}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
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

.method public declared-synchronized moveContentsDataFromFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    monitor-enter p0

    .line 294
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsFileRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-direct {p0, p2}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 296
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    invoke-virtual {v0, v3}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 297
    invoke-direct {p0, p2, p3}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->createUniqueFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 299
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    .line 301
    monitor-exit p0

    return v8

    .line 305
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_1

    .line 306
    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_3

    .line 311
    :cond_1
    :goto_0
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_2

    .line 314
    :try_start_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->writeContentsDataFromFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return p1

    .line 318
    :cond_2
    :try_start_5
    iget-object v2, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    .line 324
    new-instance v0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$3;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v1, p0

    :try_start_6
    invoke-direct/range {v0 .. v7}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$3;-><init>(Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;Lcom/metamoji/dm/fw/contents/DmContentsContext;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v2, v0}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->executeInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 344
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, p0

    :goto_1
    move-object p1, v0

    .line 346
    :try_start_7
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 347
    monitor-exit p0

    return v8

    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_2
    move-object p1, v0

    :goto_3
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1

    :catchall_2
    move-exception v0

    goto :goto_2
.end method

.method public declared-synchronized writeContentsDataFromData([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 287
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 288
    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->writeContentsDataFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Z

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

.method public declared-synchronized writeContentsDataFromFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 361
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 362
    :try_start_1
    invoke-virtual {p0, v1, p2, p3}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->writeContentsDataFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 369
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 371
    :try_start_3
    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 362
    :goto_0
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception p1

    :goto_1
    if-eqz v0, :cond_0

    .line 369
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    .line 371
    :try_start_5
    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 376
    :cond_0
    :goto_2
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception p1

    goto :goto_4

    :catch_1
    :goto_3
    if-eqz v0, :cond_1

    .line 369
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p1

    .line 371
    :try_start_7
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_4
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p1

    .line 365
    :cond_1
    :goto_5
    monitor-exit p0

    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized writeContentsDataFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    monitor-enter p0

    .line 204
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsFileRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-direct {p0, p2}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->getContentsDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 206
    iget-object v0, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    invoke-virtual {v0, v3}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 207
    invoke-direct {p0, p2, p3}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->createUniqueFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 210
    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 211
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->createUniqueFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_3

    .line 214
    :cond_0
    :try_start_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 216
    monitor-exit p0

    return p3

    .line 220
    :cond_1
    :try_start_3
    iget-object p2, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    invoke-virtual {p2}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->getStorageManager()Lcom/metamoji/dm/fw/storage/IDmStorageManager;

    move-result-object p2

    invoke-direct {p0, v5}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->toRelativePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    invoke-interface {p2, p1, v0, v8}, Lcom/metamoji/dm/fw/storage/IDmStorageManager;->write(Ljava/io/InputStream;Ljava/lang/String;Z)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p1, :cond_2

    .line 222
    monitor-exit p0

    return p3

    .line 226
    :cond_2
    :try_start_4
    iget-object v2, p0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;->m_ctx:Lcom/metamoji/dm/fw/contents/DmContentsContext;

    .line 232
    new-instance v0, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$2;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v1, p0

    :try_start_5
    invoke-direct/range {v0 .. v7}, Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract$2;-><init>(Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;Lcom/metamoji/dm/fw/contents/DmContentsContext;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v2, v0}, Lcom/metamoji/dm/fw/contents/DmContentsContext;->executeInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 252
    monitor-exit p0

    return v8

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, p0

    :goto_1
    move-object p1, v0

    .line 254
    :try_start_6
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 255
    monitor-exit p0

    return p3

    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_2
    move-object p1, v0

    :goto_3
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1

    :catchall_2
    move-exception v0

    goto :goto_2
.end method
