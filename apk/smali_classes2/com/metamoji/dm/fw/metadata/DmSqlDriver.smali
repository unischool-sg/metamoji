.class public abstract Lcom/metamoji/dm/fw/metadata/DmSqlDriver;
.super Ljava/lang/Object;
.source "DmSqlDriver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DmSqlDriver"


# instance fields
.field protected _connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

.field protected _dbConnection:Lcom/j256/ormlite/support/DatabaseConnection;

.field protected _dbHelper:Lcom/metamoji/dm/fw/DmDatabaseHelper;

.field protected _inTransaction:Z

.field protected _lockObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/dm/fw/DmDatabaseHelper;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->_lockObj:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->_dbHelper:Lcom/metamoji/dm/fw/DmDatabaseHelper;

    .line 29
    iput-object v1, p0, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->_connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    .line 31
    iput-object v1, p0, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->_dbConnection:Lcom/j256/ormlite/support/DatabaseConnection;

    const/4 v1, 0x0

    .line 33
    iput-boolean v1, p0, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->_inTransaction:Z

    .line 37
    monitor-enter v0

    .line 39
    :try_start_0
    iput-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->_dbHelper:Lcom/metamoji/dm/fw/DmDatabaseHelper;

    .line 40
    invoke-static {p1}, Lcom/metamoji/dm/fw/DmDatabaseHelperPool;->getConnectionSource(Lcom/metamoji/dm/fw/DmDatabaseHelper;)Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->_connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    .line 41
    iget-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->_dbHelper:Lcom/metamoji/dm/fw/DmDatabaseHelper;

    invoke-static {p1}, Lcom/metamoji/dm/fw/DmDatabaseHelperPool;->getDatabaseConnection(Lcom/metamoji/dm/fw/DmDatabaseHelper;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->_dbConnection:Lcom/j256/ormlite/support/DatabaseConnection;

    .line 42
    iget-object v1, p0, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->_connectionSource:Lcom/j256/ormlite/support/ConnectionSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 49
    :try_start_1
    invoke-interface {p1, v1}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    :try_start_2
    const-string v1, "Failed to set AutoCommit mode to true."

    invoke-static {p1, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 55
    :goto_0
    monitor-exit v0

    return-void

    .line 44
    :cond_1
    :goto_1
    sget-object p1, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get database ConnectionSource or DatabaseConnection object."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 55
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private endTransaction()V
    .locals 2

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->_dbConnection:Lcom/j256/ormlite/support/DatabaseConnection;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 98
    const-string v1, "Failed to reset auto commit mode"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->_inTransaction:Z

    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->isInTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->_dbConnection:Lcom/j256/ormlite/support/DatabaseConnection;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    const-string v1, "Failed to set auto commit mode"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->_inTransaction:Z

    :cond_0
    return-void
.end method

.method public commit()V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->_dbConnection:Lcom/j256/ormlite/support/DatabaseConnection;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/DatabaseConnection;->commit(Ljava/sql/Savepoint;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 113
    const-string v1, "Failed to commit"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 115
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->endTransaction()V

    :cond_0
    return-void
.end method

.method public abstract countForFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)I
.end method

.method public abstract deleteObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z
.end method

.method public abstract executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)Ljava/util/ArrayList;
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
.end method

.method public executeInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
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

    .line 63
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->_dbHelper:Lcom/metamoji/dm/fw/DmDatabaseHelper;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->_connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-static {v1, p1}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;
.end method

.method public isInTransaction()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->_inTransaction:Z

    return v0
.end method

.method public abstract objectWithId(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectId;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;
.end method

.method public abstract putObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z
.end method

.method public abstract reset()V
.end method

.method public rollback()V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->_dbConnection:Lcom/j256/ormlite/support/DatabaseConnection;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/DatabaseConnection;->rollback(Ljava/sql/Savepoint;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 129
    const-string v1, "Failed to rollback"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 131
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->endTransaction()V

    :cond_0
    return-void
.end method

.method public abstract save()Z
.end method
