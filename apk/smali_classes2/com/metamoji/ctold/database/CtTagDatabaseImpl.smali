.class public Lcom/metamoji/ctold/database/CtTagDatabaseImpl;
.super Ljava/lang/Object;
.source "CtTagDatabaseImpl.java"

# interfaces
.implements Lcom/metamoji/ctold/database/CtTagDatabase;
.implements Lcom/metamoji/sqldb/SqlModelDelegate;


# static fields
.field private static final SQL_ADD_PROP_FOR_TAG:Ljava/lang/String; = "INSERT INTO tag_properties (tag_number, prop_name, prop_val, prop_type) VALUES (?, ?, ?, ?)"

.field private static final SQL_ADD_TAG_FOR_OBJECT:Ljava/lang/String; = "INSERT INTO tag_objects (tag_id, object_number) VALUES (?, ?)"

.field private static final SQL_CONTAINS_TAG:Ljava/lang/String; = "SELECT COUNT(objects.object_number) FROM objects INNER JOIN tag_objects ON objects.object_number=tag_objects.object_number WHERE ((object_type=? AND object_id=?) OR (object_type=? AND object_owner_id=?) OR (object_type=? AND object_owner_id=?))"

.field private static final SQL_CREATE_TABLE_TAG_OBJECTS:Ljava/lang/String; = "CREATE TABLE tag_objects (tag_number INTEGER PRIMARY KEY AUTOINCREMENT, tag_id TEXT NOT NULL, object_number INTEGER NOT NULL, CONSTRAINT uk_tag_object UNIQUE (tag_id, object_number), CONSTRAINT fk_object FOREIGN KEY (object_number) REFERENCES objects (object_number) ON DELETE CASCADE)"

.field private static final SQL_CREATE_TABLE_TAG_PROPERTIES:Ljava/lang/String; = "CREATE TABLE tag_properties (tag_number INTEGER NOT NULL, prop_name TEXT NOT NULL, prop_val NOT NULL, prop_type INTEGER(1) NOT NULL, CONSTRAINT uk_tag_number_name UNIQUE (tag_number, prop_name), CONSTRAINT fk_tag FOREIGN KEY (tag_number) REFERENCES tag_objects (tag_number) ON DELETE CASCADE)"

.field private static final SQL_GET_OBJECT_NUMBER_FOR_OBJECT:Ljava/lang/String; = "SELECT object_number FROM objects WHERE object_id=? AND object_owner_id=?"

.field private static final SQL_HAS_SYSTEM_TAG:Ljava/lang/String; = "SELECT COUNT(objects.object_number) FROM objects INNER JOIN tag_objects ON objects.object_number=tag_objects.object_number WHERE objects.object_type=? AND objects.object_id=? AND objects.object_owner_id=? AND tag_objects.tag_id=?"

.field private static final SQL_HAS_SYSTEM_TAG_IN_UNIT:Ljava/lang/String; = "SELECT COUNT(objects.object_number) FROM objects INNER JOIN tag_objects ON objects.object_number=tag_objects.object_number WHERE ((object_type=? AND object_id=?) OR (object_type=? AND object_owner_id=?) OR (object_type=? AND object_owner_id=?)) AND tag_objects.tag_id=?"

.field private static final SQL_LIST_TAGS_FOR_OBJECT:Ljava/lang/String; = "SELECT tag_id FROM tag_objects INNER JOIN objects ON tag_objects.object_number=objects.object_number WHERE objects.object_id=? AND objects.object_owner_id=?"

.field private static final SQL_LIST_TAG_INSTANCES_FOR_OBJECT:Ljava/lang/String; = "SELECT tag_id, prop_name, prop_val, prop_type FROM tag_objects INNER JOIN objects ON tag_objects.object_number=objects.object_number LEFT OUTER JOIN tag_properties ON tag_objects.tag_number=tag_properties.tag_number WHERE objects.object_id=? AND objects.object_owner_id=?"

.field private static final SQL_LIST_TAG_INSTANCES_FOR_SYSTEM_ID:Ljava/lang/String; = "SELECT object_type, object_id, object_owner_id, object_page_id, object_x, object_y, object_width, object_height, tag_objects.tag_number, tag_id, prop_name, prop_val, prop_type FROM tag_objects INNER JOIN objects ON tag_objects.object_number=objects.object_number LEFT OUTER JOIN tag_properties ON tag_objects.tag_number=tag_properties.tag_number WHERE tag_id=?"

.field private static final SQL_LIST_USED_TAGS:Ljava/lang/String; = "SELECT DISTINCT tag_id FROM tag_objects"

.field public static final SQL_REMOVE_ALL_TAG:Ljava/lang/String; = "DELETE FROM tag_objects WHERE tag_id=?"

.field public static final SQL_REMOVE_OBJECT_WITH_NO_TAG:Ljava/lang/String; = "DELETE FROM objects WHERE object_number NOT IN (SELECT object_number FROM tag_objects)"

.field private static final SQL_REMOVE_TAGS_FOR_OBJECT:Ljava/lang/String; = "DELETE FROM tag_objects WHERE object_number=?"

.field private static final SQL_REMOVE_TAG_FOR_OBJECT:Ljava/lang/String; = "DELETE FROM tag_objects WHERE object_number=? AND tag_id=?"

.field private static final SQL_TABLE_NAME_TAG_OBJECTS:Ljava/lang/String; = "tag_objects"

.field private static final SQL_TABLE_NAME_TAG_PROPERTIES:Ljava/lang/String; = "tag_properties"


# instance fields
.field private addPropForTag:Lcom/metamoji/sqldb/SqlPreparedStatement;

.field private addTagForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

.field private containsTag:Lcom/metamoji/sqldb/SqlPreparedStatement;

.field private databaseModel:Lcom/metamoji/sqldb/SqlModel;

.field private getObjectNumberForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

.field private hasSystemTag:Lcom/metamoji/sqldb/SqlPreparedStatement;

.field private hasSystemTagInUnit:Lcom/metamoji/sqldb/SqlPreparedStatement;

.field private listTagInstancesForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

.field private listTagInstancesForSystemTagId:Lcom/metamoji/sqldb/SqlPreparedStatement;

.field private listTagsForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

.field private listUsedTags:Lcom/metamoji/sqldb/SqlPreparedStatement;

.field private objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

.field private ready:Z

.field private removeTagForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

.field private removeTagsForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;


# direct methods
.method constructor <init>(Lcom/metamoji/sqldb/SqlModel;Lcom/metamoji/ctold/database/CtObjectDatabase;)V
    .locals 3

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->ready:Z

    .line 117
    iput-object p1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    .line 118
    iput-object p2, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    const/4 p2, 0x1

    .line 119
    new-array v1, p2, [Ljava/lang/String;

    const-string v2, "CREATE TABLE tag_objects (tag_number INTEGER PRIMARY KEY AUTOINCREMENT, tag_id TEXT NOT NULL, object_number INTEGER NOT NULL, CONSTRAINT uk_tag_object UNIQUE (tag_id, object_number), CONSTRAINT fk_object FOREIGN KEY (object_number) REFERENCES objects (object_number) ON DELETE CASCADE)"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/metamoji/ctold/CtUtils;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "tag_objects"

    invoke-interface {p1, v2, v1}, Lcom/metamoji/sqldb/SqlModel;->registTableName(Ljava/lang/String;Ljava/util/List;)V

    .line 120
    iget-object p1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    new-array p2, p2, [Ljava/lang/String;

    const-string v1, "CREATE TABLE tag_properties (tag_number INTEGER NOT NULL, prop_name TEXT NOT NULL, prop_val NOT NULL, prop_type INTEGER(1) NOT NULL, CONSTRAINT uk_tag_number_name UNIQUE (tag_number, prop_name), CONSTRAINT fk_tag FOREIGN KEY (tag_number) REFERENCES tag_objects (tag_number) ON DELETE CASCADE)"

    aput-object v1, p2, v0

    invoke-static {p2}, Lcom/metamoji/ctold/CtUtils;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string v0, "tag_properties"

    invoke-interface {p1, v0, p2}, Lcom/metamoji/sqldb/SqlModel;->registTableName(Ljava/lang/String;Ljava/util/List;)V

    .line 121
    iget-object p1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {p1, p0}, Lcom/metamoji/sqldb/SqlModel;->addDelegate(Lcom/metamoji/sqldb/SqlModelDelegate;)V

    return-void
.end method


# virtual methods
.method arrangePropertyConditions(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/search/CtPropertyCondition;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/search/CtPropertyCondition;",
            ">;>;"
        }
    .end annotation

    .line 785
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 787
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 788
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ctold/search/CtPropertyCondition;

    .line 789
    invoke-virtual {v2}, Lcom/metamoji/ctold/search/CtPropertyCondition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    .line 791
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 792
    invoke-virtual {v2}, Lcom/metamoji/ctold/search/CtPropertyCondition;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 796
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 797
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method arrangedPropertyConditionsMap(Ljava/util/List;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/search/CtPropertyCondition;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 881
    const-string v2, "sql"

    const-string v3, "params"

    invoke-static {v2, v0, v3, v1}, Lcom/metamoji/ctold/CtUtils;->toMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 883
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v5, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/ctold/search/CtPropertyCondition;

    if-eqz v5, :cond_0

    .line 885
    const-string v5, "(tag_properties.prop_name=? AND tag_properties.prop_type=?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    invoke-virtual {v6}, Lcom/metamoji/ctold/search/CtPropertyCondition;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/metamoji/ctold/search/CtPropertyCondition;->getType()Lcom/metamoji/ctold/property/CtPropertyType;

    move-result-object v7

    filled-new-array {v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/ctold/CtUtils;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v5, 0x0

    .line 889
    :cond_0
    invoke-virtual {p0, v6}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->propertyConditionMap(Lcom/metamoji/ctold/search/CtPropertyCondition;)Ljava/util/Map;

    move-result-object v6

    .line 890
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, " AND %s"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 893
    :cond_1
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v4
.end method

.method public close()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    if-eqz v0, :cond_0

    .line 223
    invoke-interface {v0, p0}, Lcom/metamoji/sqldb/SqlModel;->removeDelegate(Lcom/metamoji/sqldb/SqlModelDelegate;)V

    .line 224
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->unreadyDatabase()V

    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    :cond_0
    return-void
.end method

.method compareProperty(Lcom/metamoji/ctold/property/CtProperty;Lcom/metamoji/ctold/property/CtProperty;)I
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    const/4 p1, 0x1

    return p1

    .line 737
    :cond_2
    invoke-virtual {p1, p2}, Lcom/metamoji/ctold/property/CtProperty;->compareTo(Lcom/metamoji/ctold/property/CtProperty;)I

    move-result p1

    return p1
.end method

.method compareTagInstance(Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/ctold/search/CtSortCondition;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 717
    :cond_0
    invoke-virtual {p3}, Lcom/metamoji/ctold/search/CtSortCondition;->getSortKeys()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Lcom/metamoji/ctold/search/CtSortCondition;->getSortKeys()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ctold/search/CtSortKey;

    .line 718
    invoke-virtual {v1}, Lcom/metamoji/ctold/search/CtSortKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/metamoji/ctold/tag/CtTagInstance;->getProperty(Ljava/lang/String;)Lcom/metamoji/ctold/property/CtProperty;

    move-result-object v2

    .line 719
    invoke-virtual {v1}, Lcom/metamoji/ctold/search/CtSortKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/metamoji/ctold/tag/CtTagInstance;->getProperty(Ljava/lang/String;)Lcom/metamoji/ctold/property/CtProperty;

    move-result-object v3

    .line 720
    invoke-virtual {p0, v2, v3}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->compareProperty(Lcom/metamoji/ctold/property/CtProperty;Lcom/metamoji/ctold/property/CtProperty;)I

    move-result v2

    .line 721
    invoke-virtual {v1}, Lcom/metamoji/ctold/search/CtSortKey;->isAscending()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_0
    mul-int/2addr v2, v1

    if-eqz v2, :cond_1

    return v2

    :cond_3
    return v0
.end method

.method public databaseDidClose()V
    .locals 0

    return-void
.end method

.method public databaseWillClose(Lcom/metamoji/sqldb/SqlDatabase;)V
    .locals 0

    .line 213
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->unreadyDatabase()V

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->close()V

    .line 208
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method getObjectNumber(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 743
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 744
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toOwnerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 745
    iget-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->getObjectNumberForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    invoke-static {p1}, Lcom/metamoji/ctold/CtUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeQuery([Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object p1

    .line 747
    :try_start_0
    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 748
    invoke-interface {p1, v0}, Lcom/metamoji/sqldb/SqlResultSet;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 753
    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    :cond_1
    return-wide v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    .line 755
    :cond_2
    throw v0
.end method

.method public getSystemTagInstances(Lcom/metamoji/ctold/tag/CtSystemTagId;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/tag/CtSystemTagId;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation

    .line 426
    iget-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    monitor-enter v1

    .line 427
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->readyDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 429
    :try_start_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
    :try_end_1
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    .line 432
    :try_start_2
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->getTagId(Lcom/metamoji/ctold/tag/CtSystemTagId;)Ljava/lang/String;

    move-result-object p1

    .line 433
    iget-object v3, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->listTagInstancesForSystemTagId:Lcom/metamoji/sqldb/SqlPreparedStatement;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeQuery([Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object v2

    .line 434
    :cond_0
    :goto_0
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x9

    .line 436
    invoke-interface {v2, v3}, Lcom/metamoji/sqldb/SqlResultSet;->getInt(I)I

    move-result v3

    .line 437
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;

    if-nez v4, :cond_1

    const/4 v4, 0x1

    .line 439
    invoke-interface {v2, v4}, Lcom/metamoji/sqldb/SqlResultSet;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/metamoji/ctold/object/CtObjectType;->enumOf(I)Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v6

    const/4 v4, 0x2

    .line 440
    invoke-interface {v2, v4}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x3

    .line 441
    invoke-interface {v2, v4}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/ctold/CtUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x4

    .line 442
    invoke-interface {v2, v4}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 443
    new-instance v10, Lcom/metamoji/cm/RectEx;

    const/4 v4, 0x5

    .line 444
    invoke-interface {v2, v4}, Lcom/metamoji/sqldb/SqlResultSet;->getDouble(I)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v5, 0x6

    .line 445
    invoke-interface {v2, v5}, Lcom/metamoji/sqldb/SqlResultSet;->getDouble(I)D

    move-result-wide v11

    double-to-float v5, v11

    const/4 v11, 0x7

    .line 446
    invoke-interface {v2, v11}, Lcom/metamoji/sqldb/SqlResultSet;->getDouble(I)D

    move-result-wide v11

    double-to-float v11, v11

    const/16 v12, 0x8

    .line 447
    invoke-interface {v2, v12}, Lcom/metamoji/sqldb/SqlResultSet;->getDouble(I)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-direct {v10, v4, v5, v11, v12}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    .line 448
    iget-object v4, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    invoke-interface {v4}, Lcom/metamoji/ctold/database/CtObjectDatabase;->getDocumentId()Ljava/lang/String;

    move-result-object v12

    .line 449
    invoke-static {}, Lcom/metamoji/ctold/object/CtObjectReferenceFactory;->instance()Lcom/metamoji/ctold/object/CtObjectReferenceFactory;

    move-result-object v5

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/metamoji/ctold/object/CtObjectReferenceFactory;->create(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/Blob;Ljava/lang/String;)Lcom/metamoji/ctold/object/CtObjectReference;

    move-result-object v4

    .line 450
    new-instance v5, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;

    invoke-direct {v5}, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;-><init>()V

    .line 451
    invoke-virtual {v5, p1}, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->tagId(Ljava/lang/String;)Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->objectReference(Lcom/metamoji/ctold/object/CtObjectReference;)Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;

    .line 452
    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v4, v5

    :cond_1
    const/16 v3, 0xb

    .line 455
    invoke-interface {v2, v3}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/16 v5, 0xd

    .line 457
    invoke-interface {v2, v5}, Lcom/metamoji/sqldb/SqlResultSet;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/metamoji/ctold/property/CtPropertyType;->enumOf(I)Lcom/metamoji/ctold/property/CtPropertyType;

    move-result-object v5

    const/16 v6, 0xc

    .line 458
    invoke-virtual {p0, v2, v6, v5}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->propertyValueOf(Lcom/metamoji/sqldb/SqlResultSet;ILcom/metamoji/ctold/property/CtPropertyType;)Ljava/lang/Object;

    move-result-object v6

    .line 459
    new-instance v7, Lcom/metamoji/ctold/property/CtProperty;

    invoke-direct {v7, v3, v5, v6}, Lcom/metamoji/ctold/property/CtProperty;-><init>(Ljava/lang/String;Lcom/metamoji/ctold/property/CtPropertyType;Ljava/lang/Object;)V

    .line 460
    invoke-virtual {v4, v7}, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->property(Lcom/metamoji/ctold/property/CtProperty;)Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;

    goto/16 :goto_0

    .line 463
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 464
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    .line 465
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;

    invoke-virtual {v5}, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->getTagInstance()Lcom/metamoji/ctold/tag/CtTagInstance;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 470
    :try_start_3
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->close()V
    :try_end_3
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    if-eqz v2, :cond_5

    :try_start_5
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    .line 472
    :cond_5
    throw p1
    :try_end_5
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 474
    :try_start_6
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v2, "CT0038"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getErrorCode()I

    move-result v4

    invoke-direct {v0, v2, v3, v4, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 476
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public getTagIds(Ljava/lang/String;)Ljava/util/Set;
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

    .line 308
    iget-object v0, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    monitor-enter v0

    .line 309
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->readyDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 311
    :try_start_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
    :try_end_1
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    .line 314
    :try_start_2
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toOwnerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 316
    iget-object v4, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->listTagsForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    invoke-static {p1}, Lcom/metamoji/ctold/CtUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeQuery([Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object v2

    .line 317
    :goto_0
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 318
    invoke-interface {v2, p1}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 319
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 324
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
    move-exception p1

    if-eqz v2, :cond_2

    :try_start_5
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    .line 326
    :cond_2
    throw p1
    :try_end_5
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception p1

    .line 328
    :try_start_6
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "CT0031"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_1
    move-exception p1

    .line 330
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public getTagInstances(Lcom/metamoji/ctold/object/CtObjectReference;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/object/CtObjectReference;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    monitor-enter v0

    .line 382
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->readyDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 384
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    .line 387
    :try_start_2
    invoke-interface {p1}, Lcom/metamoji/ctold/object/CtObjectReference;->getObjectId()Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-interface {p1}, Lcom/metamoji/ctold/object/CtObjectReference;->getOwnerId()Ljava/lang/String;

    move-result-object v4

    .line 389
    iget-object v5, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->listTagInstancesForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    invoke-static {v4}, Lcom/metamoji/ctold/CtUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5, v3}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeQuery([Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object v2

    .line 390
    :cond_0
    :goto_0
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 392
    invoke-interface {v2, v3}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 393
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;

    if-nez v4, :cond_1

    .line 395
    new-instance v4, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;

    invoke-direct {v4}, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;-><init>()V

    .line 396
    invoke-virtual {v4, v3}, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->tagId(Ljava/lang/String;)Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->objectReference(Lcom/metamoji/ctold/object/CtObjectReference;)Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;

    .line 397
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v3, 0x2

    .line 400
    invoke-interface {v2, v3}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v5, 0x4

    .line 402
    invoke-interface {v2, v5}, Lcom/metamoji/sqldb/SqlResultSet;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/metamoji/ctold/property/CtPropertyType;->enumOf(I)Lcom/metamoji/ctold/property/CtPropertyType;

    move-result-object v5

    const/4 v6, 0x3

    .line 403
    invoke-virtual {p0, v2, v6, v5}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->propertyValueOf(Lcom/metamoji/sqldb/SqlResultSet;ILcom/metamoji/ctold/property/CtPropertyType;)Ljava/lang/Object;

    move-result-object v6

    .line 404
    new-instance v7, Lcom/metamoji/ctold/property/CtProperty;

    invoke-direct {v7, v3, v5, v6}, Lcom/metamoji/ctold/property/CtProperty;-><init>(Ljava/lang/String;Lcom/metamoji/ctold/property/CtPropertyType;Ljava/lang/Object;)V

    .line 405
    invoke-virtual {v4, v7}, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->property(Lcom/metamoji/ctold/property/CtProperty;)Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;

    goto :goto_0

    .line 408
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 409
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;

    .line 410
    invoke-virtual {v3}, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->getTagInstance()Lcom/metamoji/ctold/tag/CtTagInstance;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 415
    :try_start_3
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->close()V
    :try_end_3
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_5

    :try_start_5
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    .line 417
    :cond_5
    throw p1
    :try_end_5
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception p1

    .line 419
    :try_start_6
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "CT0037"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_1
    move-exception p1

    .line 421
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public getTagInstances(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    monitor-enter v0

    .line 336
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->readyDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 338
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    invoke-interface {v1, p1}, Lcom/metamoji/ctold/database/CtObjectDatabase;->getObjectReference(Ljava/lang/String;)Lcom/metamoji/ctold/object/CtObjectReference;

    move-result-object v1

    .line 339
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    .line 342
    :try_start_2
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 343
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toOwnerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 344
    iget-object v5, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->listTagInstancesForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    invoke-static {p1}, Lcom/metamoji/ctold/CtUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v5, p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeQuery([Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object v3

    .line 345
    :cond_0
    :goto_0
    invoke-interface {v3}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 347
    invoke-interface {v3, p1}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 348
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;

    if-nez v4, :cond_1

    .line 350
    new-instance v4, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;

    invoke-direct {v4}, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;-><init>()V

    .line 351
    invoke-virtual {v4, p1}, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->tagId(Ljava/lang/String;)Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->objectReference(Lcom/metamoji/ctold/object/CtObjectReference;)Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;

    .line 352
    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x2

    .line 355
    invoke-interface {v3, p1}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v5, 0x4

    .line 357
    invoke-interface {v3, v5}, Lcom/metamoji/sqldb/SqlResultSet;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/metamoji/ctold/property/CtPropertyType;->enumOf(I)Lcom/metamoji/ctold/property/CtPropertyType;

    move-result-object v5

    const/4 v6, 0x3

    .line 358
    invoke-virtual {p0, v3, v6, v5}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->propertyValueOf(Lcom/metamoji/sqldb/SqlResultSet;ILcom/metamoji/ctold/property/CtPropertyType;)Ljava/lang/Object;

    move-result-object v6

    .line 359
    new-instance v7, Lcom/metamoji/ctold/property/CtProperty;

    invoke-direct {v7, p1, v5, v6}, Lcom/metamoji/ctold/property/CtProperty;-><init>(Ljava/lang/String;Lcom/metamoji/ctold/property/CtPropertyType;Ljava/lang/Object;)V

    .line 360
    invoke-virtual {v4, v7}, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->property(Lcom/metamoji/ctold/property/CtProperty;)Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;

    goto :goto_0

    .line 363
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;

    .line 365
    invoke-virtual {v2}, Lcom/metamoji/ctold/tag/CtTagInstance$CtTagInstanceBuilder;->getTagInstance()Lcom/metamoji/ctold/tag/CtTagInstance;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 370
    :try_start_3
    invoke-interface {v3}, Lcom/metamoji/sqldb/SqlResultSet;->close()V
    :try_end_3
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v3, :cond_5

    :try_start_5
    invoke-interface {v3}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    .line 372
    :cond_5
    throw p1
    :try_end_5
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception p1

    .line 374
    :try_start_6
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "CT0032"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_1
    move-exception p1

    .line 376
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public getUsedTagIds()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    monitor-enter v0

    .line 284
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->readyDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 286
    :try_start_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
    :try_end_1
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    .line 289
    :try_start_2
    iget-object v3, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->listUsedTags:Lcom/metamoji/sqldb/SqlPreparedStatement;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v4}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeQuery([Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object v2

    .line 290
    :goto_0
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 291
    invoke-interface {v2, v3}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 292
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 297
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

    .line 299
    :cond_2
    throw v1
    :try_end_5
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v1

    .line 301
    :try_start_6
    new-instance v2, Lcom/metamoji/cm/CmException;

    const-string v3, "CT0030"

    invoke-virtual {v1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_1
    move-exception v1

    .line 303
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public hasSystemTag(Lcom/metamoji/ctold/tag/CtSystemTagId;Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 589
    iget-object v0, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    monitor-enter v0

    .line 590
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->readyDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 594
    :try_start_1
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->getTagId(Lcom/metamoji/ctold/tag/CtSystemTagId;)Ljava/lang/String;

    move-result-object p1

    .line 595
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->hasSystemTag:Lcom/metamoji/sqldb/SqlPreparedStatement;

    invoke-virtual {p2}, Lcom/metamoji/ctold/object/CtObjectType;->getValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Lcom/metamoji/ctold/CtUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    filled-new-array {p2, p3, p4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeQuery([Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object v1

    .line 596
    invoke-interface {v1}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 597
    invoke-interface {v1, p1}, Lcom/metamoji/sqldb/SqlResultSet;->getInt(I)I

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez p3, :cond_0

    move p2, p1

    :cond_0
    if-eqz v1, :cond_2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 603
    :goto_0
    :try_start_2
    invoke-interface {v1}, Lcom/metamoji/sqldb/SqlResultSet;->close()V
    :try_end_2
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return p2

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_3

    :try_start_4
    invoke-interface {v1}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    .line 605
    :cond_3
    throw p1
    :try_end_4
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception p1

    .line 607
    :try_start_5
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string p3, "CT0034"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_1
    move-exception p1

    .line 609
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public hasSystemTag(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/lang/String;)Z
    .locals 10

    .line 614
    iget-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    monitor-enter v1

    .line 615
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->readyDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 619
    :try_start_1
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->getTagId(Lcom/metamoji/ctold/tag/CtSystemTagId;)Ljava/lang/String;

    move-result-object v9

    .line 620
    iget-object p1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->hasSystemTagInUnit:Lcom/metamoji/sqldb/SqlPreparedStatement;

    sget-object v0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNIT:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v0}, Lcom/metamoji/ctold/object/CtObjectType;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_ELEM:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v0}, Lcom/metamoji/ctold/object/CtObjectType;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Lcom/metamoji/ctold/CtUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_GROUP:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v0}, Lcom/metamoji/ctold/object/CtObjectType;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Lcom/metamoji/ctold/CtUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, p2

    filled-new-array/range {v3 .. v9}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeQuery([Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object v2

    .line 621
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 622
    invoke-interface {v2, p1}, Lcom/metamoji/sqldb/SqlResultSet;->getInt(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_0

    move p2, p1

    :cond_0
    if-eqz v2, :cond_2

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 628
    :goto_0
    :try_start_2
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->close()V
    :try_end_2
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return p2

    :catchall_0
    move-exception v0

    move-object p1, v0

    if-eqz v2, :cond_3

    :try_start_4
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    .line 630
    :cond_3
    throw p1
    :try_end_4
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 632
    :try_start_5
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string v0, "CT0035"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v0, v2, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 634
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public isContainsTagIn(Ljava/lang/String;)Z
    .locals 10

    .line 639
    iget-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    monitor-enter v1

    .line 640
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->readyDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 644
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->containsTag:Lcom/metamoji/sqldb/SqlPreparedStatement;

    sget-object v3, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNIT:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v3}, Lcom/metamoji/ctold/object/CtObjectType;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v3, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_ELEM:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v3}, Lcom/metamoji/ctold/object/CtObjectType;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1}, Lcom/metamoji/ctold/CtUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v3, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_GROUP:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v3}, Lcom/metamoji/ctold/object/CtObjectType;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p1}, Lcom/metamoji/ctold/CtUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v5, p1

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeQuery([Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object v2

    .line 645
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 646
    invoke-interface {v2, p1}, Lcom/metamoji/sqldb/SqlResultSet;->getInt(I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v3, :cond_0

    move v0, p1

    :cond_0
    if-eqz v2, :cond_2

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 652
    :goto_0
    :try_start_2
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->close()V
    :try_end_2
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    if-eqz v2, :cond_3

    :try_start_4
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    .line 654
    :cond_3
    throw p1
    :try_end_4
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 656
    :try_start_5
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v2, "CT0036"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 658
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method propertyConditionMap(Lcom/metamoji/ctold/search/CtPropertyCondition;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/search/CtPropertyCondition;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 809
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 810
    const-string v2, "sql"

    const-string v3, "params"

    invoke-static {v2, v0, v3, v1}, Lcom/metamoji/ctold/CtUtils;->toMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 811
    sget-object v3, Lcom/metamoji/ctold/database/CtTagDatabaseImpl$3;->$SwitchMap$com$metamoji$ctold$search$CtOperator:[I

    invoke-virtual {p1}, Lcom/metamoji/ctold/search/CtPropertyCondition;->getOperator()Lcom/metamoji/ctold/search/CtOperator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/ctold/search/CtOperator;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, "%%%s%%"

    const-string v5, "tag_properties.prop_val LIKE ? ESCAPE \'$\'"

    const-string v6, "$_"

    const-string v7, "_"

    const-string v8, "$%"

    const-string v9, "%"

    const-string v10, "$$"

    const-string v11, "$"

    packed-switch v3, :pswitch_data_0

    .line 867
    const-string p1, "0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v2

    .line 861
    :pswitch_0
    const-string v3, "tag_properties.prop_val NOT LIKE ? ESCAPE \'$\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/metamoji/ctold/search/CtPropertyCondition;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 863
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 855
    :pswitch_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/metamoji/ctold/search/CtPropertyCondition;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 857
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 849
    :pswitch_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/metamoji/ctold/search/CtPropertyCondition;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "%%%s"

    invoke-static {v0, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 851
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 843
    :pswitch_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/metamoji/ctold/search/CtPropertyCondition;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "%s%%"

    invoke-static {v0, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 845
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 838
    :pswitch_4
    const-string v3, "tag_properties.prop_val<=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {p1}, Lcom/metamoji/ctold/search/CtPropertyCondition;->getResolvedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 833
    :pswitch_5
    const-string v3, "tag_properties.prop_val<?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    invoke-virtual {p1}, Lcom/metamoji/ctold/search/CtPropertyCondition;->getResolvedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 828
    :pswitch_6
    const-string v3, "tag_properties.prop_val>=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    invoke-virtual {p1}, Lcom/metamoji/ctold/search/CtPropertyCondition;->getResolvedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 823
    :pswitch_7
    const-string v3, "tag_properties.prop_val>?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual {p1}, Lcom/metamoji/ctold/search/CtPropertyCondition;->getResolvedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 818
    :pswitch_8
    const-string v3, "tag_properties.prop_val!=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    invoke-virtual {p1}, Lcom/metamoji/ctold/search/CtPropertyCondition;->getResolvedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 813
    :pswitch_9
    const-string v3, "tag_properties.prop_val=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {p1}, Lcom/metamoji/ctold/search/CtPropertyCondition;->getResolvedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method propertyConditionsMap(Ljava/util/List;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/search/CtPropertyCondition;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 903
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 904
    const-string v2, "sql"

    const-string v3, "params"

    invoke-static {v2, v0, v3, v1}, Lcom/metamoji/ctold/CtUtils;->toMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 905
    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->arrangePropertyConditions(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 906
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 907
    const-string v6, " OR "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    :cond_1
    invoke-virtual {p0, v5}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->arrangedPropertyConditionsMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    .line 910
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 912
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 913
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 914
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 917
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    return-object v4
.end method

.method propertyValueOf(Lcom/metamoji/sqldb/SqlResultSet;ILcom/metamoji/ctold/property/CtPropertyType;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 759
    sget-object v0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl$3;->$SwitchMap$com$metamoji$ctold$property$CtPropertyType:[I

    invoke-virtual {p3}, Lcom/metamoji/ctold/property/CtPropertyType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 771
    :pswitch_0
    invoke-interface {p1, p2}, Lcom/metamoji/sqldb/SqlResultSet;->getDate(I)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 769
    :pswitch_1
    invoke-interface {p1, p2}, Lcom/metamoji/sqldb/SqlResultSet;->getDate(I)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 767
    :pswitch_2
    invoke-interface {p1, p2}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 765
    :pswitch_3
    invoke-interface {p1, p2}, Lcom/metamoji/sqldb/SqlResultSet;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 763
    :pswitch_4
    invoke-interface {p1, p2}, Lcom/metamoji/sqldb/SqlResultSet;->getDouble(I)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 761
    :pswitch_5
    invoke-interface {p1, p2}, Lcom/metamoji/sqldb/SqlResultSet;->getBoolean(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method readyDatabase()V
    .locals 4

    .line 126
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->ready:Z

    if-eqz v0, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlModel;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object v0

    .line 130
    const-string v1, "SELECT object_number FROM objects WHERE object_id=? AND object_owner_id=?"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->getObjectNumberForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 131
    const-string v1, "DELETE FROM tag_objects WHERE object_number=?"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->removeTagsForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 132
    const-string v1, "INSERT INTO tag_objects (tag_id, object_number) VALUES (?, ?)"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->addTagForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 133
    const-string v1, "INSERT INTO tag_properties (tag_number, prop_name, prop_val, prop_type) VALUES (?, ?, ?, ?)"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->addPropForTag:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 134
    const-string v1, "DELETE FROM tag_objects WHERE object_number=? AND tag_id=?"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->removeTagForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 135
    const-string v1, "SELECT DISTINCT tag_id FROM tag_objects"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->listUsedTags:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 136
    const-string v1, "SELECT tag_id FROM tag_objects INNER JOIN objects ON tag_objects.object_number=objects.object_number WHERE objects.object_id=? AND objects.object_owner_id=?"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->listTagsForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 137
    const-string v1, "SELECT tag_id, prop_name, prop_val, prop_type FROM tag_objects INNER JOIN objects ON tag_objects.object_number=objects.object_number LEFT OUTER JOIN tag_properties ON tag_objects.tag_number=tag_properties.tag_number WHERE objects.object_id=? AND objects.object_owner_id=?"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->listTagInstancesForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 138
    const-string v1, "SELECT object_type, object_id, object_owner_id, object_page_id, object_x, object_y, object_width, object_height, tag_objects.tag_number, tag_id, prop_name, prop_val, prop_type FROM tag_objects INNER JOIN objects ON tag_objects.object_number=objects.object_number LEFT OUTER JOIN tag_properties ON tag_objects.tag_number=tag_properties.tag_number WHERE tag_id=?"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->listTagInstancesForSystemTagId:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 139
    const-string v1, "SELECT COUNT(objects.object_number) FROM objects INNER JOIN tag_objects ON objects.object_number=tag_objects.object_number WHERE objects.object_type=? AND objects.object_id=? AND objects.object_owner_id=? AND tag_objects.tag_id=?"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->hasSystemTag:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 140
    const-string v1, "SELECT COUNT(objects.object_number) FROM objects INNER JOIN tag_objects ON objects.object_number=tag_objects.object_number WHERE ((object_type=? AND object_id=?) OR (object_type=? AND object_owner_id=?) OR (object_type=? AND object_owner_id=?)) AND tag_objects.tag_id=?"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->hasSystemTagInUnit:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 141
    const-string v1, "SELECT COUNT(objects.object_number) FROM objects INNER JOIN tag_objects ON objects.object_number=tag_objects.object_number WHERE ((object_type=? AND object_id=?) OR (object_type=? AND object_owner_id=?) OR (object_type=? AND object_owner_id=?))"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->containsTag:Lcom/metamoji/sqldb/SqlPreparedStatement;

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->ready:Z
    :try_end_0
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 144
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "CT0027"

    invoke-virtual {v0}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeTag(Lcom/metamoji/ctold/tag/CtTagInstance;)V
    .locals 5

    .line 264
    iget-object v0, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    monitor-enter v0

    .line 265
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->readyDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :try_start_1
    invoke-virtual {p1}, Lcom/metamoji/ctold/tag/CtTagInstance;->getObjectReference()Lcom/metamoji/ctold/object/CtObjectReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/ctold/object/CtObjectReference;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-virtual {p0, v1}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->getObjectNumber(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_1
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 272
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 274
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->removeTagForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/ctold/tag/CtTagInstance;->getTagId()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I
    :try_end_3
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 278
    :try_start_4
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 276
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "CT0029"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 278
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method searchSqlMap(Lcom/metamoji/ctold/search/CtSearchCondition;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/search/CtSearchCondition;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT DISTINCT objects.object_type, objects.object_id, objects.object_owner_id FROM objects INNER JOIN tag_objects ON objects.object_number = tag_objects.object_number LEFT OUTER JOIN tag_properties ON tag_objects.tag_number = tag_properties.tag_number WHERE CASE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 974
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 975
    const-string v2, "sql"

    const-string v3, "params"

    invoke-static {v2, v0, v3, v1}, Lcom/metamoji/ctold/CtUtils;->toMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 976
    invoke-virtual {p1}, Lcom/metamoji/ctold/search/CtSearchCondition;->getTagConditions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/ctold/search/CtTagCondition;

    .line 977
    invoke-virtual {p0, v6}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->tagConditionMap(Lcom/metamoji/ctold/search/CtTagCondition;)Ljava/util/Map;

    move-result-object v6

    .line 978
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 980
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 981
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_0

    goto :goto_1

    .line 985
    :cond_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 988
    :cond_2
    const-string v2, " END"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    const-string v3, " GROUP BY objects.object_number, tag_objects.tag_number HAVING count(objects.object_number)>=CASE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    invoke-virtual {p1}, Lcom/metamoji/ctold/search/CtSearchCondition;->getTagConditions()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ctold/search/CtTagCondition;

    .line 991
    invoke-virtual {v3}, Lcom/metamoji/ctold/search/CtTagCondition;->getPropertyConditions()Ljava/util/List;

    move-result-object v5

    .line 992
    invoke-virtual {p0, v5}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->arrangePropertyConditions(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 993
    const-string v6, " WHEN tag_objects.tag_id=? THEN ?"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    invoke-virtual {v3}, Lcom/metamoji/ctold/search/CtTagCondition;->getTagId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 997
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v4
.end method

.method public searchTaggedObjects(Lcom/metamoji/ctold/search/CtSearchCondition;)Lcom/metamoji/ctold/search/CtSearchResult;
    .locals 13

    .line 481
    iget-object v0, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    monitor-enter v0

    .line 482
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->readyDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 484
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 486
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 487
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v4, 0x0

    .line 491
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->searchSqlMap(Lcom/metamoji/ctold/search/CtSearchCondition;)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_0

    .line 493
    new-instance v1, Lcom/metamoji/ctold/search/CtSearchResult;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/metamoji/ctold/search/CtSearchResult;-><init>(Ljava/util/List;Lcom/metamoji/ctold/search/CtSearchCondition;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 516
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-object v1

    .line 495
    :cond_0
    :try_start_4
    const-string v6, "sql"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 497
    const-string v7, "params"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 498
    iget-object v7, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {v7}, Lcom/metamoji/sqldb/SqlModel;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 499
    :try_start_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v6, v5}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeQuery([Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 500
    :cond_1
    :goto_0
    :try_start_6
    invoke-interface {v5}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v7, :cond_2

    .line 501
    invoke-interface {v5, v10}, Lcom/metamoji/sqldb/SqlResultSet;->getInt(I)I

    move-result v7

    invoke-static {v7}, Lcom/metamoji/ctold/object/CtObjectType;->enumOf(I)Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v7

    .line 502
    invoke-interface {v5, v9}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 503
    invoke-interface {v5, v8}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/ctold/CtUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 504
    invoke-static {v7, v9, v8}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 505
    iget-object v8, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    invoke-interface {v8, v7}, Lcom/metamoji/ctold/database/CtObjectDatabase;->getObjectReference(Ljava/lang/String;)Lcom/metamoji/ctold/object/CtObjectReference;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 507
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    .line 513
    :try_start_7
    invoke-interface {v5}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    :cond_3
    if-eqz v6, :cond_4

    .line 516
    invoke-interface {v6}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 519
    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    if-gtz v5, :cond_5

    .line 521
    new-instance v1, Lcom/metamoji/ctold/search/CtSearchResult;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/metamoji/ctold/search/CtSearchResult;-><init>(Ljava/util/List;Lcom/metamoji/ctold/search/CtSearchCondition;)V
    :try_end_7
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    return-object v1

    .line 531
    :cond_5
    :try_start_9
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 532
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 533
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/ctold/object/CtObjectReference;

    .line 534
    sget-object v11, Lcom/metamoji/ctold/database/CtTagDatabaseImpl$3;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    invoke-interface {v7}, Lcom/metamoji/ctold/object/CtObjectReference;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v12

    invoke-virtual {v12}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v10, :cond_7

    if-eq v11, v9, :cond_7

    if-eq v11, v8, :cond_7

    goto :goto_1

    .line 538
    :cond_7
    sget-object v11, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_PAGE:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-interface {v7}, Lcom/metamoji/ctold/object/CtObjectReference;->getPageId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 539
    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/ctold/object/CtObjectReference;

    if-eqz v11, :cond_6

    .line 541
    invoke-interface {v5, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 553
    :cond_8
    invoke-virtual {p1}, Lcom/metamoji/ctold/search/CtSearchCondition;->getTagConditions()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    .line 554
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 555
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 556
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/ctold/object/CtObjectReference;

    .line 557
    invoke-interface {v6}, Lcom/metamoji/ctold/object/CtObjectReference;->getObjectKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->getTagIds(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    .line 558
    invoke-virtual {p1}, Lcom/metamoji/ctold/search/CtSearchCondition;->getTagConditions()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 559
    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 560
    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    move-object v8, v6

    .line 564
    :goto_4
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 565
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/ctold/object/CtObjectReference;

    invoke-interface {v9}, Lcom/metamoji/ctold/object/CtObjectReference;->getObjectKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->getTagIds(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    .line 566
    invoke-virtual {p1}, Lcom/metamoji/ctold/search/CtSearchCondition;->getTagConditions()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_c
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 567
    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 568
    invoke-interface {v7, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 571
    :cond_d
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-ne v8, v9, :cond_e

    goto :goto_6

    .line 574
    :cond_e
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/ctold/object/CtObjectReference;

    goto :goto_4

    .line 576
    :cond_f
    :goto_6
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    if-ne v7, v4, :cond_9

    .line 577
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 580
    :cond_10
    invoke-virtual {p0, v1, p1}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->sort(Ljava/util/List;Lcom/metamoji/ctold/search/CtSearchCondition;)Lcom/metamoji/ctold/search/CtSearchResult;

    move-result-object p1
    :try_end_9
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    return-object p1

    :catchall_0
    move-exception p1

    move-object v4, v5

    goto :goto_7

    :catchall_1
    move-exception p1

    goto :goto_7

    :catchall_2
    move-exception p1

    move-object v6, v4

    :goto_7
    if-eqz v4, :cond_11

    .line 513
    :try_start_b
    invoke-interface {v4}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    :cond_11
    if-eqz v6, :cond_12

    .line 516
    invoke-interface {v6}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 518
    :cond_12
    throw p1
    :try_end_b
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catch_0
    move-exception p1

    .line 582
    :try_start_c
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "CT0034"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_3
    move-exception p1

    .line 584
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw p1
.end method

.method public setTags(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;",
            "Lcom/metamoji/df/model/IModel;",
            ")V"
        }
    .end annotation

    .line 232
    iget-object p3, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    monitor-enter p3

    .line 233
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->readyDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->getObjectNumber(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 239
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 242
    :cond_0
    :try_start_3
    iget-object p1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->removeTagsForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I

    .line 244
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 245
    invoke-virtual {p2}, Lcom/metamoji/ctold/tag/CtTagInstance;->getTagId()Ljava/lang/String;

    move-result-object v2

    .line 246
    iget-object v3, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->addTagForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I

    .line 247
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->databaseModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlModel;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlDatabase;->getLastInsertRowId()J

    move-result-wide v2

    .line 248
    invoke-virtual {p2}, Lcom/metamoji/ctold/tag/CtTagInstance;->getProperties()Ljava/util/List;

    move-result-object p2

    .line 249
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ctold/property/CtProperty;

    .line 250
    invoke-virtual {v4}, Lcom/metamoji/ctold/property/CtProperty;->getName()Ljava/lang/String;

    move-result-object v5

    .line 251
    invoke-virtual {v4}, Lcom/metamoji/ctold/property/CtProperty;->getType()Lcom/metamoji/ctold/property/CtPropertyType;

    move-result-object v6

    .line 252
    invoke-virtual {v4}, Lcom/metamoji/ctold/property/CtProperty;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 253
    iget-object v7, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->addPropForTag:Lcom/metamoji/sqldb/SqlPreparedStatement;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6}, Lcom/metamoji/ctold/property/CtPropertyType;->getValue()I

    move-result v6

    int-to-char v6, v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    filled-new-array {v8, v5, v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v7, v4}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I
    :try_end_3
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 259
    :cond_2
    :try_start_4
    monitor-exit p3

    return-void

    :catch_0
    move-exception p1

    .line 257
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string v0, "CT0028"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 259
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method sort(Ljava/util/List;Lcom/metamoji/ctold/search/CtSearchCondition;)Lcom/metamoji/ctold/search/CtSearchResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/object/CtObjectReference;",
            ">;",
            "Lcom/metamoji/ctold/search/CtSearchCondition;",
            ")",
            "Lcom/metamoji/ctold/search/CtSearchResult;"
        }
    .end annotation

    .line 670
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/metamoji/ctold/database/CtTagDatabaseImpl$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl$1;-><init>(Lcom/metamoji/ctold/database/CtTagDatabaseImpl;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 676
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 677
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ctold/object/CtObjectReference;

    .line 678
    invoke-interface {v2}, Lcom/metamoji/ctold/object/CtObjectReference;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->getTagInstances(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 679
    invoke-virtual {v3}, Lcom/metamoji/ctold/tag/CtTagInstance;->getTagId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_1

    .line 681
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 682
    invoke-virtual {v3}, Lcom/metamoji/ctold/tag/CtTagInstance;->getTagId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    :cond_1
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    invoke-virtual {v3}, Lcom/metamoji/ctold/tag/CtTagInstance;->getTagId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 689
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 690
    new-instance v3, Lcom/metamoji/ctold/database/CtTagDatabaseImpl$2;

    invoke-direct {v3, p0, p2}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl$2;-><init>(Lcom/metamoji/ctold/database/CtTagDatabaseImpl;Lcom/metamoji/ctold/search/CtSearchCondition;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 699
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 700
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 701
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 702
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 703
    invoke-virtual {v4}, Lcom/metamoji/ctold/tag/CtTagInstance;->getObjectReference()Lcom/metamoji/ctold/object/CtObjectReference;

    move-result-object v4

    .line 704
    invoke-interface {v4}, Lcom/metamoji/ctold/object/CtObjectReference;->getObjectKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 705
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    invoke-interface {v4}, Lcom/metamoji/ctold/object/CtObjectReference;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 710
    :cond_6
    new-instance v0, Lcom/metamoji/ctold/search/CtSearchResult;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/ctold/search/CtSearchResult;-><init>(Ljava/util/List;Lcom/metamoji/ctold/search/CtSearchCondition;)V

    return-object v0
.end method

.method tagConditionMap(Lcom/metamoji/ctold/search/CtTagCondition;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/search/CtTagCondition;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 929
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 930
    const-string v2, "sql"

    const-string v3, "params"

    invoke-static {v2, v0, v3, v1}, Lcom/metamoji/ctold/CtUtils;->toMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 932
    const-string v5, " WHEN tag_objects.tag_id=?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    invoke-virtual {p1}, Lcom/metamoji/ctold/search/CtTagCondition;->getTagId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    invoke-virtual {p1}, Lcom/metamoji/ctold/search/CtTagCondition;->getPropertyConditions()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->propertyConditionsMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 936
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 938
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 939
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 940
    const-string v3, " AND ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 945
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 947
    :cond_1
    const-string p1, " THEN 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v4
.end method

.method unreadyDatabase()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 150
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->getObjectNumberForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_0

    .line 151
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->removeTagsForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_1

    .line 154
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->addTagForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_2

    .line 157
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 159
    :cond_2
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->addPropForTag:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_3

    .line 160
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 162
    :cond_3
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->removeTagForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_4

    .line 163
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 165
    :cond_4
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->listUsedTags:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_5

    .line 166
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 168
    :cond_5
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->listTagsForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_6

    .line 169
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 171
    :cond_6
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->listTagInstancesForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_7

    .line 172
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 174
    :cond_7
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->listTagInstancesForSystemTagId:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_8

    .line 175
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 177
    :cond_8
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->hasSystemTag:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_9

    .line 178
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 180
    :cond_9
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->hasSystemTagInUnit:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_a

    .line 181
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 183
    :cond_a
    iget-object v2, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->containsTag:Lcom/metamoji/sqldb/SqlPreparedStatement;

    if-eqz v2, :cond_b

    .line 184
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V
    :try_end_0
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_b
    :goto_0
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->getObjectNumberForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 190
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->removeTagsForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 191
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->addTagForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 192
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->addPropForTag:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 193
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->removeTagForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 194
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->listUsedTags:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 195
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->listTagsForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 196
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->listTagInstancesForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 197
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->listTagInstancesForSystemTagId:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 198
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->hasSystemTag:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 199
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->hasSystemTagInUnit:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 200
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->containsTag:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 201
    iput-boolean v0, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->ready:Z

    return-void

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 187
    :try_start_1
    invoke-virtual {v2}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 189
    :goto_1
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->getObjectNumberForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 190
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->removeTagsForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 191
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->addTagForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 192
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->addPropForTag:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 193
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->removeTagForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 194
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->listUsedTags:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 195
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->listTagsForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 196
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->listTagInstancesForObject:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 197
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->listTagInstancesForSystemTagId:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 198
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->hasSystemTag:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 199
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->hasSystemTagInUnit:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 200
    iput-object v1, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->containsTag:Lcom/metamoji/sqldb/SqlPreparedStatement;

    .line 201
    iput-boolean v0, p0, Lcom/metamoji/ctold/database/CtTagDatabaseImpl;->ready:Z

    .line 202
    throw v2
.end method
