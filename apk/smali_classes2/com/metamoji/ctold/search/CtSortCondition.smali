.class public Lcom/metamoji/ctold/search/CtSortCondition;
.super Ljava/lang/Object;
.source "CtSortCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ctold/search/CtSortCondition$Builder;
    }
.end annotation


# static fields
.field private static final CT_SORT_CONDITION_MODEL_SORT_KEYS:Ljava/lang/String; = "ks"

.field private static final CT_SORT_CONDITION_MODEL_TYPE:Ljava/lang/String; = "CTSC"

.field private static final CT_SORT_CONDITION_MODEL_VERSION:I = 0x1


# instance fields
.field private sortKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/search/CtSortKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    const-string v1, "ks"

    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    .line 36
    new-instance v2, Lcom/metamoji/ctold/search/CtSortKey;

    invoke-direct {v2, v1}, Lcom/metamoji/ctold/search/CtSortKey;-><init>(Lcom/metamoji/df/model/IModel;)V

    .line 37
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/search/CtSortCondition;->sortKeys:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/search/CtSortKey;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/search/CtSortCondition;->sortKeys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 47
    const-string v0, "CTSC"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const/4 v1, 0x1

    .line 48
    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iget-object v2, p0, Lcom/metamoji/ctold/search/CtSortCondition;->sortKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ctold/search/CtSortKey;

    .line 51
    invoke-virtual {v3, p1}, Lcom/metamoji/ctold/search/CtSortKey;->getModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    .line 52
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :cond_0
    const-string p1, "ks"

    invoke-interface {v0, p1, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public getSortKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/search/CtSortKey;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtSortCondition;->sortKeys:Ljava/util/List;

    return-object v0
.end method
