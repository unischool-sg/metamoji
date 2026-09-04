.class Lcom/metamoji/sqldb/SqlDatabaseImpl$3;
.super Ljava/lang/Object;
.source "SqlDatabaseImpl.java"

# interfaces
.implements Lcom/metamoji/sqldb/SqlConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sqldb/SqlDatabaseImpl;->executeQuery(Ljava/lang/String;Ljava/util/Map;)Lcom/metamoji/sqldb/SqlResultSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/sqldb/SqlConsumer<",
        "Lcom/metamoji/sqldb/SqlPreparedStatement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/sqldb/SqlDatabaseImpl;


# direct methods
.method constructor <init>(Lcom/metamoji/sqldb/SqlDatabaseImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lcom/metamoji/sqldb/SqlDatabaseImpl$3;->this$0:Lcom/metamoji/sqldb/SqlDatabaseImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/metamoji/sqldb/SqlPreparedStatement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/metamoji/sqldb/SqlDatabaseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 235
    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    :cond_0
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

    .line 231
    check-cast p1, Lcom/metamoji/sqldb/SqlPreparedStatement;

    invoke-virtual {p0, p1}, Lcom/metamoji/sqldb/SqlDatabaseImpl$3;->accept(Lcom/metamoji/sqldb/SqlPreparedStatement;)V

    return-void
.end method
