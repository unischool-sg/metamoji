.class Lcom/metamoji/sqldb/SqlUtil$2;
.super Ljava/lang/Object;
.source "SqlUtil.java"

# interfaces
.implements Lcom/metamoji/sqldb/SqlConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sqldb/SqlUtil;->serializeDatabase(Lcom/metamoji/sqldb/SqlDatabase;Lcom/metamoji/df/model/ByteData;Ljava/util/List;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/sqldb/SqlConsumer<",
        "Lcom/metamoji/sqldb/SqlResultSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$columnInfos:Ljava/util/List;

.field final synthetic val$data:Lcom/metamoji/df/model/ByteData;

.field final synthetic val$serializer:Lcom/metamoji/df/model/PlainValueSerializer;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/metamoji/df/model/PlainValueSerializer;Lcom/metamoji/df/model/ByteData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/metamoji/sqldb/SqlUtil$2;->val$columnInfos:Ljava/util/List;

    iput-object p2, p0, Lcom/metamoji/sqldb/SqlUtil$2;->val$serializer:Lcom/metamoji/df/model/PlainValueSerializer;

    iput-object p3, p0, Lcom/metamoji/sqldb/SqlUtil$2;->val$data:Lcom/metamoji/df/model/ByteData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/metamoji/sqldb/SqlResultSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlUtil$2;->val$columnInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    .line 91
    iget-object v2, p0, Lcom/metamoji/sqldb/SqlUtil$2;->val$columnInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/sqldb/SqlColumnInfo;

    .line 92
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlColumnInfo;->type()Lcom/metamoji/sqldb/SqlColumnType;

    move-result-object v2

    .line 93
    sget-object v3, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_ANY:Lcom/metamoji/sqldb/SqlColumnType;

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 96
    invoke-interface {p1, v2}, Lcom/metamoji/sqldb/SqlResultSet;->type(I)Lcom/metamoji/sqldb/SqlColumnType;

    move-result-object v2

    .line 97
    iget-object v3, p0, Lcom/metamoji/sqldb/SqlUtil$2;->val$serializer:Lcom/metamoji/df/model/PlainValueSerializer;

    invoke-virtual {v2}, Lcom/metamoji/sqldb/SqlColumnType;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/sqldb/SqlUtil$2;->val$data:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;Lcom/metamoji/df/model/ByteData;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 99
    invoke-interface {p1, v1}, Lcom/metamoji/sqldb/SqlResultSet;->type(I)Lcom/metamoji/sqldb/SqlColumnType;

    move-result-object v3

    sget-object v4, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_NULL:Lcom/metamoji/sqldb/SqlColumnType;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 100
    iget-object v2, p0, Lcom/metamoji/sqldb/SqlUtil$2;->val$serializer:Lcom/metamoji/df/model/PlainValueSerializer;

    iget-object v3, p0, Lcom/metamoji/sqldb/SqlUtil$2;->val$data:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v2, v5, v3}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;Lcom/metamoji/df/model/ByteData;)V

    goto :goto_0

    .line 102
    :cond_1
    sget-object v3, Lcom/metamoji/sqldb/SqlUtil$4;->$SwitchMap$com$metamoji$sqldb$SqlColumnType:[I

    invoke-virtual {v2}, Lcom/metamoji/sqldb/SqlColumnType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 113
    iget-object v3, p0, Lcom/metamoji/sqldb/SqlUtil$2;->val$serializer:Lcom/metamoji/df/model/PlainValueSerializer;

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    .line 117
    iget-object v2, p0, Lcom/metamoji/sqldb/SqlUtil$2;->val$data:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v3, v5, v2}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;Lcom/metamoji/df/model/ByteData;)V

    goto :goto_0

    .line 113
    :cond_2
    new-instance v2, Lcom/metamoji/cm/Blob;

    invoke-interface {p1, v1}, Lcom/metamoji/sqldb/SqlResultSet;->getBlob(I)[B

    move-result-object v4

    const-string v5, "application/octet-stream"

    invoke-direct {v2, v4, v5}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    iget-object v4, p0, Lcom/metamoji/sqldb/SqlUtil$2;->val$data:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v3, v2, v4}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;Lcom/metamoji/df/model/ByteData;)V

    goto :goto_0

    .line 110
    :cond_3
    iget-object v2, p0, Lcom/metamoji/sqldb/SqlUtil$2;->val$serializer:Lcom/metamoji/df/model/PlainValueSerializer;

    invoke-interface {p1, v1}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/sqldb/SqlUtil$2;->val$data:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;Lcom/metamoji/df/model/ByteData;)V

    goto :goto_0

    .line 107
    :cond_4
    iget-object v2, p0, Lcom/metamoji/sqldb/SqlUtil$2;->val$serializer:Lcom/metamoji/df/model/PlainValueSerializer;

    invoke-interface {p1, v1}, Lcom/metamoji/sqldb/SqlResultSet;->getDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/sqldb/SqlUtil$2;->val$data:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;Lcom/metamoji/df/model/ByteData;)V

    goto/16 :goto_0

    .line 104
    :cond_5
    iget-object v2, p0, Lcom/metamoji/sqldb/SqlUtil$2;->val$serializer:Lcom/metamoji/df/model/PlainValueSerializer;

    invoke-interface {p1, v1}, Lcom/metamoji/sqldb/SqlResultSet;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/sqldb/SqlUtil$2;->val$data:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;Lcom/metamoji/df/model/ByteData;)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 86
    check-cast p1, Lcom/metamoji/sqldb/SqlResultSet;

    invoke-virtual {p0, p1}, Lcom/metamoji/sqldb/SqlUtil$2;->accept(Lcom/metamoji/sqldb/SqlResultSet;)V

    return-void
.end method
