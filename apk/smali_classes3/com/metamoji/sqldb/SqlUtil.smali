.class public Lcom/metamoji/sqldb/SqlUtil;
.super Ljava/lang/Object;
.source "SqlUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserializeDatabase(Lcom/metamoji/sqldb/SqlDatabase;[BILjava/util/List;Ljava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sqldb/SqlDatabase;",
            "[BI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 133
    const-string v4, "SQL\u30c7\u30fc\u30bf\u30d9\u30fc\u30b9\u30e2\u30c7\u30eb\u306e\u8aad\u8fbc\u6642\u9593=%d[ms]"

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    const/4 v6, 0x0

    .line 134
    invoke-interface {v1, v6}, Lcom/metamoji/sqldb/SqlDatabase;->setAutoCommit(Z)V

    .line 136
    :try_start_0
    new-instance v7, Lcom/metamoji/df/model/PlainValueSerializer;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/metamoji/df/model/PlainValueSerializer;-><init>(Lcom/metamoji/df/model/IModelManager;)V

    .line 137
    new-instance v8, Lcom/metamoji/cm/mutable/MutableInt;

    move/from16 v9, p2

    invoke-direct {v8, v9}, Lcom/metamoji/cm/mutable/MutableInt;-><init>(I)V

    .line 139
    invoke-virtual {v7, v0, v8}, Lcom/metamoji/df/model/PlainValueSerializer;->readValue([BLcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v10, v6

    :goto_0
    if-ge v10, v9, :cond_3

    .line 142
    invoke-virtual {v7, v0, v8}, Lcom/metamoji/df/model/PlainValueSerializer;->readValue([BLcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 144
    invoke-virtual {v7, v0, v8}, Lcom/metamoji/df/model/PlainValueSerializer;->readValue([BLcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 146
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move v14, v6

    :goto_1
    if-ge v14, v12, :cond_0

    .line 148
    invoke-virtual {v7, v0, v8}, Lcom/metamoji/df/model/PlainValueSerializer;->readValue([BLcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 149
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v1, v15}, Lcom/metamoji/sqldb/SqlDatabase;->executeUpdate(Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    .line 152
    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 153
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_1

    .line 155
    invoke-interface {v3, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-virtual {v7, v0, v8}, Lcom/metamoji/df/model/PlainValueSerializer;->readValue([BLcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move v14, v6

    :goto_2
    if-ge v14, v13, :cond_2

    .line 164
    invoke-virtual {v7, v0, v8}, Lcom/metamoji/df/model/PlainValueSerializer;->readValue([BLcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 166
    invoke-virtual {v7, v0, v8}, Lcom/metamoji/df/model/PlainValueSerializer;->readValue([BLcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/metamoji/sqldb/SqlColumnType;->enumOf(I)Lcom/metamoji/sqldb/SqlColumnType;

    move-result-object v6

    .line 167
    new-instance v2, Lcom/metamoji/sqldb/SqlColumnInfoImpl;

    invoke-direct {v2, v15, v6}, Lcom/metamoji/sqldb/SqlColumnInfoImpl;-><init>(Ljava/lang/String;Lcom/metamoji/sqldb/SqlColumnType;)V

    .line 168
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p3

    const/4 v6, 0x0

    goto :goto_2

    .line 171
    :cond_2
    invoke-virtual {v7, v0, v8}, Lcom/metamoji/df/model/PlainValueSerializer;->readValue([BLcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 173
    invoke-static {v11, v12}, Lcom/metamoji/sqldb/SqlUtil;->generateInsertSqlForTableName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 174
    new-instance v11, Lcom/metamoji/sqldb/SqlUtil$3;

    invoke-direct {v11, v12, v7, v0, v8}, Lcom/metamoji/sqldb/SqlUtil$3;-><init>(Ljava/util/List;Lcom/metamoji/df/model/PlainValueSerializer;[BLcom/metamoji/cm/mutable/MutableInt;)V

    invoke-static {v11, v1, v6, v2}, Lcom/metamoji/sqldb/SqlUtil;->insertWithAction(Lcom/metamoji/sqldb/SqlFunction;Lcom/metamoji/sqldb/SqlDatabase;Ljava/lang/String;I)V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p3

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 191
    :cond_3
    invoke-interface {v1}, Lcom/metamoji/sqldb/SqlDatabase;->commit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 197
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 193
    :try_start_1
    invoke-interface {v1}, Lcom/metamoji/sqldb/SqlDatabase;->rollback()V

    .line 194
    new-instance v1, Lcom/metamoji/sqldb/SqlDatabaseException;

    invoke-direct {v1, v0}, Lcom/metamoji/sqldb/SqlDatabaseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :goto_3
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 197
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    throw v0
.end method

.method public static generateDatabaseFilePathWithDocumentId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 37
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getPrivateDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "sqldb"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    const-string v2, "SQLDB0003"

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    new-instance p0, Lcom/metamoji/cm/CmException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "cannot create cache directory: %s"

    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_1
    :goto_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s.%s"

    const-string v5, "ctagdb"

    filled-new-array {p0, v5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, v4, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 45
    new-instance v0, Lcom/metamoji/cm/CmException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1, p0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static generateInsertSqlForTableName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/metamoji/sqldb/SqlColumnInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, ","

    if-ge v3, v1, :cond_1

    .line 224
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/sqldb/SqlColumnInfo;

    if-lez v3, :cond_0

    .line 226
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_0
    invoke-interface {v5}, Lcom/metamoji/sqldb/SqlColumnInfo;->name()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "\"%s\""

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    :cond_1
    const-string v1, "INSERT INTO %s ("

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string p0, ") VALUES ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    :goto_1
    if-ge v2, p0, :cond_3

    if-lez v2, :cond_2

    .line 234
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_2
    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 238
    :cond_3
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateSelectAllSqlForTableName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/metamoji/sqldb/SqlColumnInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/sqldb/SqlColumnInfo;

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 209
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_0
    invoke-interface {v1}, Lcom/metamoji/sqldb/SqlColumnInfo;->name()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\"%s\""

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-gtz p1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    const/4 p1, 0x0

    .line 216
    const-string v1, "SELECT "

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string p1, " FROM %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateSelectCountSqlForTableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 202
    const-string v0, "SELECT count(*) FROM %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static insertWithAction(Lcom/metamoji/sqldb/SqlFunction;Lcom/metamoji/sqldb/SqlDatabase;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sqldb/SqlFunction<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/sqldb/SqlDatabase;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 291
    :try_start_0
    invoke-interface {p1, p2}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    if-eqz p0, :cond_0

    .line 294
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/metamoji/sqldb/SqlFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 295
    invoke-interface {p1, v0}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 300
    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    :cond_2
    return-void

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 302
    :cond_3
    throw p0
.end method

.method public static selectAggregateWithAction(Lcom/metamoji/sqldb/SqlConsumer;Lcom/metamoji/sqldb/SqlDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sqldb/SqlConsumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/metamoji/sqldb/SqlDatabase;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 246
    :try_start_0
    invoke-interface {p1, p2}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 247
    :try_start_1
    invoke-interface {p1, p3}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeQuery([Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object v0

    .line 249
    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 250
    invoke-interface {v0, p2}, Lcom/metamoji/sqldb/SqlResultSet;->getInt(I)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 254
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/metamoji/sqldb/SqlConsumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    .line 258
    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    :cond_2
    if-eqz p1, :cond_3

    .line 261
    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object p1, v0

    :goto_1
    if-eqz v0, :cond_4

    .line 258
    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    :cond_4
    if-eqz p1, :cond_5

    .line 261
    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 263
    :cond_5
    throw p0
.end method

.method public static selectWithAction(Lcom/metamoji/sqldb/SqlConsumer;Lcom/metamoji/sqldb/SqlDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sqldb/SqlConsumer<",
            "Lcom/metamoji/sqldb/SqlResultSet;",
            ">;",
            "Lcom/metamoji/sqldb/SqlDatabase;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 270
    :try_start_0
    invoke-interface {p1, p2}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 271
    :try_start_1
    invoke-interface {p1, p3}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeQuery([Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object v0

    .line 272
    :cond_0
    :goto_0
    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p0, :cond_0

    .line 274
    invoke-interface {p0, v0}, Lcom/metamoji/sqldb/SqlConsumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 280
    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    :cond_2
    if-eqz p1, :cond_3

    .line 283
    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object p1, v0

    :goto_1
    if-eqz v0, :cond_4

    .line 280
    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    :cond_4
    if-eqz p1, :cond_5

    .line 283
    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    .line 285
    :cond_5
    throw p0
.end method

.method public static serializeDatabase(Lcom/metamoji/sqldb/SqlDatabase;Lcom/metamoji/df/model/ByteData;Ljava/util/List;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sqldb/SqlDatabase;",
            "Lcom/metamoji/df/model/ByteData;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const/4 v1, 0x0

    .line 51
    invoke-interface {p0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->setAutoCommit(Z)V

    .line 53
    :try_start_0
    invoke-interface {p0}, Lcom/metamoji/sqldb/SqlDatabase;->lock()V

    .line 55
    new-instance v1, Lcom/metamoji/df/model/PlainValueSerializer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/metamoji/df/model/PlainValueSerializer;-><init>(Lcom/metamoji/df/model/IModelManager;)V

    .line 57
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;Lcom/metamoji/df/model/ByteData;)V

    .line 58
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 60
    invoke-virtual {v1, v3, p1}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;Lcom/metamoji/df/model/ByteData;)V

    .line 62
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 63
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, p1}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;Lcom/metamoji/df/model/ByteData;)V

    .line 65
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 66
    invoke-virtual {v1, v5, p1}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;Lcom/metamoji/df/model/ByteData;)V

    goto :goto_1

    .line 69
    :cond_0
    invoke-interface {p0, v3}, Lcom/metamoji/sqldb/SqlDatabase;->getColumnInfos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 70
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, p1}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;Lcom/metamoji/df/model/ByteData;)V

    .line 72
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/sqldb/SqlColumnInfo;

    .line 73
    invoke-interface {v6}, Lcom/metamoji/sqldb/SqlColumnInfo;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, p1}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;Lcom/metamoji/df/model/ByteData;)V

    .line 74
    invoke-interface {v6}, Lcom/metamoji/sqldb/SqlColumnInfo;->type()Lcom/metamoji/sqldb/SqlColumnType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/sqldb/SqlColumnType;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6, p1}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;Lcom/metamoji/df/model/ByteData;)V

    goto :goto_2

    .line 77
    :cond_1
    invoke-static {v3}, Lcom/metamoji/sqldb/SqlUtil;->generateSelectCountSqlForTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    new-instance v6, Lcom/metamoji/sqldb/SqlUtil$1;

    invoke-direct {v6, v1, p1}, Lcom/metamoji/sqldb/SqlUtil$1;-><init>(Lcom/metamoji/df/model/PlainValueSerializer;Lcom/metamoji/df/model/ByteData;)V

    invoke-static {v6, p0, v5, v2}, Lcom/metamoji/sqldb/SqlUtil;->selectAggregateWithAction(Lcom/metamoji/sqldb/SqlConsumer;Lcom/metamoji/sqldb/SqlDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-static {v3, v4}, Lcom/metamoji/sqldb/SqlUtil;->generateSelectAllSqlForTableName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 86
    new-instance v5, Lcom/metamoji/sqldb/SqlUtil$2;

    invoke-direct {v5, v4, v1, p1}, Lcom/metamoji/sqldb/SqlUtil$2;-><init>(Ljava/util/List;Lcom/metamoji/df/model/PlainValueSerializer;Lcom/metamoji/df/model/ByteData;)V

    invoke-static {v5, p0, v3, v2}, Lcom/metamoji/sqldb/SqlUtil;->selectWithAction(Lcom/metamoji/sqldb/SqlConsumer;Lcom/metamoji/sqldb/SqlDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 126
    :cond_2
    invoke-interface {p0}, Lcom/metamoji/sqldb/SqlDatabase;->rollback()V

    .line 128
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 129
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "SQL\u30c7\u30fc\u30bf\u30d9\u30fc\u30b9\u30e2\u30c7\u30eb\u306e\u4fdd\u5b58\u6642\u9593=%d[ms]"

    invoke-static {p1, p0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 126
    invoke-interface {p0}, Lcom/metamoji/sqldb/SqlDatabase;->rollback()V

    .line 127
    throw p1
.end method
