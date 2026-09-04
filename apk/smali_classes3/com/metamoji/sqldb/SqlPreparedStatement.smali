.class public interface abstract Lcom/metamoji/sqldb/SqlPreparedStatement;
.super Ljava/lang/Object;
.source "SqlPreparedStatement.java"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method public abstract executeQuery(Lcom/metamoji/sqldb/SqlConsumer;Ljava/util/Map;)Lcom/metamoji/sqldb/SqlResultSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sqldb/SqlConsumer<",
            "Lcom/metamoji/sqldb/SqlPreparedStatement;",
            ">;",
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
.end method

.method public varargs abstract executeQuery(Lcom/metamoji/sqldb/SqlConsumer;[Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sqldb/SqlConsumer<",
            "Lcom/metamoji/sqldb/SqlPreparedStatement;",
            ">;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/metamoji/sqldb/SqlResultSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method public varargs abstract executeQuery([Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method public varargs abstract executeUpdate(Z[Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method public varargs abstract executeUpdate([Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method public abstract executeUpdateForTransaction()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method public abstract reset()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method
