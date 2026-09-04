.class public Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;
.super Ljava/lang/Object;
.source "CtObjectDatabaseImpl.java"

# interfaces
.implements Lcom/metamoji/ctold/database/CtObjectDatabase;
.implements Lcom/metamoji/sqldb/SqlModelDelegate;


# static fields
.field private static final SQL_ADD_OBJECT:Ljava/lang/String; = "INSERT INTO objects (object_type, object_id, object_owner_id, object_page_id) VALUES (?, ?, ?, ?)"

.field private static final SQL_ADD_OBJECT_IMAGE:Ljava/lang/String; = "INSERT INTO object_images (object_number, object_image) VALUES (?, ?)"

.field private static final SQL_CREATE_TABLE_OBJECTS:Ljava/lang/String; = "CREATE TABLE objects (object_number INTEGER PRIMARY KEY AUTOINCREMENT, object_type INTEGER NOT NULL, object_id TEXT NOT NULL, object_owner_id TEXT NOT NULL, object_page_id TEXT, object_x REAL, object_y REAL, object_width REAL, object_height REAL, CONSTRAINT uk_object UNIQUE (object_id, object_owner_id))"

.field private static final SQL_CREATE_TABLE_OBJECT_IMAGES:Ljava/lang/String; = "CREATE TABLE object_images (object_number INTEGER PRIMARY KEY, object_image BLOB, CONSTRAINT fk_object FOREIGN KEY (object_number) REFERENCES objects (object_number) ON DELETE CASCADE)"

.field private static final SQL_GET_OBJECT_COUNT:Ljava/lang/String; = "SELECT count(object_number) FROM objects WHERE object_id=? AND object_owner_id=?"

.field private static final SQL_GET_OBJECT_INFO:Ljava/lang/String; = "SELECT object_type, object_id, object_owner_id, object_page_id, object_x, object_y, object_width, object_height, object_image FROM objects LEFT OUTER JOIN object_images ON objects.object_number=object_images.object_number WHERE object_id=? AND object_owner_id=?"

.field private static final SQL_LIST_ALL_OBJECTS:Ljava/lang/String; = "SELECT object_type, object_id, object_owner_id FROM objects"

.field public static final SQL_LIST_OBJECTS_BY_TYPE:Ljava/lang/String; = "SELECT object_number, object_id, object_owner_id FROM objects WHERE object_type=?"

.field private static final SQL_LIST_OBJECTS_FOR_PAGE:Ljava/lang/String; = "SELECT object_type, object_id, object_owner_id FROM objects WHERE object_page_id=?"

.field private static final SQL_LIST_OBJECTS_FOR_UNIT:Ljava/lang/String; = "SELECT object_type, object_id, object_owner_id FROM objects WHERE (object_type=? AND object_id=?) OR (object_type=? AND object_owner_id=?) OR (object_type=? AND object_owner_id=?)"

.field private static final SQL_REMOVE_OBJECT:Ljava/lang/String; = "DELETE FROM objects WHERE object_id=? AND object_owner_id=?"

.field private static final SQL_REMOVE_OBJECTS_FOR_PAGE:Ljava/lang/String; = "DELETE FROM objects WHERE object_page_id=?"

.field private static final SQL_REMOVE_OBJECTS_FOR_UNIT:Ljava/lang/String; = "DELETE FROM objects WHERE (object_type=? AND object_id=?) OR (object_type=? AND object_owner_id=?) OR (object_type=? AND object_owner_id=?)"

.field private static final SQL_REMOVE_OBJECT_IMAGE:Ljava/lang/String; = "DELETE FROM object_images WHERE object_number=(SELECT object_number FROM objects WHERE object_id=? AND object_owner_id=?)"

.field private static final SQL_TABLE_NAME_OBJECTS:Ljava/lang/String; = "objects"

.field private static final SQL_TABLE_NAME_OBJECT_IMAGES:Ljava/lang/String; = "object_images"

.field private static final SQL_UPDATE_OBJECT_DIMENSION:Ljava/lang/String; = "UPDATE objects SET object_x=?, object_y=?, object_width=?, object_height=? WHERE object_id=? AND object_owner_id=?"

.field public static final SQL_UPDATE_OBJECT_ID_OWNER_ID:Ljava/lang/String; = "UPDATE objects SET object_id=?, object_owner_id=? WHERE object_number=?"

.field private static final SQL_UPDATE_OBJECT_IMAGE:Ljava/lang/String; = "UPDATE object_images SET object_image=? WHERE object_number=(SELECT object_number FROM objects WHERE object_id=? AND object_owner_id=?)"


# instance fields
.field private addObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

.field private addObjectImage:Lcom/metamoji/sqldb/SqlPreparedStatement;

.field private databaseModel:Lcom/metamoji/sqldb/SqlModel;

.field private documentId:Ljava/lang/String;

.field private getObjectCount:Lcom/metamoji/sqldb/SqlPreparedStatement;

.field private getObjectInfo:Lcom/metamoji/sqldb/SqlPreparedStatement;

.field private listAllObjects:Lcom/metamoji/sqldb/SqlPreparedStatement;

.field private listObjectsForPage:Lcom/metamoji/sqldb/SqlPreparedStatement;

.field private listObjectsForUnit:Lcom/metamoji/sqldb/SqlPreparedStatement;

.field private ready:Z

.field private removeObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

.field private removeObjectImage:Lcom/metamoji/sqldb/SqlPreparedStatement;

.field private removeObjectsForPage:Lcom/metamoji/sqldb/SqlPreparedStatement;

.field private removeObjectsForUnit:Lcom/metamoji/sqldb/SqlPreparedStatement;

.field private updateObjectDimension:Lcom/metamoji/sqldb/SqlPreparedStatement;

.field private updateObjectImage:Lcom/metamoji/sqldb/SqlPreparedStatement;


# direct methods
.method constructor <init>(Lcom/metamoji/sqldb/SqlModel;Ljava/lang/String;)V
    .locals 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->ready:Z

    .line 106
    iput-object p1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    .line 107
    iput-object p2, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->documentId:Ljava/lang/String;

    const/4 p2, 0x1

    .line 108
    new-array v1, p2, [Ljava/lang/String;

    const-string v2, "CREATE TABLE objects (object_number INTEGER PRIMARY KEY AUTOINCREMENT, object_type INTEGER NOT NULL, object_id TEXT NOT NULL, object_owner_id TEXT NOT NULL, object_page_id TEXT, object_x REAL, object_y REAL, object_width REAL, object_height REAL, CONSTRAINT uk_object UNIQUE (object_id, object_owner_id))"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/metamoji/ctold/CtUtils;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "objects"

    invoke-interface {p1, v2, v1}, Lcom/metamoji/sqldb/SqlModel;->registTableName(Ljava/lang/String;Ljava/util/List;)V

    .line 109
    iget-object p1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    new-array p2, p2, [Ljava/lang/String;

    const-string v1, "CREATE TABLE object_images (object_number INTEGER PRIMARY KEY, object_image BLOB, CONSTRAINT fk_object FOREIGN KEY (object_number) REFERENCES objects (object_number) ON DELETE CASCADE)"

    aput-object v1, p2, v0

    invoke-static {p2}, Lcom/metamoji/ctold/CtUtils;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string v0, "object_images"

    invoke-interface {p1, v0, p2}, Lcom/metamoji/sqldb/SqlModel;->registTableName(Ljava/lang/String;Ljava/util/List;)V

    .line 110
    iget-object p1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {p1, p0}, Lcom/metamoji/sqldb/SqlModel;->addDelegate(Lcom/metamoji/sqldb/SqlModelDelegate;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    if-eqz v0, :cond_0

    .line 222
    invoke-interface {v0, p0}, Lcom/metamoji/sqldb/SqlModel;->removeDelegate(Lcom/metamoji/sqldb/SqlModelDelegate;)V

    .line 223
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->unreadyDatabase()V

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->documentId:Ljava/lang/String;

    .line 225
    iput-object v0, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    :cond_0
    return-void
.end method

.method public databaseDidClose()V
    .locals 0

    return-void
.end method

.method public databaseWillClose(Lcom/metamoji/sqldb/SqlDatabase;)V
    .locals 0

    .line 207
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->unreadyDatabase()V

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->close()V

    .line 202
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAllObjectKeys()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    monitor-enter v0

    .line 420
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->readyDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 422
    :try_start_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
    :try_end_1
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    .line 425
    :try_start_2
    iget-object v3, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->listAllObjects:Lcom/metamoji/sqldb/SqlPreparedStatement;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v4}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeQuery([Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object v2

    .line 426
    :goto_0
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 427
    invoke-interface {v2, v3}, Lcom/metamoji/sqldb/SqlResultSet;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/metamoji/ctold/object/CtObjectType;->enumOf(I)Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v3

    const/4 v4, 0x2

    .line 428
    invoke-interface {v2, v4}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    .line 429
    invoke-interface {v2, v5}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/ctold/CtUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 430
    invoke-static {v3, v4, v5}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 435
    :try_start_3
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->close()V
    :try_end_3
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v2, :cond_2

    :try_start_5
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    .line 437
    :cond_2
    throw v1
    :try_end_5
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v1

    .line 439
    :try_start_6
    new-instance v2, Lcom/metamoji/cm/CmException;

    const-string v3, "CT0024"

    invoke-virtual {v1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_1
    move-exception v1

    .line 441
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public getDocumentId()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->documentId:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectKeysInPage(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    monitor-enter v0

    .line 447
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->readyDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 449
    :try_start_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
    :try_end_1
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_0

    .line 451
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 455
    :try_start_3
    iget-object v3, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->listObjectsForPage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeQuery([Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object v2

    .line 456
    :goto_0
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 458
    invoke-interface {v2, p1}, Lcom/metamoji/sqldb/SqlResultSet;->getInt(I)I

    move-result p1

    .line 457
    invoke-static {p1}, Lcom/metamoji/ctold/object/CtObjectType;->enumOf(I)Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object p1

    const/4 v3, 0x2

    .line 459
    invoke-interface {v2, v3}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 460
    invoke-interface {v2, v4}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/ctold/CtUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 461
    invoke-static {p1, v3, v4}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 467
    :try_start_4
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->close()V
    :try_end_4
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-object v1

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_3

    :try_start_6
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    .line 469
    :cond_3
    throw p1
    :try_end_6
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_0
    move-exception p1

    .line 471
    :try_start_7
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "CT0025"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_1
    move-exception p1

    .line 473
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1
.end method

.method public getObjectKeysInUnit(Ljava/lang/String;)Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 478
    iget-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    monitor-enter v1

    .line 479
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->readyDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 481
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    :try_end_1
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    .line 484
    :try_start_2
    iget-object v3, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->listObjectsForUnit:Lcom/metamoji/sqldb/SqlPreparedStatement;

    sget-object v4, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNIT:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v4}, Lcom/metamoji/ctold/object/CtObjectType;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v4, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_ELEM:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v4}, Lcom/metamoji/ctold/object/CtObjectType;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v4, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_GROUP:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v4}, Lcom/metamoji/ctold/object/CtObjectType;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v8, p1

    move-object v10, p1

    move-object v6, p1

    filled-new-array/range {v5 .. v10}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeQuery([Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object v2

    .line 485
    :goto_0
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 486
    invoke-interface {v2, p1}, Lcom/metamoji/sqldb/SqlResultSet;->getInt(I)I

    move-result p1

    invoke-static {p1}, Lcom/metamoji/ctold/object/CtObjectType;->enumOf(I)Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object p1

    const/4 v3, 0x2

    .line 487
    invoke-interface {v2, v3}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 488
    invoke-interface {v2, v4}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/ctold/CtUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 489
    invoke-static {p1, v3, v4}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 494
    :try_start_3
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->close()V
    :try_end_3
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    if-eqz v2, :cond_2

    :try_start_5
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    .line 496
    :cond_2
    throw p1
    :try_end_5
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 498
    :try_start_6
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v2, "CT0026"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 500
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public getObjectReference(Ljava/lang/String;)Lcom/metamoji/ctold/object/CtObjectReference;
    .locals 19

    move-object/from16 v1, p0

    .line 376
    iget-object v2, v1, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    monitor-enter v2

    .line 377
    :try_start_0
    invoke-virtual {v1}, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->readyDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v3, 0x0

    .line 381
    :try_start_1
    iget-object v0, v1, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->getObjectInfo:Lcom/metamoji/sqldb/SqlPreparedStatement;

    invoke-static/range {p1 .. p1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/metamoji/ctold/CtTagUtil;->toOwnerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/ctold/CtUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeQuery([Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 382
    :try_start_2
    invoke-interface {v4}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 383
    invoke-interface {v4, v0}, Lcom/metamoji/sqldb/SqlResultSet;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/ctold/object/CtObjectType;->enumOf(I)Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v6

    const/4 v0, 0x2

    .line 384
    invoke-interface {v4, v0}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x3

    .line 385
    invoke-interface {v4, v0}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ctold/CtUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x4

    .line 386
    invoke-interface {v4, v0}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x5

    .line 387
    invoke-interface {v4, v0}, Lcom/metamoji/sqldb/SqlResultSet;->getDouble(I)D

    move-result-wide v11

    const/4 v0, 0x6

    .line 388
    invoke-interface {v4, v0}, Lcom/metamoji/sqldb/SqlResultSet;->getDouble(I)D

    move-result-wide v13

    const/4 v0, 0x7

    move-wide v15, v13

    .line 389
    invoke-interface {v4, v0}, Lcom/metamoji/sqldb/SqlResultSet;->getDouble(I)D

    move-result-wide v13

    const/16 v0, 0x8

    move-wide/from16 v17, v13

    .line 390
    invoke-interface {v4, v0}, Lcom/metamoji/sqldb/SqlResultSet;->getDouble(I)D

    move-result-wide v13

    const/16 v0, 0x9

    .line 391
    invoke-interface {v4, v0}, Lcom/metamoji/sqldb/SqlResultSet;->getBlob(I)[B

    move-result-object v0

    .line 392
    invoke-static {}, Lcom/metamoji/ctold/object/CtObjectReferenceFactory;->instance()Lcom/metamoji/ctold/object/CtObjectReferenceFactory;

    move-result-object v5

    iget-object v10, v1, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->documentId:Ljava/lang/String;

    invoke-virtual/range {v5 .. v10}, Lcom/metamoji/ctold/object/CtObjectReferenceFactory;->create(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ctold/object/CtObjectReference;

    move-result-object v5

    .line 393
    new-instance v6, Lcom/metamoji/cm/RectEx;

    double-to-float v7, v11

    move-wide v8, v15

    double-to-float v8, v8

    move-wide/from16 v9, v17

    double-to-float v9, v9

    double-to-float v10, v13

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    if-eqz v0, :cond_0

    .line 395
    array-length v7, v0

    if-lez v7, :cond_0

    .line 396
    new-instance v7, Lcom/metamoji/cm/Blob;

    const-string v8, "application/octet-stream"

    invoke-direct {v7, v0, v8}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v7, v3

    .line 398
    :goto_0
    invoke-static {}, Lcom/metamoji/ctold/object/CtObjectReferenceFactory;->instance()Lcom/metamoji/ctold/object/CtObjectReferenceFactory;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v7}, Lcom/metamoji/ctold/object/CtObjectReferenceFactory;->update(Lcom/metamoji/ctold/object/CtObjectReference;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/Blob;)Lcom/metamoji/ctold/object/CtObjectReference;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_1

    .line 408
    :try_start_3
    invoke-interface {v4}, Lcom/metamoji/sqldb/SqlResultSet;->close()V
    :try_end_3
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    return-object v0

    :cond_2
    if-eqz v4, :cond_3

    :try_start_5
    invoke-interface {v4}, Lcom/metamoji/sqldb/SqlResultSet;->close()V
    :try_end_5
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_3
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v4, v3

    .line 404
    :goto_1
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v4, :cond_4

    .line 408
    :try_start_8
    invoke-interface {v4}, Lcom/metamoji/sqldb/SqlResultSet;->close()V
    :try_end_8
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_4
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    return-object v3

    :catchall_2
    move-exception v0

    if-eqz v4, :cond_5

    :try_start_a
    invoke-interface {v4}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    .line 410
    :cond_5
    throw v0
    :try_end_a
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catch_0
    move-exception v0

    .line 412
    :try_start_b
    new-instance v3, Lcom/metamoji/cm/CmException;

    const-string v4, "CT0023"

    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catchall_3
    move-exception v0

    .line 414
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0
.end method

.method public isRegisteredObject(Ljava/lang/String;)Z
    .locals 5

    .line 347
    iget-object v0, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    monitor-enter v0

    .line 348
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->readyDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 352
    :try_start_1
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toOwnerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 354
    iget-object v4, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->getObjectCount:Lcom/metamoji/sqldb/SqlPreparedStatement;

    invoke-static {p1}, Lcom/metamoji/ctold/CtUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeQuery([Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object v2

    .line 355
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 356
    invoke-interface {v2, p1}, Lcom/metamoji/sqldb/SqlResultSet;->getInt(I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v3, :cond_0

    move v1, p1

    :cond_0
    if-eqz v2, :cond_2

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 365
    :goto_0
    :try_start_2
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->close()V
    :try_end_2
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return v1

    :catchall_0
    move-exception p1

    .line 361
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_3

    .line 365
    :try_start_5
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->close()V
    :try_end_5
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_3
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return v1

    :catchall_1
    move-exception p1

    if-eqz v2, :cond_4

    :try_start_7
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    .line 367
    :cond_4
    throw p1
    :try_end_7
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_0
    move-exception p1

    .line 369
    :try_start_8
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "CT0022"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_2
    move-exception p1

    .line 371
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1
.end method

.method readyDatabase()V
    .locals 4

    .line 115
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->ready:Z

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlModel;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object v0

    .line 119
    const-string v1, "INSERT INTO objects (object_type, object_id, object_owner_id, object_page_id) VALUES (?, ?, ?, ?)"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->addObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 120
    const-string v1, "INSERT INTO object_images (object_number, object_image) VALUES (?, ?)"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->addObjectImage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 121
    const-string v1, "SELECT object_type, object_id, object_owner_id FROM objects WHERE object_page_id=?"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->listObjectsForPage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 122
    const-string v1, "DELETE FROM objects WHERE object_page_id=?"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->removeObjectsForPage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 123
    const-string v1, "SELECT object_type, object_id, object_owner_id FROM objects WHERE (object_type=? AND object_id=?) OR (object_type=? AND object_owner_id=?) OR (object_type=? AND object_owner_id=?)"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->listObjectsForUnit:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 124
    const-string v1, "DELETE FROM objects WHERE (object_type=? AND object_id=?) OR (object_type=? AND object_owner_id=?) OR (object_type=? AND object_owner_id=?)"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->removeObjectsForUnit:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 125
    const-string v1, "DELETE FROM objects WHERE object_id=? AND object_owner_id=?"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->removeObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 126
    const-string v1, "UPDATE objects SET object_x=?, object_y=?, object_width=?, object_height=? WHERE object_id=? AND object_owner_id=?"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->updateObjectDimension:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 127
    const-string v1, "UPDATE object_images SET object_image=? WHERE object_number=(SELECT object_number FROM objects WHERE object_id=? AND object_owner_id=?)"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->updateObjectImage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 128
    const-string v1, "DELETE FROM object_images WHERE object_number=(SELECT object_number FROM objects WHERE object_id=? AND object_owner_id=?)"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->removeObjectImage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 129
    const-string v1, "SELECT count(object_number) FROM objects WHERE object_id=? AND object_owner_id=?"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->getObjectCount:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 130
    const-string v1, "SELECT object_type, object_id, object_owner_id, object_page_id, object_x, object_y, object_width, object_height, object_image FROM objects LEFT OUTER JOIN object_images ON objects.object_number=object_images.object_number WHERE object_id=? AND object_owner_id=?"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->getObjectInfo:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 131
    const-string v1, "SELECT object_type, object_id, object_owner_id FROM objects"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->listAllObjects:Lcom/metamoji/sqldb/SqlPreparedStatement;

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->ready:Z
    :try_end_0
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 134
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "CT0014"

    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeObjects(Ljava/util/List;Lcom/metamoji/df/model/IModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/df/model/IModel;",
            ")V"
        }
    .end annotation

    .line 276
    iget-object p2, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    monitor-enter p2

    .line 277
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->readyDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 281
    invoke-static {v0}, Lcom/metamoji/ctold/CtTagUtil;->toObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-static {v0}, Lcom/metamoji/ctold/CtTagUtil;->toOwnerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->removeObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    invoke-static {v0}, Lcom/metamoji/ctold/CtUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I
    :try_end_1
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 288
    :cond_0
    :try_start_2
    monitor-exit p2

    return-void

    :catch_0
    move-exception p1

    .line 286
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "CT0018"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_0
    move-exception p1

    .line 288
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public removeObjectsInPage(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 249
    iget-object p2, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    monitor-enter p2

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->readyDatabase()V

    if-nez p1, :cond_0

    .line 253
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 255
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->removeObjectsForPage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I
    :try_end_1
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    :try_start_2
    monitor-exit p2

    return-void

    :catch_0
    move-exception p1

    .line 257
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "CT0016"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_0
    move-exception p1

    .line 259
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public removeObjectsInUnit(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 8

    .line 264
    iget-object p2, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    monitor-enter p2

    .line 265
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->readyDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->removeObjectsForUnit:Lcom/metamoji/sqldb/SqlPreparedStatement;

    sget-object v1, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNIT:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v1}, Lcom/metamoji/ctold/object/CtObjectType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v1, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_ELEM:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v1}, Lcom/metamoji/ctold/object/CtObjectType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v1, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_GROUP:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v1}, Lcom/metamoji/ctold/object/CtObjectType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, p1

    move-object v7, p1

    move-object v3, p1

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I
    :try_end_1
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    :try_start_2
    monitor-exit p2

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 269
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "CT0017"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 271
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setObject(Lcom/metamoji/ctold/object/CtObjectReference;)V
    .locals 5

    .line 231
    iget-object v0, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    monitor-enter v0

    .line 232
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->readyDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :try_start_1
    invoke-interface {p1}, Lcom/metamoji/ctold/object/CtObjectReference;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v1

    .line 235
    invoke-interface {p1}, Lcom/metamoji/ctold/object/CtObjectReference;->getObjectId()Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-interface {p1}, Lcom/metamoji/ctold/object/CtObjectReference;->getOwnerId()Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-interface {p1}, Lcom/metamoji/ctold/object/CtObjectReference;->getPageId()Ljava/lang/String;

    move-result-object p1

    .line 238
    iget-object v4, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->addObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    invoke-virtual {v1}, Lcom/metamoji/ctold/object/CtObjectType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Lcom/metamoji/ctold/CtUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I

    .line 239
    iget-object p1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlModel;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlDatabase;->getLastInsertRowId()J

    move-result-wide v1

    .line 240
    iget-object p1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->addObjectImage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I
    :try_end_1
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 242
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "CT0015"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 244
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method unreadyDatabase()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->addObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_0

    .line 141
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->addObjectImage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_1

    .line 144
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->listObjectsForPage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_2

    .line 147
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 149
    :cond_2
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->removeObjectsForPage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_3

    .line 150
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 152
    :cond_3
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->listObjectsForUnit:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_4

    .line 153
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 155
    :cond_4
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->removeObjectsForUnit:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_5

    .line 156
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 158
    :cond_5
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->removeObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_6

    .line 159
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 161
    :cond_6
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->updateObjectDimension:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_7

    .line 162
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 164
    :cond_7
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->updateObjectImage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_8

    .line 165
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 167
    :cond_8
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->removeObjectImage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_9

    .line 168
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 170
    :cond_9
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->getObjectCount:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_a

    .line 171
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 173
    :cond_a
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->getObjectInfo:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_b

    .line 174
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 176
    :cond_b
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->listAllObjects:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_c

    .line 177
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V
    :try_end_0
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_c
    :goto_0
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->addObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 183
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->addObjectImage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 184
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->listObjectsForPage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 185
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->removeObjectsForPage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 186
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->listObjectsForUnit:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 187
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->removeObjectsForUnit:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 188
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->removeObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 189
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->updateObjectDimension:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 190
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->updateObjectImage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 191
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->removeObjectImage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 192
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->getObjectCount:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 193
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->getObjectInfo:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 194
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->listAllObjects:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 195
    iput-boolean v0, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->ready:Z

    return-void

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 180
    :try_start_1
    invoke-virtual {v2}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    :goto_1
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->addObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 183
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->addObjectImage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 184
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->listObjectsForPage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 185
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->removeObjectsForPage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 186
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->listObjectsForUnit:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 187
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->removeObjectsForUnit:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 188
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->removeObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 189
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->updateObjectDimension:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 190
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->updateObjectImage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 191
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->removeObjectImage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 192
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->getObjectCount:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 193
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->getObjectInfo:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 194
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->listAllObjects:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 195
    iput-boolean v0, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->ready:Z

    .line 196
    throw v2
.end method

.method public updateObject(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    monitor-enter v0

    .line 309
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->readyDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :try_start_1
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toOwnerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->updateObjectImage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    invoke-virtual {p2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p2

    invoke-static {p1}, Lcom/metamoji/ctold/CtUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I

    goto :goto_0

    .line 317
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->removeObjectImage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    invoke-static {p1}, Lcom/metamoji/ctold/CtUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I
    :try_end_1
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    :goto_0
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 320
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string v1, "CT0020"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v1, v2, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 322
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public updateObject(Ljava/lang/String;Lcom/metamoji/cm/RectEx;)V
    .locals 8

    .line 293
    iget-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    monitor-enter v1

    .line 294
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->readyDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :try_start_1
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 298
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toOwnerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 299
    iget-object v0, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->updateObjectDimension:Lcom/metamoji/sqldb/SqlPreparedStatement;

    iget v2, p2, Lcom/metamoji/cm/RectEx;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p2, Lcom/metamoji/cm/RectEx;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, p2, Lcom/metamoji/cm/RectEx;->width:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget p2, p2, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p1}, Lcom/metamoji/ctold/CtUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I
    :try_end_1
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 301
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string v0, "CT0019"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v0, v2, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 303
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public updateObject(Ljava/lang/String;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/Blob;)V
    .locals 8

    .line 327
    iget-object v1, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    monitor-enter v1

    .line 328
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->readyDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :try_start_1
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 332
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toOwnerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 333
    iget-object v0, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->updateObjectDimension:Lcom/metamoji/sqldb/SqlPreparedStatement;

    iget v2, p2, Lcom/metamoji/cm/RectEx;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p2, Lcom/metamoji/cm/RectEx;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, p2, Lcom/metamoji/cm/RectEx;->width:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget p2, p2, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p1}, Lcom/metamoji/ctold/CtUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I

    if-eqz p3, :cond_0

    .line 335
    iget-object p2, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->updateObjectImage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    invoke-virtual {p3}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p3

    invoke-static {p1}, Lcom/metamoji/ctold/CtUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p3, v6, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I

    goto :goto_0

    .line 337
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ctold/database/CtObjectDatabaseImpl;->removeObjectImage:Lcom/metamoji/sqldb/SqlPreparedStatement;

    invoke-static {p1}, Lcom/metamoji/ctold/CtUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v6, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I
    :try_end_1
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 340
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string p3, "CT0021"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 342
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
