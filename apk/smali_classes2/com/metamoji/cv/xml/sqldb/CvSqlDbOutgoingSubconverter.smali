.class public Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter;
.super Ljava/lang/Object;
.source "CvSqlDbOutgoingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$CvSqlObjectInformation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/metamoji/cv/CvConvertItem;)Z
    .locals 9

    .line 71
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    const-class v1, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 75
    :cond_0
    iget-object v2, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    const-class v3, Lcom/metamoji/sqldb/SqlModel;

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/sqldb/SqlModel;

    if-nez v2, :cond_1

    return v1

    .line 79
    :cond_1
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlModel;->getDatabaseFilePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sqldb"

    if-nez v3, :cond_4

    .line 80
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getPrivateDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 82
    :cond_2
    new-instance p1, Lcom/metamoji/cm/CmException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cannot create cache directory: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SQLDB0004"

    invoke-direct {p1, v1, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_3
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 86
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v7, "%s.%s"

    const-string v8, "ctagdb"

    filled-new-array {v5, v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/metamoji/sqldb/SqlModel;->setDatabaseFilePath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 88
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "SQLDB0005"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 91
    :cond_4
    :goto_1
    const-string v3, "datakind"

    invoke-interface {v2, v3}, Lcom/metamoji/sqldb/SqlModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    const-string v3, "CT_SQLDB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 93
    const-string v1, "xml"

    invoke-virtual {v0, p1, v4, v1}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1b58

    .line 94
    iput v0, p1, Lcom/metamoji/cv/CvConvertItem;->priority:I

    const/4 p1, 0x1

    return p1

    :cond_5
    return v1
.end method

.method contextHasMergeInfo(Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Z
    .locals 2

    .line 147
    instance-of v0, p1, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 150
    :cond_0
    check-cast p1, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;

    iget-object p1, p1, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->mergeInfo:Lcom/metamoji/cv/xml/CvMergeInfo;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method contextHasVcOption(Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;)Z
    .locals 2

    .line 135
    iget-object p1, p1, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->options:Ljava/util/Map;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 139
    :cond_0
    const-string v1, "included-recordings"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 143
    :cond_1
    check-cast p1, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 3

    .line 103
    :try_start_0
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    .line 104
    iget-object v1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object v1

    .line 105
    iget-object v2, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    check-cast v2, Lcom/metamoji/sqldb/SqlModel;

    .line 106
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    check-cast p1, Lcom/metamoji/sqldb/SqlModelImpl;

    new-instance v2, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$1;-><init>(Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/metamoji/sqldb/SqlModelImpl;->writeTo(Ljava/io/File;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Lcom/metamoji/sqldb/SqlConsumer2;)V
    :try_end_0
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 125
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "SQLDB0006"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method convertObjectIdOwnerId(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$CvSqlObjectInformation;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$CvSqlObjectInformation;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$CvSqlObjectInformation;

    .line 228
    iget-object v2, v1, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$CvSqlObjectInformation;->objectId:Ljava/lang/String;

    .line 229
    iget-object v3, v1, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$CvSqlObjectInformation;->ownerId:Ljava/lang/String;

    .line 230
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 231
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 232
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-nez v6, :cond_1

    goto :goto_0

    .line 241
    :cond_1
    new-instance v2, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$CvSqlObjectInformation;

    iget-wide v7, v1, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$CvSqlObjectInformation;->objectNumber:J

    invoke-direct {v2, v7, v8, v6, v4}, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$CvSqlObjectInformation;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 131
    const-string v0, "$sqldb"

    return-object v0
.end method

.method mergeTag(Lcom/metamoji/cv/xml/CvMergeInfo;Lcom/metamoji/sqldb/SqlDatabase;)V
    .locals 5

    .line 168
    iget-object v0, p1, Lcom/metamoji/cv/xml/CvMergeInfo;->contentsTagOwnerMap:Ljava/util/Map;

    .line 169
    iget-object p1, p1, Lcom/metamoji/cv/xml/CvMergeInfo;->contentsTagObjectMap:Ljava/util/Map;

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    sget-object v2, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_ELEM:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {p0, v2, p2}, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter;->objectInformation(Lcom/metamoji/ctold/object/CtObjectType;Lcom/metamoji/sqldb/SqlDatabase;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p1}, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter;->convertObjectIdOwnerId(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    .line 173
    sget-object v2, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_GROUP:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {p0, v2, p2}, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter;->objectInformation(Lcom/metamoji/ctold/object/CtObjectType;Lcom/metamoji/sqldb/SqlDatabase;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p1}, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter;->convertObjectIdOwnerId(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    .line 177
    :try_start_0
    const-string p1, "UPDATE objects SET object_id=?, object_owner_id=? WHERE object_number=?"

    invoke-interface {p2, p1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_0 .. :try_end_0} :catch_3

    .line 182
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$CvSqlObjectInformation;

    .line 183
    iget-object v1, v0, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$CvSqlObjectInformation;->objectId:Ljava/lang/String;

    iget-object v2, v0, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$CvSqlObjectInformation;->ownerId:Ljava/lang/String;

    invoke-static {v2}, Lcom/metamoji/ctold/CtUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v0, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$CvSqlObjectInformation;->objectNumber:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I
    :try_end_1
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 190
    :try_start_2
    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V
    :try_end_2
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-void

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 186
    :try_start_3
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "SQLDB0039"

    invoke-virtual {p2}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz p1, :cond_2

    .line 190
    :try_start_4
    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V
    :try_end_4
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_4 .. :try_end_4} :catch_2

    .line 195
    :catch_2
    :cond_2
    throw p2

    :catch_3
    move-exception p1

    .line 179
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string v0, "SQLDB0038"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method objectInformation(Lcom/metamoji/ctold/object/CtObjectType;Lcom/metamoji/sqldb/SqlDatabase;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/object/CtObjectType;",
            "Lcom/metamoji/sqldb/SqlDatabase;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$CvSqlObjectInformation;",
            ">;"
        }
    .end annotation

    .line 199
    const-string v0, "SQLDB0037"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    :try_start_0
    const-string v2, "SELECT object_number, object_id, object_owner_id FROM objects WHERE object_type=?"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, v2, p1}, Lcom/metamoji/sqldb/SqlDatabase;->executeQuery(Ljava/lang/String;[Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object p1
    :try_end_0
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_0 .. :try_end_0} :catch_3

    .line 207
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 208
    new-instance p2, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$CvSqlObjectInformation;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lcom/metamoji/sqldb/SqlResultSet;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {p1, v5}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p2, v2, v3, v4, v5}, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter$CvSqlObjectInformation;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 217
    :try_start_2
    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlResultSet;->close()V
    :try_end_2
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-object v1

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 213
    :try_start_3
    new-instance v1, Lcom/metamoji/cm/CmException;

    invoke-virtual {p2}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz p1, :cond_2

    .line 217
    :try_start_4
    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlResultSet;->close()V
    :try_end_4
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_4 .. :try_end_4} :catch_2

    .line 222
    :catch_2
    :cond_2
    throw p2

    :catch_3
    move-exception p1

    .line 204
    new-instance p2, Lcom/metamoji/cm/CmException;

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method removeVoiceLinkTag(Lcom/metamoji/sqldb/SqlDatabase;)V
    .locals 3

    .line 156
    :try_start_0
    const-string v0, "DELETE FROM tag_objects WHERE tag_id=?"

    sget-object v1, Lcom/metamoji/ctold/tag/CtSystemTagId;->CT_TAGID_VOICE:Lcom/metamoji/ctold/tag/CtSystemTagId;

    invoke-static {v1}, Lcom/metamoji/ctold/CtTagUtil;->getTagId(Lcom/metamoji/ctold/tag/CtSystemTagId;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->executeUpdate(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    :try_start_1
    const-string v0, "DELETE FROM objects WHERE object_number NOT IN (SELECT object_number FROM tag_objects)"

    invoke-interface {p1, v0}, Lcom/metamoji/sqldb/SqlDatabase;->executeUpdate(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/metamoji/sqldb/SqlDatabaseException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 163
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "SQLDB0036"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 158
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "SQLDB0035"

    invoke-virtual {p1}, Lcom/metamoji/sqldb/SqlDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
