.class Lcom/metamoji/sqldb/SqlDatabaseImpl;
.super Ljava/lang/Object;
.source "SqlDatabaseImpl.java"

# interfaces
.implements Lcom/metamoji/sqldb/SqlDatabase;


# instance fields
.field private beginImmediateTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

.field private beginTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

.field private commitTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

.field private context:Lcom/metamoji/sqldb/SqlThreadContext;

.field databaseFilePath:Ljava/lang/String;

.field private delegate:Lcom/metamoji/sqldb/SqlDatabaseDelegate;

.field private rollbackTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

.field private semaphore:Ljava/util/concurrent/Semaphore;

.field sqlite3:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/metamoji/sqldb/SqlJniCallHarness;

    invoke-direct {v0}, Lcom/metamoji/sqldb/SqlJniCallHarness;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->databaseFilePath:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    .line 55
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->semaphore:Ljava/util/concurrent/Semaphore;

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->beginTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    .line 57
    iput-object p1, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->commitTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    .line 58
    iput-object p1, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->rollbackTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    .line 59
    iput-object p1, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->beginImmediateTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    .line 60
    new-instance v0, Lcom/metamoji/sqldb/SqlThreadContext;

    iget-object v1, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->databaseFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/metamoji/sqldb/SqlThreadContext;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    .line 61
    iput-object p1, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->delegate:Lcom/metamoji/sqldb/SqlDatabaseDelegate;

    return-void
.end method

.method private native close_(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native getLastInsertRowId(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native open_(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method


# virtual methods
.method begin()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlThreadContext;->isBegunTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    const-string v0, "not supported nested transaction"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    .line 354
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 355
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->beginTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->executeUpdateForTransaction()I

    .line 357
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/sqldb/SqlThreadContext;->setBegunTransaction(Z)V

    .line 359
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/metamoji/sqldb/SqlThreadContext;->setBegunUpdate(Z)V

    .line 361
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    const-string v2, "autoCommit"

    invoke-virtual {v0, v2}, Lcom/metamoji/sqldb/SqlThreadContext;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    invoke-virtual {p0, v1}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->setAutoCommit(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 365
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 366
    new-instance v1, Lcom/metamoji/sqldb/SqlDatabaseException;

    invoke-direct {v1, v0}, Lcom/metamoji/sqldb/SqlDatabaseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public beginImmediate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlThreadContext;->isBegunTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    const-string v0, "not supported nested transaction"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    .line 383
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 384
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->beginImmediateTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->executeUpdateForTransaction()I

    .line 386
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/sqldb/SqlThreadContext;->setBegunTransaction(Z)V

    .line 388
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/metamoji/sqldb/SqlThreadContext;->setBegunUpdate(Z)V

    .line 390
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    const-string v2, "autoCommit"

    invoke-virtual {v0, v2}, Lcom/metamoji/sqldb/SqlThreadContext;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 391
    invoke-virtual {p0, v1}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->setAutoCommit(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 394
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 395
    new-instance v1, Lcom/metamoji/sqldb/SqlDatabaseException;

    invoke-direct {v1, v0}, Lcom/metamoji/sqldb/SqlDatabaseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->beginTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->close()V

    .line 102
    iput-object v1, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->beginTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->commitTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->close()V

    .line 106
    iput-object v1, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->commitTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->rollbackTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->close()V

    .line 110
    iput-object v1, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->rollbackTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->beginImmediateTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->close()V

    .line 114
    iput-object v1, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->beginImmediateTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    .line 116
    :cond_3
    iget-wide v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    .line 117
    invoke-direct {p0, v0, v1}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->close_(J)V

    .line 118
    iput-wide v2, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    :cond_4
    return-void
.end method

.method public commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlThreadContext;->isBegunTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlThreadContext;->clear()V

    return-void

    .line 141
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->commitTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->executeUpdateForTransaction()I
    :try_end_0
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlThreadContext;->isBegunUpdate()Z

    move-result v0

    .line 150
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    invoke-virtual {v1}, Lcom/metamoji/sqldb/SqlThreadContext;->clear()V

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->delegate:Lcom/metamoji/sqldb/SqlDatabaseDelegate;

    if-eqz v0, :cond_1

    .line 152
    invoke-interface {v0, p0}, Lcom/metamoji/sqldb/SqlDatabaseDelegate;->databaseDidChange(Lcom/metamoji/sqldb/SqlDatabase;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 143
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    invoke-virtual {v1}, Lcom/metamoji/sqldb/SqlThreadContext;->clear()V

    .line 144
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :goto_0
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 147
    throw v0
.end method

.method public executeQuery(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 197
    new-instance v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;-><init>(Lcom/metamoji/sqldb/SqlDatabaseImpl;Ljava/lang/String;)V

    .line 198
    new-instance p1, Lcom/metamoji/sqldb/SqlDatabaseImpl$1;

    invoke-direct {p1, p0}, Lcom/metamoji/sqldb/SqlDatabaseImpl$1;-><init>(Lcom/metamoji/sqldb/SqlDatabaseImpl;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeQuery(Lcom/metamoji/sqldb/SqlConsumer;[Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object p1

    return-object p1
.end method

.method public executeQuery(Ljava/lang/String;Ljava/util/Map;)Lcom/metamoji/sqldb/SqlResultSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/sqldb/SqlResultSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 230
    new-instance v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;-><init>(Lcom/metamoji/sqldb/SqlDatabaseImpl;Ljava/lang/String;)V

    .line 231
    new-instance p1, Lcom/metamoji/sqldb/SqlDatabaseImpl$3;

    invoke-direct {p1, p0}, Lcom/metamoji/sqldb/SqlDatabaseImpl$3;-><init>(Lcom/metamoji/sqldb/SqlDatabaseImpl;)V

    invoke-interface {v0, p1, p2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeQuery(Lcom/metamoji/sqldb/SqlConsumer;Ljava/util/Map;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object p1

    return-object p1
.end method

.method public varargs executeQuery(Ljava/lang/String;[Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 215
    new-instance v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;-><init>(Lcom/metamoji/sqldb/SqlDatabaseImpl;Ljava/lang/String;)V

    .line 216
    new-instance p1, Lcom/metamoji/sqldb/SqlDatabaseImpl$2;

    invoke-direct {p1, p0}, Lcom/metamoji/sqldb/SqlDatabaseImpl$2;-><init>(Lcom/metamoji/sqldb/SqlDatabaseImpl;)V

    invoke-interface {v0, p1, p2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeQuery(Lcom/metamoji/sqldb/SqlConsumer;[Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object p1

    return-object p1
.end method

.method public executeUpdate(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 249
    :try_start_0
    new-instance v1, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;-><init>(Lcom/metamoji/sqldb/SqlDatabaseImpl;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 250
    :try_start_1
    new-array p1, p1, [Ljava/lang/Object;

    invoke-interface {v1, p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    invoke-interface {v1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 255
    :cond_0
    throw p1
.end method

.method public varargs executeUpdate(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 266
    :try_start_0
    new-instance v1, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;-><init>(Lcom/metamoji/sqldb/SqlDatabaseImpl;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 267
    :try_start_1
    invoke-interface {v1, p2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    invoke-interface {v1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 272
    :cond_0
    throw p1
.end method

.method public getColumnInfos(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/sqldb/SqlColumnInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "PRAGMA table_info(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 310
    :try_start_0
    new-instance v2, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    invoke-direct {v2, p0, p1}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;-><init>(Lcom/metamoji/sqldb/SqlDatabaseImpl;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 311
    :try_start_1
    new-array p1, p1, [Ljava/lang/Object;

    invoke-interface {v2, p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeQuery([Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object v1

    .line 312
    :goto_0
    invoke-interface {v1}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    .line 313
    invoke-interface {v1, p1}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 314
    sget-object v3, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_ANY:Lcom/metamoji/sqldb/SqlColumnType;

    const/4 v3, 0x3

    .line 315
    invoke-interface {v1, v3}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 316
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v3, ""

    .line 317
    :goto_1
    const-string v4, "integer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 318
    sget-object v3, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_INTEGER:Lcom/metamoji/sqldb/SqlColumnType;

    goto :goto_2

    .line 319
    :cond_1
    const-string v4, "real"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 320
    sget-object v3, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_REAL:Lcom/metamoji/sqldb/SqlColumnType;

    goto :goto_2

    .line 321
    :cond_2
    const-string/jumbo v4, "text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 322
    sget-object v3, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_TEXT:Lcom/metamoji/sqldb/SqlColumnType;

    goto :goto_2

    .line 323
    :cond_3
    const-string v4, "blob"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_4

    .line 324
    sget-object v3, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_BLOB:Lcom/metamoji/sqldb/SqlColumnType;

    goto :goto_2

    .line 326
    :cond_4
    sget-object v3, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_ANY:Lcom/metamoji/sqldb/SqlColumnType;

    .line 328
    :goto_2
    new-instance v4, Lcom/metamoji/sqldb/SqlColumnInfoImpl;

    invoke-direct {v4, p1, v3}, Lcom/metamoji/sqldb/SqlColumnInfoImpl;-><init>(Ljava/lang/String;Lcom/metamoji/sqldb/SqlColumnType;)V

    .line 329
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    .line 334
    invoke-interface {v1}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    .line 337
    :cond_6
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v2, v1

    :goto_3
    if-eqz v1, :cond_7

    .line 334
    invoke-interface {v1}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    :cond_7
    if-eqz v2, :cond_8

    .line 337
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 339
    :cond_8
    throw p1
.end method

.method public getLastInsertRowId()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 297
    iget-wide v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    invoke-direct {p0, v0, v1}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->getLastInsertRowId(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public lock()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->beginImmediate()V

    return-void
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->databaseFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 78
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->databaseFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->open_(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    .line 81
    new-instance v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    const-string v1, "BEGIN DEFERRED TRANSACTION"

    invoke-direct {v0, p0, v1}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;-><init>(Lcom/metamoji/sqldb/SqlDatabaseImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->beginTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    .line 82
    new-instance v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    const-string v1, "COMMIT TRANSACTION"

    invoke-direct {v0, p0, v1}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;-><init>(Lcom/metamoji/sqldb/SqlDatabaseImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->commitTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    .line 83
    new-instance v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    const-string v1, "ROLLBACK TRANSACTION"

    invoke-direct {v0, p0, v1}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;-><init>(Lcom/metamoji/sqldb/SqlDatabaseImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->rollbackTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    .line 84
    new-instance v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    const-string v1, "BEGIN IMMEDIATE TRANSACTION"

    invoke-direct {v0, p0, v1}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;-><init>(Lcom/metamoji/sqldb/SqlDatabaseImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->beginImmediateTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    .line 87
    new-instance v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    const-string v1, "PRAGMA foreign_keys=ON"

    invoke-direct {v0, p0, v1}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;-><init>(Lcom/metamoji/sqldb/SqlDatabaseImpl;Ljava/lang/String;)V

    .line 89
    :try_start_0
    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->executeUpdateForTransaction()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->close()V

    .line 92
    throw v1
.end method

.method public prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 189
    new-instance v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;-><init>(Lcom/metamoji/sqldb/SqlDatabaseImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public rollback()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlThreadContext;->isBegunTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlThreadContext;->clear()V

    return-void

    .line 167
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->rollbackTransactionStatement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->executeUpdateForTransaction()I
    :try_end_0
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 170
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 171
    throw v0

    .line 170
    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 172
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlThreadContext;->clear()V

    return-void
.end method

.method public setAutoCommit(Z)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    invoke-virtual {v0, p1}, Lcom/metamoji/sqldb/SqlThreadContext;->setAutoCommit(Z)V

    return-void
.end method

.method public setDelegate(Lcom/metamoji/sqldb/SqlDatabaseDelegate;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->delegate:Lcom/metamoji/sqldb/SqlDatabaseDelegate;

    return-void
.end method

.method public vacuum()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 282
    :try_start_0
    new-instance v1, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    const-string v2, "VACUUM"

    invoke-direct {v1, p0, v2}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;-><init>(Lcom/metamoji/sqldb/SqlDatabaseImpl;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 284
    :try_start_1
    invoke-virtual {v1}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->executeUpdateForTransaction()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    invoke-virtual {v1}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->close()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->close()V

    .line 289
    :cond_0
    throw v0
.end method
