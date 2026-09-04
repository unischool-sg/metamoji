.class public Lcom/metamoji/ctold/CtTaggableObjectResolver;
.super Ljava/lang/Object;
.source "CtTaggableObjectResolver.java"


# instance fields
.field _controller:Lcom/metamoji/df/controller/DfController;

.field _objectIdToModel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/DfController;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/metamoji/ctold/CtTaggableObjectResolver;->_controller:Lcom/metamoji/df/controller/DfController;

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/metamoji/ctold/CtTaggableObjectResolver;->_objectIdToModel:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method objectIdToModel(Lcom/metamoji/df/controller/DfController;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/controller/DfController;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createIdentifierModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object v0

    .line 82
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createIdentifierModelVisitor()Lcom/metamoji/df/controller/IModelVisitor;

    move-result-object v1

    .line 83
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 84
    new-instance v3, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;

    sget-object v4, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->CollectModel:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    invoke-direct {v3, v1, v2, v4}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;-><init>(Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/Map;Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;)V

    .line 86
    invoke-virtual {p1}, Lcom/metamoji/df/controller/DfController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    return-object v2
.end method

.method public taggableObjectFor(Ljava/lang/String;)Lcom/metamoji/ctold/CtTaggableObject;
    .locals 2

    .line 41
    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ctold/CtTaggableObjectResolver;->_objectIdToModel:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/metamoji/ctold/CtTaggableObjectResolver;->_controller:Lcom/metamoji/df/controller/DfController;

    invoke-virtual {p0, v0}, Lcom/metamoji/ctold/CtTaggableObjectResolver;->objectIdToModel(Lcom/metamoji/df/controller/DfController;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ctold/CtTaggableObjectResolver;->_objectIdToModel:Ljava/util/Map;

    .line 45
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    sget-object v0, Lcom/metamoji/ctold/CtTaggableObjectResolver$1;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectType(Ljava/lang/String;)Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ctold/CtTaggableObjectResolver;->_objectIdToModel:Ljava/util/Map;

    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toOwnerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_3

    .line 65
    iget-object v1, p0, Lcom/metamoji/ctold/CtTaggableObjectResolver;->_controller:Lcom/metamoji/df/controller/DfController;

    invoke-virtual {v1, v0}, Lcom/metamoji/df/controller/DfController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 67
    instance-of v1, v0, Lcom/metamoji/nt/NtUnitController;

    if-eqz v1, :cond_3

    .line 68
    check-cast v0, Lcom/metamoji/nt/NtUnitController;

    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtUnitController;->getTaggableObject(Ljava/lang/String;)Lcom/metamoji/ctold/CtTaggableObject;

    move-result-object p1

    return-object p1

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ctold/CtTaggableObjectResolver;->_objectIdToModel:Ljava/util/Map;

    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    if-eqz p1, :cond_3

    .line 52
    iget-object v0, p0, Lcom/metamoji/ctold/CtTaggableObjectResolver;->_controller:Lcom/metamoji/df/controller/DfController;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/DfController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 54
    instance-of v0, p1, Lcom/metamoji/ctold/CtTaggableObject;

    if-eqz v0, :cond_3

    .line 55
    check-cast p1, Lcom/metamoji/ctold/CtTaggableObject;

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 45
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
