.class public Lcom/metamoji/dm/fw/DmDatabaseHelperPool;
.super Ljava/lang/Object;
.source "DmDatabaseHelperPool.java"


# static fields
.field public static final DB_HELPER_FOR_CACHES:Ljava/lang/String; = "caches"

.field public static final DB_HELPER_FOR_CONTENTS:Ljava/lang/String; = "contents"

.field public static final DB_HELPER_FOR_METADATA:Ljava/lang/String; = "metadata"

.field private static final TAG:Ljava/lang/String; = "DmDatabaseHelperPool"

.field private static final _conPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/dm/fw/DmDatabaseHelper;",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static final _conSrcPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/dm/fw/DmDatabaseHelper;",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            ">;"
        }
    .end annotation
.end field

.field private static final _pool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/dm/fw/DmDatabaseHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/metamoji/dm/fw/DmDatabaseHelperPool;->_pool:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/metamoji/dm/fw/DmDatabaseHelperPool;->_conPool:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/metamoji/dm/fw/DmDatabaseHelperPool;->_conSrcPool:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectionSource(Lcom/metamoji/dm/fw/DmDatabaseHelper;)Lcom/j256/ormlite/support/ConnectionSource;
    .locals 1

    .line 86
    sget-object v0, Lcom/metamoji/dm/fw/DmDatabaseHelperPool;->_conSrcPool:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/j256/ormlite/support/ConnectionSource;

    return-object p0
.end method

.method public static getDatabaseConnection(Lcom/metamoji/dm/fw/DmDatabaseHelper;)Lcom/j256/ormlite/support/DatabaseConnection;
    .locals 1

    .line 94
    sget-object v0, Lcom/metamoji/dm/fw/DmDatabaseHelperPool;->_conPool:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/j256/ormlite/support/DatabaseConnection;

    return-object p0
.end method

.method public static getDatabaseHelper(Ljava/lang/String;)Lcom/metamoji/dm/fw/DmDatabaseHelper;
    .locals 4

    .line 43
    sget-object v0, Lcom/metamoji/dm/fw/DmDatabaseHelperPool;->_pool:Ljava/util/HashMap;

    monitor-enter v0

    .line 45
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/dm/fw/DmDatabaseHelper;

    if-nez v1, :cond_3

    .line 48
    const-string v1, "metadata"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 49
    new-instance v1, Lcom/metamoji/dm/fw/metadata/DmMetadataDatabaseHelper;

    invoke-direct {v1}, Lcom/metamoji/dm/fw/metadata/DmMetadataDatabaseHelper;-><init>()V

    goto :goto_0

    .line 52
    :cond_0
    const-string v1, "contents"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    new-instance v1, Lcom/metamoji/dm/fw/contents/DmContentsDatabaseHelper;

    invoke-direct {v1}, Lcom/metamoji/dm/fw/contents/DmContentsDatabaseHelper;-><init>()V

    goto :goto_0

    .line 54
    :cond_1
    const-string v1, "caches"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    new-instance v1, Lcom/metamoji/dm/fw/contents/DmCacheDatabaseHelper;

    invoke-direct {v1}, Lcom/metamoji/dm/fw/contents/DmCacheDatabaseHelper;-><init>()V

    .line 61
    :goto_0
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {v1}, Lcom/metamoji/dm/fw/DmDatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :try_start_1
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :catch_0
    :try_start_2
    sget-object v3, Lcom/metamoji/dm/fw/DmDatabaseHelperPool;->_conSrcPool:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object p0, Lcom/metamoji/dm/fw/DmDatabaseHelperPool;->_conPool:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 58
    :cond_2
    sget-object v1, Lcom/metamoji/dm/fw/DmDatabaseHelperPool;->TAG:Ljava/lang/String;

    const-string v3, "Unable to create database helper for %s"

    filled-new-array {v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    monitor-exit v0

    return-object v2

    .line 77
    :cond_3
    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 78
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static removeAndReleaseDatabaseHelper(Ljava/lang/String;)V
    .locals 2

    .line 98
    sget-object v0, Lcom/metamoji/dm/fw/DmDatabaseHelperPool;->_pool:Ljava/util/HashMap;

    monitor-enter v0

    .line 100
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/dm/fw/DmDatabaseHelper;

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object p0, Lcom/metamoji/dm/fw/DmDatabaseHelperPool;->_conSrcPool:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object p0, Lcom/metamoji/dm/fw/DmDatabaseHelperPool;->_conPool:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {v1}, Lcom/metamoji/dm/fw/DmDatabaseHelper;->close()V

    .line 109
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
