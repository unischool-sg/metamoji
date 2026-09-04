.class public Lcom/metamoji/sqldb/SqlModelCreator;
.super Ljava/lang/Object;
.source "SqlModelCreator.java"

# interfaces
.implements Lcom/metamoji/df/model/IModelCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newModel(Ljava/lang/String;Lcom/metamoji/df/model/ModelManager;I)Lcom/metamoji/df/model/Model;
    .locals 1

    .line 40
    const-string v0, "$sqldb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    new-instance p1, Lcom/metamoji/sqldb/SqlModelImpl;

    invoke-direct {p1, p2, p3}, Lcom/metamoji/sqldb/SqlModelImpl;-><init>(Lcom/metamoji/df/model/ModelManager;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 43
    :goto_0
    check-cast p1, Lcom/metamoji/df/model/Model;

    return-object p1
.end method
