.class public Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;
.super Ljava/lang/Object;
.source "NtTextSearchInUnitModelFactory.java"


# instance fields
.field _textSearchProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;",
            ">;"
        }
    .end annotation
.end field

.field _typeSearch:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->_textSearchProviders:Ljava/util/List;

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->_typeSearch:Z

    return-void
.end method


# virtual methods
.method public canSearchModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->_typeSearch:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->canTextSearchModel(Lcom/metamoji/df/model/IModel;)Z

    move-result p1

    return p1

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->canTextReplaceModel(Lcom/metamoji/df/model/IModel;)Z

    move-result p1

    return p1
.end method

.method public canTextReplaceModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public canTextSearchModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 62
    const-string v0, "!type"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->_textSearchProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    .line 65
    invoke-interface {v1}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->useModelTypes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->_typeSearch:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->getTextSearchProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    move-result-object p1

    return-object p1

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->getTextReplaceProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    move-result-object p1

    return-object p1
.end method

.method public getTextReplaceProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTextSearchProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;
    .locals 3

    if-eqz p1, :cond_1

    .line 117
    const-string v0, "!type"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->_textSearchProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    .line 120
    invoke-interface {v1}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->useModelTypes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 121
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public installTextSearchProvider(Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->_textSearchProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
