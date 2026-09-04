.class public Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;
.super Lcom/metamoji/dm/fw/storage/DmBasicStorageManagerAbstract;
.source "DmInternalStorageManager.java"

# interfaces
.implements Lcom/metamoji/dm/fw/storage/IDmStorageManager;


# static fields
.field private static _instance:Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;

    invoke-direct {v0}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;-><init>()V

    sput-object v0, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->_instance:Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/metamoji/dm/fw/storage/DmBasicStorageManagerAbstract;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;
    .locals 1

    .line 13
    sget-object v0, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->_instance:Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;

    return-object v0
.end method


# virtual methods
.method public copy(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->getDataRootPath()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->copyInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public copyCache(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->getCacheRootPath()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->copyInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->getDataRootPath()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->deleteInner(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public deleteCache(Ljava/lang/String;)Z
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->getCacheRootPath()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->deleteInner(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized exists(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->getDataRootPath()Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

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

.method public declared-synchronized existsCache(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->getCacheRootPath()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

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

.method public getCacheRootPath()Ljava/lang/String;
    .locals 1

    .line 58
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataRootPath()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getPrivateDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public move(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->getDataRootPath()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->moveInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public moveCache(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->getCacheRootPath()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->moveInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public read(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->getDataRootPath()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->readInner(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public readCache(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->getCacheRootPath()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->readInner(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/io/InputStream;Ljava/lang/String;Z)Z
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->getDataRootPath()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->writeInner(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public writeCache(Ljava/io/InputStream;Ljava/lang/String;Z)Z
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->getCacheRootPath()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/metamoji/dm/fw/storage/DmInternalStorageManager;->writeInner(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
