.class public Lcom/metamoji/df/model/ModelFactory;
.super Ljava/lang/Object;
.source "ModelFactory.java"


# static fields
.field private static modelCreators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModelCreator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newModel(Ljava/lang/String;Lcom/metamoji/df/model/ModelManager;I)Lcom/metamoji/df/model/Model;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 46
    sget-object v1, Lcom/metamoji/df/model/ModelFactory;->modelCreators:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 47
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/IModelCreator;

    .line 48
    invoke-interface {v0, p0, p1, p2}, Lcom/metamoji/df/model/IModelCreator;->newModel(Ljava/lang/String;Lcom/metamoji/df/model/ModelManager;I)Lcom/metamoji/df/model/Model;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_1
    if-nez v0, :cond_2

    .line 55
    new-instance p0, Lcom/metamoji/df/model/Model;

    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/model/Model;-><init>(Lcom/metamoji/df/model/ModelManager;I)V

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static registerModelCreator(Lcom/metamoji/df/model/IModelCreator;)V
    .locals 1

    .line 21
    sget-object v0, Lcom/metamoji/df/model/ModelFactory;->modelCreators:Ljava/util/List;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/metamoji/df/model/ModelFactory;->modelCreators:Ljava/util/List;

    .line 24
    :cond_0
    sget-object v0, Lcom/metamoji/df/model/ModelFactory;->modelCreators:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static unregisterModelCreator(Lcom/metamoji/df/model/IModelCreator;)V
    .locals 1

    .line 32
    sget-object v0, Lcom/metamoji/df/model/ModelFactory;->modelCreators:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
