.class public Lcom/metamoji/ctold/search/CtSearchResult;
.super Ljava/lang/Object;
.source "CtSearchResult.java"


# instance fields
.field private objectReferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/object/CtObjectReference;",
            ">;"
        }
    .end annotation
.end field

.field private searchCondition:Lcom/metamoji/ctold/search/CtSearchCondition;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/metamoji/ctold/search/CtSearchCondition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/object/CtObjectReference;",
            ">;",
            "Lcom/metamoji/ctold/search/CtSearchCondition;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/search/CtSearchResult;->objectReferences:Ljava/util/List;

    .line 28
    iput-object p2, p0, Lcom/metamoji/ctold/search/CtSearchResult;->searchCondition:Lcom/metamoji/ctold/search/CtSearchCondition;

    return-void
.end method


# virtual methods
.method public getObjectReferences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/object/CtObjectReference;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtSearchResult;->objectReferences:Ljava/util/List;

    return-object v0
.end method

.method public getObjectReferencesSortedByPage(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/object/CtObjectReference;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-virtual {p0}, Lcom/metamoji/ctold/search/CtSearchResult;->getPageCluster()Ljava/util/Map;

    move-result-object v1

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 58
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 60
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPageCluster()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/object/CtObjectReference;",
            ">;>;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/metamoji/ctold/search/CtSearchResult;->objectReferences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ctold/object/CtObjectReference;

    .line 73
    invoke-interface {v2}, Lcom/metamoji/ctold/object/CtObjectReference;->getPageId()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_0

    .line 76
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSearchCondition()Lcom/metamoji/ctold/search/CtSearchCondition;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtSearchResult;->searchCondition:Lcom/metamoji/ctold/search/CtSearchCondition;

    return-object v0
.end method
