.class Lcom/metamoji/sqldb/SqlResultSetImpl;
.super Ljava/lang/Object;
.source "SqlResultSetImpl.java"

# interfaces
.implements Lcom/metamoji/sqldb/SqlResultSet;


# instance fields
.field private closeBlock:Lcom/metamoji/sqldb/SqlConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/sqldb/SqlConsumer<",
            "Lcom/metamoji/sqldb/SqlPreparedStatement;",
            ">;"
        }
    .end annotation
.end field

.field private context:Lcom/metamoji/sqldb/SqlThreadContext;

.field private statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;


# direct methods
.method constructor <init>(Lcom/metamoji/sqldb/SqlPreparedStatementImpl;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/metamoji/sqldb/SqlResultSetImpl;-><init>(Lcom/metamoji/sqldb/SqlPreparedStatementImpl;Lcom/metamoji/sqldb/SqlConsumer;)V

    return-void
.end method

.method constructor <init>(Lcom/metamoji/sqldb/SqlPreparedStatementImpl;Lcom/metamoji/sqldb/SqlConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sqldb/SqlPreparedStatementImpl;",
            "Lcom/metamoji/sqldb/SqlConsumer<",
            "Lcom/metamoji/sqldb/SqlPreparedStatement;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/metamoji/sqldb/SqlThreadContext;

    iget-object v1, p1, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-object v1, v1, Lcom/metamoji/sqldb/SqlDatabaseImpl;->databaseFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/metamoji/sqldb/SqlThreadContext;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->context:Lcom/metamoji/sqldb/SqlThreadContext;

    .line 28
    iput-object p1, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    .line 29
    iput-object p2, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->closeBlock:Lcom/metamoji/sqldb/SqlConsumer;

    return-void
.end method

.method private native count_(JJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native getBlob_(JJI)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native getBoolean_(JJI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native getChar_(JJI)C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native getDate_(JJI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native getDouble_(JJI)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native getFloat_(JJI)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native getInt_(JJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native getLong_(JJI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native getShort_(JJI)S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native getString_(JJI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native name_(JJI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native step_(JJ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method private native type_(JJI)Lcom/metamoji/sqldb/SqlColumnType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 47
    :try_start_0
    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->reset()V

    .line 48
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->closeBlock:Lcom/metamoji/sqldb/SqlConsumer;

    if-eqz v0, :cond_0

    .line 49
    iget-object v2, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    invoke-interface {v0, v2}, Lcom/metamoji/sqldb/SqlConsumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    iput-object v1, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    .line 53
    throw v0

    :cond_1
    return-void
.end method

.method public count()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-object v0, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v0, v0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-object v2, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-wide v2, v2, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/metamoji/sqldb/SqlResultSetImpl;->count_(JJ)I

    move-result v0

    return v0
.end method

.method public getBlob(I)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-object v0, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v2, v0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-wide v4, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/sqldb/SqlResultSetImpl;->getBlob_(JJI)[B

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-object v0, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v2, v0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-wide v4, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/sqldb/SqlResultSetImpl;->getBoolean_(JJI)Z

    move-result p1

    return p1
.end method

.method public getChar(I)C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-object v0, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v2, v0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-wide v4, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/sqldb/SqlResultSetImpl;->getChar_(JJI)C

    move-result p1

    return p1
.end method

.method public getDate(I)Ljava/util/Date;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-object v0, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v2, v0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-wide v4, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/sqldb/SqlResultSetImpl;->getDate_(JJI)J

    move-result-wide v2

    .line 91
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object p1
.end method

.method public getDouble(I)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-object v0, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v2, v0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-wide v4, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/sqldb/SqlResultSetImpl;->getDouble_(JJI)D

    move-result-wide v2

    return-wide v2
.end method

.method public getFloat(I)F
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-object v0, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v2, v0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-wide v4, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/sqldb/SqlResultSetImpl;->getFloat_(JJI)F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-object v0, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v2, v0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-wide v4, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/sqldb/SqlResultSetImpl;->getInt_(JJI)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-object v0, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v2, v0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-wide v4, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/sqldb/SqlResultSetImpl;->getLong_(JJI)J

    move-result-wide v2

    return-wide v2
.end method

.method public getShort(I)S
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-object v0, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v2, v0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-wide v4, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/sqldb/SqlResultSetImpl;->getShort_(JJI)S

    move-result p1

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-object v0, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v2, v0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-wide v4, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/sqldb/SqlResultSetImpl;->getString_(JJI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public name(I)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-object v0, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v2, v0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-wide v4, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/sqldb/SqlResultSetImpl;->name_(JJI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public next()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-object v0, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v0, v0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-object v2, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-wide v2, v2, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/metamoji/sqldb/SqlResultSetImpl;->step_(JJ)Z

    move-result v0

    return v0
.end method

.method public type(I)Lcom/metamoji/sqldb/SqlColumnType;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-object v0, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->database:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-wide v2, v0, Lcom/metamoji/sqldb/SqlDatabaseImpl;->sqlite3:J

    iget-object v0, p0, Lcom/metamoji/sqldb/SqlResultSetImpl;->statement:Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    iget-wide v4, v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;->sqlite3_stmt:J

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/sqldb/SqlResultSetImpl;->type_(JJI)Lcom/metamoji/sqldb/SqlColumnType;

    move-result-object p1

    return-object p1
.end method
