.class Lcom/metamoji/sqldb/SqlUtil$3;
.super Ljava/lang/Object;
.source "SqlUtil.java"

# interfaces
.implements Lcom/metamoji/sqldb/SqlFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sqldb/SqlUtil;->deserializeDatabase(Lcom/metamoji/sqldb/SqlDatabase;[BILjava/util/List;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/sqldb/SqlFunction<",
        "Ljava/lang/Integer;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$columnInfos:Ljava/util/List;

.field final synthetic val$data:[B

.field final synthetic val$offset:Lcom/metamoji/cm/mutable/MutableInt;

.field final synthetic val$serializer:Lcom/metamoji/df/model/PlainValueSerializer;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/metamoji/df/model/PlainValueSerializer;[BLcom/metamoji/cm/mutable/MutableInt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/metamoji/sqldb/SqlUtil$3;->val$columnInfos:Ljava/util/List;

    iput-object p2, p0, Lcom/metamoji/sqldb/SqlUtil$3;->val$serializer:Lcom/metamoji/df/model/PlainValueSerializer;

    iput-object p3, p0, Lcom/metamoji/sqldb/SqlUtil$3;->val$data:[B

    iput-object p4, p0, Lcom/metamoji/sqldb/SqlUtil$3;->val$offset:Lcom/metamoji/cm/mutable/MutableInt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 174
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/metamoji/sqldb/SqlUtil$3;->apply(Ljava/lang/Integer;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Integer;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 177
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlUtil$3;->val$columnInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/sqldb/SqlColumnInfo;

    .line 179
    invoke-interface {v1}, Lcom/metamoji/sqldb/SqlColumnInfo;->type()Lcom/metamoji/sqldb/SqlColumnType;

    move-result-object v1

    .line 180
    sget-object v2, Lcom/metamoji/sqldb/SqlColumnType;->SQL_COLUMN_TYPE_ANY:Lcom/metamoji/sqldb/SqlColumnType;

    if-ne v1, v2, :cond_0

    .line 182
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlUtil$3;->val$serializer:Lcom/metamoji/df/model/PlainValueSerializer;

    iget-object v2, p0, Lcom/metamoji/sqldb/SqlUtil$3;->val$data:[B

    iget-object v3, p0, Lcom/metamoji/sqldb/SqlUtil$3;->val$offset:Lcom/metamoji/cm/mutable/MutableInt;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/df/model/PlainValueSerializer;->readValue([BLcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/metamoji/sqldb/SqlColumnType;->enumOf(I)Lcom/metamoji/sqldb/SqlColumnType;

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/metamoji/sqldb/SqlUtil$3;->val$serializer:Lcom/metamoji/df/model/PlainValueSerializer;

    iget-object v2, p0, Lcom/metamoji/sqldb/SqlUtil$3;->val$data:[B

    iget-object v3, p0, Lcom/metamoji/sqldb/SqlUtil$3;->val$offset:Lcom/metamoji/cm/mutable/MutableInt;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/df/model/PlainValueSerializer;->readValue([BLcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/Object;

    move-result-object v1

    .line 185
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
