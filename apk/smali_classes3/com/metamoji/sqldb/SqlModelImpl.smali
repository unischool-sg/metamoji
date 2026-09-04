.class public Lcom/metamoji/sqldb/SqlModelImpl;
.super Lcom/metamoji/df/model/Model;
.source "SqlModelImpl.java"

# interfaces
.implements Lcom/metamoji/sqldb/SqlModel;
.implements Lcom/metamoji/sqldb/SqlDatabaseDelegate;


# static fields
.field private static final SQL_CV_ATTRIBUTE_COUNT:Ljava/lang/String; = "count"

.field private static final SQL_CV_ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final SQL_CV_ATTRIBUTE_NULL:Ljava/lang/String; = "null"

.field private static final SQL_CV_ATTRIBUTE_TYPE:Ljava/lang/String; = "type"

.field private static final SQL_CV_ELEMENT_COLUMN:Ljava/lang/String; = "column"

.field private static final SQL_CV_ELEMENT_COLUMN_INFO:Ljava/lang/String; = "columnInfo"

.field private static final SQL_CV_ELEMENT_COLUMN_INFOS:Ljava/lang/String; = "columnInfos"

.field private static final SQL_CV_ELEMENT_CREATES:Ljava/lang/String; = "creates"

.field private static final SQL_CV_ELEMENT_ROW:Ljava/lang/String; = "row"

.field private static final SQL_CV_ELEMENT_ROWS:Ljava/lang/String; = "rows"

.field private static final SQL_CV_ELEMENT_STATEMENT:Ljava/lang/String; = "statement"

.field private static final SQL_CV_ELEMENT_TABLE:Ljava/lang/String; = "table"

.field private static final SQL_CV_ELEMENT_TABLES:Ljava/lang/String; = "tables"

.field private static final SQL_CV_NAMESPACE_URI:Ljava/lang/String; = "http://xmlns.metamoji.com/noteanytime/sqldb/1.0"


# instance fields
.field private converterBlock:Lcom/metamoji/sqldb/SqlConsumer2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/sqldb/SqlConsumer2<",
            "Lcom/metamoji/sqldb/SqlModel;",
            "Lcom/metamoji/sqldb/SqlDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private databaseFilePath:Ljava/lang/String;

.field private databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

.field private databaseModified:Z

.field private delegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/sqldb/SqlModelDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private requiredVersion:I

.field private tableNameToCreateSqls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private tableNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/metamoji/df/model/ModelManager;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/model/Model;-><init>(Lcom/metamoji/df/model/ModelManager;I)V

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseFilePath:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    .line 72
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/metamoji/sqldb/SqlModelImpl;->tableNames:Ljava/util/List;

    .line 73
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/metamoji/sqldb/SqlModelImpl;->tableNameToCreateSqls:Ljava/util/Map;

    .line 74
    iput-object p1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->converterBlock:Lcom/metamoji/sqldb/SqlConsumer2;

    const/4 p2, 0x0

    .line 75
    iput p2, p0, Lcom/metamoji/sqldb/SqlModelImpl;->requiredVersion:I

    .line 76
    iput-boolean p2, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseModified:Z

    .line 77
    iput-object p1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->delegates:Ljava/util/List;

    return-void
.end method

.method public static randomUUID()Ljava/lang/String;
    .locals 1

    .line 315
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addDelegate(Lcom/metamoji/sqldb/SqlModelDelegate;)V
    .locals 1

    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->delegates:Ljava/util/List;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->delegates:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->delegates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected cleanupAdditionalContent(Lcom/metamoji/df/model/ModelManagerCleanupContext;)V
    .locals 0

    return-void
.end method

.method createDatabase()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    if-nez v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlModelImpl;->prepareDatabase()V

    .line 299
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->setAutoCommit(Z)V

    .line 301
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlModelImpl;->createTables()V

    .line 302
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->commit()V

    .line 304
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-virtual {v0, p0}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->setDelegate(Lcom/metamoji/sqldb/SqlDatabaseDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 306
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-virtual {v1}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->rollback()V

    .line 307
    new-instance v1, Lcom/metamoji/sqldb/SqlDatabaseException;

    invoke-direct {v1, v0}, Lcom/metamoji/sqldb/SqlDatabaseException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method createTables()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->tableNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 287
    iget-object v2, p0, Lcom/metamoji/sqldb/SqlModelImpl;->tableNameToCreateSqls:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 288
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 289
    invoke-static {}, Lcom/metamoji/sqldb/SqlFactory;->instance()Lcom/metamoji/sqldb/SqlFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-virtual {v3, v4, v2}, Lcom/metamoji/sqldb/SqlFactory;->createPreparedStatement(Lcom/metamoji/sqldb/SqlDatabaseImpl;Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v2

    const/4 v3, 0x0

    .line 290
    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I

    .line 291
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public databaseDidChange(Lcom/metamoji/sqldb/SqlDatabase;)V
    .locals 0

    .line 267
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlModelImpl;->rememberContentModified()V

    const/4 p1, 0x1

    .line 268
    iput-boolean p1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseModified:Z

    return-void
.end method

.method public destruct()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlModelImpl;->fireDatabaseWillClose()V

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->close()V
    :try_end_0
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :catch_0
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlModelImpl;->fireDatabaseDidClosse()V

    .line 92
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/sqldb/SqlModelImpl;->removeDatabaseFileAtPath(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseFilePath:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    .line 96
    iput-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->tableNames:Ljava/util/List;

    .line 97
    iput-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->tableNameToCreateSqls:Ljava/util/Map;

    .line 98
    iput-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->converterBlock:Lcom/metamoji/sqldb/SqlConsumer2;

    .line 99
    iput-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->delegates:Ljava/util/List;

    .line 100
    invoke-super {p0}, Lcom/metamoji/df/model/Model;->destruct()V

    return-void
.end method

.method fireDatabaseDidClosse()V
    .locals 2

    .line 341
    monitor-enter p0

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->delegates:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 343
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/sqldb/SqlModelDelegate;

    if-eqz v1, :cond_0

    .line 345
    invoke-interface {v1}, Lcom/metamoji/sqldb/SqlModelDelegate;->databaseDidClose()V

    goto :goto_0

    .line 349
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method fireDatabaseWillClose()V
    .locals 3

    .line 329
    monitor-enter p0

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->delegates:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 331
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/sqldb/SqlModelDelegate;

    if-eqz v1, :cond_0

    .line 333
    iget-object v2, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-interface {v1, v2}, Lcom/metamoji/sqldb/SqlModelDelegate;->databaseWillClose(Lcom/metamoji/sqldb/SqlDatabase;)V

    goto :goto_0

    .line 337
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method generateColumnInfoElement(Lorg/w3c/dom/Document;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Lcom/metamoji/sqldb/SqlColumnInfo;I)Lorg/w3c/dom/Element;
    .locals 1

    .line 554
    const-string p2, "http://xmlns.metamoji.com/noteanytime/sqldb/1.0"

    const-string p4, "columnInfo"

    invoke-interface {p1, p2, p4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 555
    const-string p2, "name"

    invoke-interface {p3}, Lcom/metamoji/sqldb/SqlColumnInfo;->name()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, p4}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-interface {p3}, Lcom/metamoji/sqldb/SqlColumnInfo;->type()Lcom/metamoji/sqldb/SqlColumnType;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/sqldb/SqlColumnType;->getValue()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "%d"

    invoke-static {p2, p4, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "type"

    invoke-interface {p1, v0, p3, p2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method generateColumnInfosElement(Lorg/w3c/dom/Document;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/util/List;)Lorg/w3c/dom/Element;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Lcom/metamoji/cv/xml/CvDirectoryConvertContext;",
            "Ljava/util/List<",
            "Lcom/metamoji/sqldb/SqlColumnInfo;",
            ">;)",
            "Lorg/w3c/dom/Element;"
        }
    .end annotation

    .line 531
    const-string v0, "http://xmlns.metamoji.com/noteanytime/sqldb/1.0"

    const-string v1, "columnInfos"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 532
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 533
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/sqldb/SqlColumnInfo;

    .line 534
    invoke-virtual {p0, p1, p2, v3, v2}, Lcom/metamoji/sqldb/SqlModelImpl;->generateColumnInfoElement(Lorg/w3c/dom/Document;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Lcom/metamoji/sqldb/SqlColumnInfo;I)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 535
    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method generateCreatesElement(Lorg/w3c/dom/Document;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2

    .line 492
    const-string v0, "http://xmlns.metamoji.com/noteanytime/sqldb/1.0"

    const-string v1, "creates"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->tableNameToCreateSqls:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_0

    .line 494
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 495
    invoke-virtual {p0, p1, p2, v1}, Lcom/metamoji/sqldb/SqlModelImpl;->generateStatementElement(Lorg/w3c/dom/Document;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 496
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method generateRowsElement(Lorg/w3c/dom/Document;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;Ljava/util/List;)Lorg/w3c/dom/Element;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Lcom/metamoji/cv/xml/CvDirectoryConvertContext;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/metamoji/sqldb/SqlColumnInfo;",
            ">;)",
            "Lorg/w3c/dom/Element;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 574
    const-string p2, "http://xmlns.metamoji.com/noteanytime/sqldb/1.0"

    const-string/jumbo v0, "rows"

    invoke-interface {p1, p2, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 575
    invoke-static {p3, p4}, Lcom/metamoji/sqldb/SqlUtil;->generateSelectAllSqlForTableName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    .line 576
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, 0x0

    invoke-direct {v6, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 577
    new-instance v1, Lcom/metamoji/sqldb/SqlModelImpl$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/sqldb/SqlModelImpl$1;-><init>(Lcom/metamoji/sqldb/SqlModelImpl;Lorg/w3c/dom/Document;Ljava/util/List;Lorg/w3c/dom/Element;Ljava/util/concurrent/atomic/AtomicInteger;)V

    iget-object p1, v2, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    const/4 p3, 0x0

    invoke-static {v1, p1, p2, p3}, Lcom/metamoji/sqldb/SqlUtil;->selectWithAction(Lcom/metamoji/sqldb/SqlConsumer;Lcom/metamoji/sqldb/SqlDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "count"

    invoke-interface {v5, p3, p2, p1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method generateStatementElement(Lorg/w3c/dom/Document;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1

    .line 516
    const-string p2, "http://xmlns.metamoji.com/noteanytime/sqldb/1.0"

    const-string/jumbo v0, "statement"

    invoke-interface {p1, p2, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 517
    invoke-interface {p1, p3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    .line 518
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p2
.end method

.method generateTableElement(Lorg/w3c/dom/Document;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-virtual {v0, p3}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->getColumnInfos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 435
    const-string v1, "http://xmlns.metamoji.com/noteanytime/sqldb/1.0"

    const-string/jumbo v2, "table"

    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const/4 v2, 0x0

    .line 436
    const-string v3, "name"

    invoke-interface {v1, v2, v3, p3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/sqldb/SqlModelImpl;->generateCreatesElement(Lorg/w3c/dom/Document;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 439
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 441
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/sqldb/SqlModelImpl;->generateColumnInfosElement(Lorg/w3c/dom/Document;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/util/List;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 442
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 444
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/metamoji/sqldb/SqlModelImpl;->generateRowsElement(Lorg/w3c/dom/Document;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;Ljava/util/List;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 445
    invoke-interface {v1, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v1
.end method

.method generateTablesElement(Lorg/w3c/dom/Document;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lorg/w3c/dom/Element;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 414
    const-string v0, "http://xmlns.metamoji.com/noteanytime/sqldb/1.0"

    const-string/jumbo v1, "tables"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->tableNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 416
    invoke-virtual {p0, p1, p2, v2}, Lcom/metamoji/sqldb/SqlModelImpl;->generateTableElement(Lorg/w3c/dom/Document;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 417
    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDatabase()Lcom/metamoji/sqldb/SqlDatabase;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 184
    invoke-super {p0}, Lcom/metamoji/df/model/Model;->readyContent()Z

    .line 185
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlModelImpl;->createDatabase()V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    return-object v0

    .line 182
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "databaseFilePath is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDatabaseFilePath()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseFilePath:Ljava/lang/String;

    return-object v0
.end method

.method protected importAdditionalContent(Lcom/metamoji/df/model/Model;Lcom/metamoji/df/model/ModelManagerImportContext;)V
    .locals 0

    return-void
.end method

.method public isDatabaseModified()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseModified:Z

    return v0
.end method

.method protected loadAdditionalContent([BI)V
    .locals 3

    .line 211
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlModelImpl;->prepareDatabase()V

    .line 216
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlModelImpl;->getVersion()I

    move-result p1

    iget p2, p0, Lcom/metamoji/sqldb/SqlModelImpl;->requiredVersion:I

    if-ge p1, p2, :cond_0

    .line 217
    iget-object p1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->converterBlock:Lcom/metamoji/sqldb/SqlConsumer2;

    iget-object p2, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-interface {p1, p0, p2}, Lcom/metamoji/sqldb/SqlConsumer2;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    .line 219
    iput-boolean p1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseModified:Z

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlModelImpl;->prepareDatabase()V

    .line 223
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-object v1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->tableNames:Ljava/util/List;

    iget-object v2, p0, Lcom/metamoji/sqldb/SqlModelImpl;->tableNameToCreateSqls:Ljava/util/Map;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/metamoji/sqldb/SqlUtil;->deserializeDatabase(Lcom/metamoji/sqldb/SqlDatabase;[BILjava/util/List;Ljava/util/Map;)V

    .line 225
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlModelImpl;->getVersion()I

    move-result p1

    iget p2, p0, Lcom/metamoji/sqldb/SqlModelImpl;->requiredVersion:I

    if-ge p1, p2, :cond_2

    .line 226
    iget-object p1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->converterBlock:Lcom/metamoji/sqldb/SqlConsumer2;

    iget-object p2, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-interface {p1, p0, p2}, Lcom/metamoji/sqldb/SqlConsumer2;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    iget-object p1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-virtual {p0, p1}, Lcom/metamoji/sqldb/SqlModelImpl;->databaseDidChange(Lcom/metamoji/sqldb/SqlDatabase;)V

    .line 231
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-virtual {p1, p0}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->setDelegate(Lcom/metamoji/sqldb/SqlDatabaseDelegate;)V
    :try_end_0
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 234
    const-string p2, "loadAdditionalContent failed: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method parseColumnInfoElement(Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/sqldb/SqlColumnInfo;
    .locals 2

    .line 561
    const-string p2, "name"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 562
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 565
    const-string/jumbo v1, "type"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 566
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 569
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/metamoji/sqldb/SqlColumnType;->enumOf(I)Lcom/metamoji/sqldb/SqlColumnType;

    move-result-object p1

    .line 570
    new-instance v0, Lcom/metamoji/sqldb/SqlColumnInfoImpl;

    invoke-direct {v0, p2, p1}, Lcom/metamoji/sqldb/SqlColumnInfoImpl;-><init>(Ljava/lang/String;Lcom/metamoji/sqldb/SqlColumnType;)V

    return-object v0

    .line 567
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "SQLDB0013"

    const-string v0, "failed to read xml: empty type value"

    invoke-direct {p1, p2, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 563
    :cond_1
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "SQLDB0012"

    const-string v0, "failed to read xml: empty name value"

    invoke-direct {p1, p2, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method parseColumnInfosElement(Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Lcom/metamoji/cv/xml/CvDirectoryConvertContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/sqldb/SqlColumnInfo;",
            ">;"
        }
    .end annotation

    .line 541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 542
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 543
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 544
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 545
    const-string v4, "columnInfo"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "http://xmlns.metamoji.com/noteanytime/sqldb/1.0"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 546
    check-cast v3, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v3, p2}, Lcom/metamoji/sqldb/SqlModelImpl;->parseColumnInfoElement(Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/sqldb/SqlColumnInfo;

    move-result-object v3

    .line 547
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method parseCreatesElement(Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Lcom/metamoji/cv/xml/CvDirectoryConvertContext;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 502
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 503
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 504
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 505
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 506
    const-string/jumbo v3, "statement"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "http://xmlns.metamoji.com/noteanytime/sqldb/1.0"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 507
    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v2, p2}, Lcom/metamoji/sqldb/SqlModelImpl;->parseStatementElement(Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Ljava/lang/String;

    move-result-object v2

    .line 508
    iget-object v3, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-virtual {v3, v2}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->executeUpdate(Ljava/lang/String;)V

    .line 509
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method parseRowsElement(Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Lcom/metamoji/cv/xml/CvDirectoryConvertContext;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/metamoji/sqldb/SqlColumnInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 624
    const-string v0, "count"

    invoke-interface {p1, p2, v0}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 625
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 628
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 629
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 630
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 631
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 632
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 633
    const-string/jumbo v4, "row"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "http://xmlns.metamoji.com/noteanytime/sqldb/1.0"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 634
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 637
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 640
    invoke-static {p3, p4}, Lcom/metamoji/sqldb/SqlUtil;->generateInsertSqlForTableName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 641
    new-instance p3, Lcom/metamoji/sqldb/SqlModelImpl$2;

    invoke-direct {p3, p0, v0, p4}, Lcom/metamoji/sqldb/SqlModelImpl$2;-><init>(Lcom/metamoji/sqldb/SqlModelImpl;Ljava/util/List;Ljava/util/List;)V

    iget-object p4, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-static {p3, p4, p1, p2}, Lcom/metamoji/sqldb/SqlUtil;->insertWithAction(Lcom/metamoji/sqldb/SqlFunction;Lcom/metamoji/sqldb/SqlDatabase;Ljava/lang/String;I)V

    return-void

    .line 638
    :cond_2
    new-instance p1, Lcom/metamoji/cm/CmException;

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    const-string p4, "failed to read xml: invalid count value: rowCount=%d, rowElements.count=%d"

    invoke-static {p3, p4, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "SQLDB0015"

    invoke-direct {p1, p3, p2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 626
    :cond_3
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "SQLDB0014"

    const-string p3, "failed to read xml: empty count value"

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method parseStatementElement(Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Ljava/lang/String;
    .locals 1

    .line 523
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 524
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    return-object p1

    .line 525
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "SQLDB0011"

    const-string v0, "failed to read xml: empty statement value"

    invoke-direct {p1, p2, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method parseTableElement(Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 450
    const-string v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 451
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 455
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 456
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const-string v6, "http://xmlns.metamoji.com/noteanytime/sqldb/1.0"

    if-ge v5, v3, :cond_1

    .line 457
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 458
    const-string v8, "creates"

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 459
    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v7, p2, v0}, Lcom/metamoji/sqldb/SqlModelImpl;->parseCreatesElement(Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 460
    invoke-virtual {p0, v0, v2}, Lcom/metamoji/sqldb/SqlModelImpl;->registTableName(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 467
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 468
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_3

    .line 469
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 470
    const-string v8, "columnInfos"

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 471
    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v7, p2}, Lcom/metamoji/sqldb/SqlModelImpl;->parseColumnInfosElement(Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v1, :cond_6

    .line 476
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 480
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 481
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    :goto_4
    if-ge v4, v2, :cond_5

    .line 482
    invoke-interface {p1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 483
    const-string/jumbo v5, "rows"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 484
    check-cast v3, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v3, p2, v0, v1}, Lcom/metamoji/sqldb/SqlModelImpl;->parseRowsElement(Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;Ljava/util/List;)V

    return-void

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    return-void

    .line 477
    :cond_6
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "SQLDB0010"

    const-string v0, "failed to read xml: empty column informations"

    invoke-direct {p1, p2, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 452
    :cond_7
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "SQLDB0009"

    const-string v0, "failed to read table name"

    invoke-direct {p1, p2, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method parseTablesElement(Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 423
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 424
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 425
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 426
    const-string/jumbo v3, "table"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "http://xmlns.metamoji.com/noteanytime/sqldb/1.0"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 427
    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v2, p2}, Lcom/metamoji/sqldb/SqlModelImpl;->parseTableElement(Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method prepareDatabase()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 321
    invoke-static {}, Lcom/metamoji/sqldb/SqlFactory;->instance()Lcom/metamoji/sqldb/SqlFactory;

    move-result-object v0

    invoke-static {}, Lcom/metamoji/sqldb/SqlModelImpl;->randomUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/sqldb/SqlFactory;->createDatabaseFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseFilePath:Ljava/lang/String;

    .line 323
    :cond_0
    new-instance v0, Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-object v1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/metamoji/sqldb/SqlDatabaseImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    const/4 v1, 0x0

    .line 324
    invoke-virtual {v0, v1}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->setDelegate(Lcom/metamoji/sqldb/SqlDatabaseDelegate;)V

    .line 325
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->open()V

    return-void
.end method

.method public readFrom(Ljava/io/File;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 395
    const-string/jumbo v0, "tables"

    invoke-static {p1}, Lcom/metamoji/cv/xml/XmlUtils;->loadXMLFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 396
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlModelImpl;->prepareDatabase()V

    .line 397
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->tableNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 398
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->tableNameToCreateSqls:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 399
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->setAutoCommit(Z)V

    .line 401
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    .line 402
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "http://xmlns.metamoji.com/noteanytime/sqldb/1.0"

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/sqldb/SqlModelImpl;->parseTablesElement(Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 406
    iget-object p1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->commit()V

    return-void

    .line 403
    :cond_0
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string v1, "SQLDB0007"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "failed to read xml: {%s}%s (expected {%s}%s)"

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v5, p1, v2, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, v4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 408
    iget-object p2, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-virtual {p2}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->rollback()V

    .line 409
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string v0, "SQLDB0008"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public registDataConverterBlock(Lcom/metamoji/sqldb/SqlConsumer2;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sqldb/SqlConsumer2<",
            "Lcom/metamoji/sqldb/SqlModel;",
            "Lcom/metamoji/sqldb/SqlDatabase;",
            ">;I)V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->converterBlock:Lcom/metamoji/sqldb/SqlConsumer2;

    .line 142
    iput p2, p0, Lcom/metamoji/sqldb/SqlModelImpl;->requiredVersion:I

    return-void
.end method

.method public registTableName(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->tableNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->tableNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->tableNameToCreateSqls:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public rememberContentModified()V
    .locals 0

    .line 176
    invoke-super {p0}, Lcom/metamoji/df/model/Model;->rememberContentModified()V

    return-void
.end method

.method removeDatabaseFileAtPath(Ljava/lang/String;)V
    .locals 1

    .line 277
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 278
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    .line 280
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public removeDelegate(Lcom/metamoji/sqldb/SqlModelDelegate;)V
    .locals 2

    .line 159
    monitor-enter p0

    if-eqz p1, :cond_2

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->delegates:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 162
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, -0x1

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->delegates:Ljava/util/List;

    if-ltz v0, :cond_1

    .line 163
    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/sqldb/SqlModelDelegate;

    if-ne v1, p1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->delegates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 168
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 171
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeTableName(Ljava/lang/String;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->tableNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->tableNameToCreateSqls:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected saveAdditionalContent(Lcom/metamoji/df/model/ByteData;)V
    .locals 3

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlModelImpl;->createDatabase()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    iget-object v1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->tableNames:Ljava/util/List;

    iget-object v2, p0, Lcom/metamoji/sqldb/SqlModelImpl;->tableNameToCreateSqls:Ljava/util/Map;

    invoke-static {v0, p1, v1, v2}, Lcom/metamoji/sqldb/SqlUtil;->serializeDatabase(Lcom/metamoji/sqldb/SqlDatabase;Lcom/metamoji/df/model/ByteData;Ljava/util/List;Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 201
    iput-boolean p1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseModified:Z
    :try_end_0
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 204
    const-string/jumbo v0, "saveAdditionalContent failed: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public setDatabaseFilePath(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseFilePath:Ljava/lang/String;

    return-void
.end method

.method public tableNameToCreateSqls()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->tableNameToCreateSqls:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public tableNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->tableNames:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected unloadAdditionalContent()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0, v1}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->setDelegate(Lcom/metamoji/sqldb/SqlDatabaseDelegate;)V

    .line 244
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlModelImpl;->fireDatabaseWillClose()V

    .line 245
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->close()V
    :try_end_0
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 248
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlModelImpl;->fireDatabaseDidClosse()V

    .line 249
    throw v0

    .line 248
    :catch_0
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlModelImpl;->fireDatabaseDidClosse()V

    .line 250
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/sqldb/SqlModelImpl;->removeDatabaseFileAtPath(Ljava/lang/String;)V

    .line 252
    :cond_0
    iput-object v1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    return-void
.end method

.method public writeTo(Ljava/io/File;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Lcom/metamoji/sqldb/SqlConsumer2;)V
    .locals 2
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

    .line 369
    invoke-super {p0}, Lcom/metamoji/df/model/Model;->readyContent()Z

    .line 370
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    if-nez v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlModelImpl;->createDatabase()V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->setAutoCommit(Z)V

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->beginImmediate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p3, :cond_1

    .line 382
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-interface {p3, p0, v0}, Lcom/metamoji/sqldb/SqlConsumer2;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 384
    :cond_1
    invoke-static {}, Lcom/metamoji/cv/xml/XmlUtils;->newDocument()Lorg/w3c/dom/Document;

    move-result-object p3

    .line 385
    invoke-virtual {p0, p3, p2}, Lcom/metamoji/sqldb/SqlModelImpl;->generateTablesElement(Lorg/w3c/dom/Document;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-interface {p3, p2}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 386
    invoke-static {p3, p1}, Lcom/metamoji/cv/xml/XmlUtils;->saveXMLFile(Lorg/w3c/dom/Document;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    iget-object p1, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->rollback()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/metamoji/sqldb/SqlModelImpl;->databaseInstance:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-virtual {p2}, Lcom/metamoji/sqldb/SqlDatabaseImpl;->rollback()V

    .line 390
    throw p1

    :catchall_1
    move-exception p1

    .line 378
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string p3, "SQLDB0034"

    const-string v0, "failed to begin immediate transaction"

    invoke-direct {p2, p3, v0, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
