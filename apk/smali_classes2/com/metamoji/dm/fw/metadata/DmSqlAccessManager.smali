.class public Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;
.super Lcom/metamoji/dm/fw/metadata/DmSqlDriver;
.source "DmSqlAccessManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;",
        ">",
        "Lcom/metamoji/dm/fw/metadata/DmSqlDriver;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field _dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _queryPredicate:Lcom/j256/ormlite/stmt/Where;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/Where<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _tableName:Ljava/lang/String;

.field private _type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    const-string v0, "DmSqlDriver"

    sput-object v0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Lcom/metamoji/dm/fw/DmDatabaseHelper;[Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dm/fw/DmDatabaseHelper;",
            "[TT;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;-><init>(Lcom/metamoji/dm/fw/DmDatabaseHelper;)V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    .line 41
    iput-object p2, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_type:Ljava/lang/Class;

    .line 44
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/metamoji/dm/fw/DmDatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_dao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 48
    iput-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_dao:Lcom/j256/ormlite/dao/Dao;

    .line 49
    const-string p2, "Unable to get Dao"

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 55
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object p2, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_type:Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/j256/ormlite/table/TableUtils;->createTableIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 59
    :catch_1
    iget-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_type:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Unable to create table : %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :goto_1
    iget-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_type:Ljava/lang/Class;

    const-class p2, Lcom/j256/ormlite/table/DatabaseTable;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/j256/ormlite/table/DatabaseTable;

    .line 64
    invoke-interface {p1}, Lcom/j256/ormlite/table/DatabaseTable;->tableName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_tableName:Ljava/lang/String;

    return-void
.end method

.method private delete(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_dbHelper:Lcom/metamoji/dm/fw/DmDatabaseHelper;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 102
    :catch_0
    const-string p1, "Unable to delete record"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 103
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 105
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private insert(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_dbHelper:Lcom/metamoji/dm/fw/DmDatabaseHelper;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 118
    :catch_0
    const-string p1, "Unable to create record"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 119
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 121
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private update(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_dbHelper:Lcom/metamoji/dm/fw/DmDatabaseHelper;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 86
    :catch_0
    const-string p1, "Unable to update record"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 87
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 89
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public countForFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)I
    .locals 0

    .line 227
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 230
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method public deleteObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 266
    const-string p1, "error: object for deleteObject is null"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return v0

    .line 269
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->getEntityId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 271
    const-string p1, "error: entityId for deleteObject is null"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return v0

    .line 276
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->delete(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)I

    move-result p1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_2

    return v0

    :cond_2
    if-ne p1, v1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)Ljava/util/ArrayList;
    .locals 9
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

    .line 128
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_dbHelper:Lcom/metamoji/dm/fw/DmDatabaseHelper;

    monitor-enter v0

    .line 132
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->predicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {v1}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getBindings()Ljava/util/HashMap;

    move-result-object v1

    .line 137
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->predicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getPredicate()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    if-eqz v1, :cond_0

    .line 141
    :try_start_1
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 142
    :cond_0
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-object v3, v2

    goto :goto_0

    :cond_1
    move-object v1, v2

    move-object v3, v1

    .line 149
    :cond_2
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    if-eqz v3, :cond_3

    .line 151
    invoke-virtual {v4, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->setWhere(Lcom/j256/ormlite/stmt/Where;)V

    .line 154
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->sortDescriptors()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 157
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;

    .line 158
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;->itemForComparing()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;->isAscending()Z

    move-result v5

    invoke-virtual {v4, v6, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    goto :goto_1

    .line 162
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->fetchLimit()I

    move-result v3

    int-to-long v5, v3

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_5

    .line 164
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 167
    :cond_5
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->fetchOffset()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v5, p1

    cmp-long p1, v5, v7

    if-lez p1, :cond_6

    .line 171
    :try_start_3
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->offset(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 175
    :catch_1
    :try_start_4
    const-string p1, "Unable to set fetch offset"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 176
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v2

    .line 183
    :cond_6
    :goto_2
    :try_start_5
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object p1
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_7

    .line 199
    :try_start_6
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/j256/ormlite/stmt/SelectArg;

    .line 200
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/j256/ormlite/stmt/SelectArg;->setValue(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 207
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object p1
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 219
    :try_start_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 216
    :catch_2
    const-string p1, "Unexpected failure in executing query"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 217
    monitor-exit v0

    return-object v2

    .line 211
    :catch_3
    const-string p1, "Unable to execute query"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 212
    monitor-exit v0

    return-object v2

    .line 192
    :catch_4
    const-string p1, "Unexpected failure in preparing query"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 193
    monitor-exit v0

    return-object v2

    .line 187
    :catch_5
    const-string p1, "Unable to prepare query"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 188
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 220
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method

.method public getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 332
    new-instance v1, Lcom/metamoji/dm/fw/metadata/DmPredicate;

    invoke-direct {v1, v0}, Lcom/metamoji/dm/fw/metadata/DmPredicate;-><init>(Lcom/j256/ormlite/stmt/Where;)V

    return-object v1
.end method

.method public getQueryPredicate()Lcom/j256/ormlite/stmt/Where;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/Where<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_queryPredicate:Lcom/j256/ormlite/stmt/Where;

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_queryPredicate:Lcom/j256/ormlite/stmt/Where;

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_queryPredicate:Lcom/j256/ormlite/stmt/Where;

    return-object v0
.end method

.method public objectWithId(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectId;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;
    .locals 6

    .line 302
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->_dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 304
    new-instance v1, Lcom/metamoji/dm/fw/metadata/DmPredicate;

    invoke-direct {v1, v0}, Lcom/metamoji/dm/fw/metadata/DmPredicate;-><init>(Lcom/j256/ormlite/stmt/Where;)V

    .line 305
    invoke-virtual {v1}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getBindings()Ljava/util/HashMap;

    move-result-object v2

    .line 306
    new-instance v3, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v3}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    const/4 v4, 0x0

    .line 309
    :try_start_0
    const-string v5, "entityId"

    invoke-virtual {v0, v5, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    invoke-virtual {p2}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectId;->id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-virtual {p1, v1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->setPredicate(Lcom/metamoji/dm/fw/metadata/DmPredicate;)V

    .line 318
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v4

    .line 321
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_1

    return-object v4

    :cond_1
    const/4 p2, 0x0

    .line 323
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    return-object p1

    .line 313
    :catch_0
    const-string p1, "Unable to add predicate to query"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-object v4
.end method

.method public putObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 239
    const-string p1, "error: object for putObject is null"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return v0

    .line 242
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->getEntityId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 244
    const-string p1, "error: entityId for putObject is null"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return v0

    .line 249
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->update(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 253
    invoke-direct {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->insert(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)I

    move-result v1

    :cond_2
    if-ne v1, v2, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public save()Z
    .locals 1

    .line 294
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;->commit()V

    const/4 v0, 0x1

    return v0
.end method
