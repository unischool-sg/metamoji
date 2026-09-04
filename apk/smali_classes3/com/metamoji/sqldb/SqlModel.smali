.class public interface abstract Lcom/metamoji/sqldb/SqlModel;
.super Ljava/lang/Object;
.source "SqlModel.java"

# interfaces
.implements Lcom/metamoji/df/model/IModel;


# virtual methods
.method public abstract addDelegate(Lcom/metamoji/sqldb/SqlModelDelegate;)V
.end method

.method public abstract getDatabase()Lcom/metamoji/sqldb/SqlDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method public abstract getDatabaseFilePath()Ljava/lang/String;
.end method

.method public abstract isDatabaseModified()Z
.end method

.method public abstract readFrom(Ljava/io/File;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method

.method public abstract registDataConverterBlock(Lcom/metamoji/sqldb/SqlConsumer2;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sqldb/SqlConsumer2<",
            "Lcom/metamoji/sqldb/SqlModel;",
            "Lcom/metamoji/sqldb/SqlDatabase;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract registTableName(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract rememberContentModified()V
.end method

.method public abstract removeDelegate(Lcom/metamoji/sqldb/SqlModelDelegate;)V
.end method

.method public abstract removeTableName(Ljava/lang/String;)V
.end method

.method public abstract setDatabaseFilePath(Ljava/lang/String;)V
.end method

.method public abstract writeTo(Ljava/io/File;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Lcom/metamoji/sqldb/SqlConsumer2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/metamoji/cv/xml/CvDirectoryConvertContext;",
            "Lcom/metamoji/sqldb/SqlConsumer2<",
            "Lcom/metamoji/df/model/IModel;",
            "Lcom/metamoji/sqldb/SqlDatabase;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation
.end method
