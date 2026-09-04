.class public Lcom/metamoji/sd/SdManagedObjectContext;
.super Ljava/lang/Object;
.source "SdManagedObjectContext.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected m_helper:Lcom/metamoji/sd/SdDatabaseHelper;

.field protected m_lockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/metamoji/sd/SdDatabaseHelper;Ljava/lang/Object;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/metamoji/sd/SdManagedObjectContext;->m_lockObject:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcom/metamoji/sd/SdManagedObjectContext;->m_helper:Lcom/metamoji/sd/SdDatabaseHelper;

    .line 28
    invoke-virtual {p1}, Lcom/metamoji/sd/SdDatabaseHelper;->addReference()V

    .line 29
    iput-object p2, p0, Lcom/metamoji/sd/SdManagedObjectContext;->m_lockObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/metamoji/sd/SdManagedObjectContext;->m_helper:Lcom/metamoji/sd/SdDatabaseHelper;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v1

    .line 64
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "db"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 73
    :try_start_1
    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->saveSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 80
    :goto_0
    :try_start_2
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    if-eqz v3, :cond_1

    .line 83
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 84
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    :cond_1
    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 102
    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return-object p1

    :catch_0
    move-exception p1

    if-eqz v3, :cond_2

    .line 95
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 97
    :cond_2
    const-string v2, "Operation in transaction threw non-SQL exception"

    invoke-static {v2, p1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    if-eqz v3, :cond_3

    .line 90
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 92
    :cond_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 101
    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 102
    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 103
    throw p1

    :catch_2
    move-exception p1

    .line 68
    const-string v0, "Can not get database from database connection"

    invoke-static {v0, p1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public close()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/metamoji/sd/SdManagedObjectContext;->m_helper:Lcom/metamoji/sd/SdDatabaseHelper;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDatabaseHelper;->releaseReference()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/metamoji/sd/SdManagedObjectContext;->m_helper:Lcom/metamoji/sd/SdDatabaseHelper;

    :cond_0
    return-void
.end method

.method public getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/metamoji/sd/SdManagedObjectContext;->m_helper:Lcom/metamoji/sd/SdDatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    return-object p1
.end method

.method public performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sd/SdBlock<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/metamoji/sd/SdManagedObjectContext;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    invoke-interface {p1}, Lcom/metamoji/sd/SdBlock;->call()Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
