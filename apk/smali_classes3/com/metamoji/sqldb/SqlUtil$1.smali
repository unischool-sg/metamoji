.class Lcom/metamoji/sqldb/SqlUtil$1;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$data:Lcom/metamoji/df/model/ByteData;

.field final synthetic val$serializer:Lcom/metamoji/df/model/PlainValueSerializer;


# direct methods
.method constructor <init>(Lcom/metamoji/df/model/PlainValueSerializer;Lcom/metamoji/df/model/ByteData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/metamoji/sqldb/SqlUtil$1;->val$serializer:Lcom/metamoji/df/model/PlainValueSerializer;

    iput-object p2, p0, Lcom/metamoji/sqldb/SqlUtil$1;->val$data:Lcom/metamoji/df/model/ByteData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/metamoji/sqldb/SqlUtil$1;->val$serializer:Lcom/metamoji/df/model/PlainValueSerializer;

    iget-object v1, p0, Lcom/metamoji/sqldb/SqlUtil$1;->val$data:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;Lcom/metamoji/df/model/ByteData;)V

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

    .line 78
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/metamoji/sqldb/SqlUtil$1;->accept(Ljava/lang/Integer;)V

    return-void
.end method
