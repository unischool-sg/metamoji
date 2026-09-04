.class Lcom/metamoji/sqldb/SqlThreadContext;
.super Ljava/lang/Object;
.source "SqlThreadContext.java"


# static fields
.field static final AUTO_COMMIT:Ljava/lang/String; = "autoCommit"

.field static final BEGUN_TRANSACTION:Ljava/lang/String; = "begunTransaction"

.field static final BEGUN_UPDATE:Ljava/lang/String; = "begunUpdate"

.field private static context:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private databaseFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/metamoji/sqldb/SqlThreadContext$1;

    invoke-direct {v0}, Lcom/metamoji/sqldb/SqlThreadContext$1;-><init>()V

    sput-object v0, Lcom/metamoji/sqldb/SqlThreadContext;->context:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/metamoji/sqldb/SqlThreadContext;->databaseFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlThreadContext;->getThreadLocalMapForDatabase()Ljava/util/Map;

    move-result-object v0

    .line 37
    const-string v1, "autoCommit"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "begunUpdate"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "begunTransaction"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method containsKey(Ljava/lang/String;)Z
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlThreadContext;->getThreadLocalMapForDatabase()Ljava/util/Map;

    move-result-object v0

    .line 44
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method getThreadLocalMapForDatabase()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 93
    sget-object v0, Lcom/metamoji/sqldb/SqlThreadContext;->context:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/metamoji/sqldb/SqlThreadContext;->databaseFilePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 96
    sget-object v1, Lcom/metamoji/sqldb/SqlThreadContext;->context:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/metamoji/sqldb/SqlThreadContext;->databaseFilePath:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method isAutoCommit()Z
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlThreadContext;->getThreadLocalMapForDatabase()Ljava/util/Map;

    move-result-object v0

    .line 49
    const-string v1, "autoCommit"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method isBegunTransaction()Z
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlThreadContext;->getThreadLocalMapForDatabase()Ljava/util/Map;

    move-result-object v0

    .line 79
    const-string v1, "begunTransaction"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isBegunUpdate()Z
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlThreadContext;->getThreadLocalMapForDatabase()Ljava/util/Map;

    move-result-object v0

    .line 64
    const-string v1, "begunUpdate"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setAutoCommit(Z)V
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlThreadContext;->getThreadLocalMapForDatabase()Ljava/util/Map;

    move-result-object v0

    .line 59
    const-string v1, "autoCommit"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setBegunTransaction(Z)V
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlThreadContext;->getThreadLocalMapForDatabase()Ljava/util/Map;

    move-result-object v0

    .line 89
    const-string v1, "begunTransaction"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setBegunUpdate(Z)V
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/metamoji/sqldb/SqlThreadContext;->getThreadLocalMapForDatabase()Ljava/util/Map;

    move-result-object v0

    .line 74
    const-string v1, "begunUpdate"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
