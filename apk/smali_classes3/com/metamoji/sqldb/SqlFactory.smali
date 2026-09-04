.class public Lcom/metamoji/sqldb/SqlFactory;
.super Ljava/lang/Object;
.source "SqlFactory.java"


# static fields
.field private static final SINGLETON:Lcom/metamoji/sqldb/SqlFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/metamoji/sqldb/SqlFactory;

    invoke-direct {v0}, Lcom/metamoji/sqldb/SqlFactory;-><init>()V

    sput-object v0, Lcom/metamoji/sqldb/SqlFactory;->SINGLETON:Lcom/metamoji/sqldb/SqlFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/metamoji/sqldb/SqlFactory;
    .locals 1

    .line 28
    sget-object v0, Lcom/metamoji/sqldb/SqlFactory;->SINGLETON:Lcom/metamoji/sqldb/SqlFactory;

    return-object v0
.end method


# virtual methods
.method public createColumnInfo(Ljava/lang/String;Lcom/metamoji/sqldb/SqlColumnType;)Lcom/metamoji/sqldb/SqlColumnInfo;
    .locals 1

    .line 53
    new-instance v0, Lcom/metamoji/sqldb/SqlColumnInfoImpl;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/sqldb/SqlColumnInfoImpl;-><init>(Ljava/lang/String;Lcom/metamoji/sqldb/SqlColumnType;)V

    return-object v0
.end method

.method public createDatabase(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlDatabase;
    .locals 1

    .line 37
    new-instance v0, Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-direct {v0, p1}, Lcom/metamoji/sqldb/SqlDatabaseImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createDatabaseFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 58
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getPrivateDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "sqldb"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    const-string v2, "SQLDB0003"

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "cannot create cache directory: %s"

    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_1
    :goto_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s.%s"

    const-string v5, "ctagdb"

    filled-new-array {p1, v5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, v4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 66
    new-instance v0, Lcom/metamoji/cm/CmException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createModel(Lcom/metamoji/df/model/ModelManager;I)Lcom/metamoji/sqldb/SqlModel;
    .locals 1

    .line 33
    new-instance v0, Lcom/metamoji/sqldb/SqlModelImpl;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/sqldb/SqlModelImpl;-><init>(Lcom/metamoji/df/model/ModelManager;I)V

    return-object v0
.end method

.method public createPreparedStatement(Lcom/metamoji/sqldb/SqlDatabaseImpl;Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/sqldb/SqlPreparedStatementImpl;-><init>(Lcom/metamoji/sqldb/SqlDatabaseImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public createResultSet(Lcom/metamoji/sqldb/SqlPreparedStatementImpl;)Lcom/metamoji/sqldb/SqlResultSet;
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/sqldb/SqlFactory;->createResultSet(Lcom/metamoji/sqldb/SqlPreparedStatementImpl;Lcom/metamoji/sqldb/SqlConsumer;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object p1

    return-object p1
.end method

.method public createResultSet(Lcom/metamoji/sqldb/SqlPreparedStatementImpl;Lcom/metamoji/sqldb/SqlConsumer;)Lcom/metamoji/sqldb/SqlResultSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sqldb/SqlPreparedStatementImpl;",
            "Lcom/metamoji/sqldb/SqlConsumer<",
            "Lcom/metamoji/sqldb/SqlPreparedStatement;",
            ">;)",
            "Lcom/metamoji/sqldb/SqlResultSet;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/metamoji/sqldb/SqlResultSetImpl;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/sqldb/SqlResultSetImpl;-><init>(Lcom/metamoji/sqldb/SqlPreparedStatementImpl;Lcom/metamoji/sqldb/SqlConsumer;)V

    return-object v0
.end method
