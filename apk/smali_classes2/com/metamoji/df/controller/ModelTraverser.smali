.class public Lcom/metamoji/df/controller/ModelTraverser;
.super Ljava/lang/Object;
.source "ModelTraverser.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _defaultTraverseRouter:Lcom/metamoji/df/controller/IModelTraverseRouter;

.field private _traverseRouters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/controller/IModelTraverseRouter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/IModelTraverseRouter;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/metamoji/df/controller/ModelTraverser;->_defaultTraverseRouter:Lcom/metamoji/df/controller/IModelTraverseRouter;

    .line 17
    iput-object v0, p0, Lcom/metamoji/df/controller/ModelTraverser;->_traverseRouters:Ljava/util/Map;

    if-nez p1, :cond_0

    .line 26
    new-instance p1, Lcom/metamoji/df/controller/ModelTreeTraverseRouter;

    invoke-direct {p1}, Lcom/metamoji/df/controller/ModelTreeTraverseRouter;-><init>()V

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/metamoji/df/controller/ModelTraverser;->_defaultTraverseRouter:Lcom/metamoji/df/controller/IModelTraverseRouter;

    return-void
.end method

.method private getRouterForType(Ljava/lang/String;)Lcom/metamoji/df/controller/IModelTraverseRouter;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/metamoji/df/controller/ModelTraverser;->_traverseRouters:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/controller/IModelTraverseRouter;

    if-eqz p1, :cond_0

    return-object p1

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/metamoji/df/controller/ModelTraverser;->_defaultTraverseRouter:Lcom/metamoji/df/controller/IModelTraverseRouter;

    return-object p1
.end method


# virtual methods
.method public installTraverseRouter(Lcom/metamoji/df/controller/IModelTraverseRouter;Ljava/lang/String;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/metamoji/df/controller/ModelTraverser;->_traverseRouters:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/controller/ModelTraverser;->_traverseRouters:Ljava/util/Map;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/controller/ModelTraverser;->_traverseRouters:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V
    .locals 1

    .line 65
    invoke-virtual {p2}, Lcom/metamoji/df/controller/ModelVisitContext;->getVisitedModelSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/df/controller/ModelVisitContext;->getVisitor()Lcom/metamoji/df/controller/IModelVisitor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/metamoji/df/controller/IModelVisitor;->visit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    .line 71
    invoke-virtual {p2}, Lcom/metamoji/df/controller/ModelVisitContext;->getVisitedModelSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {p2}, Lcom/metamoji/df/controller/ModelVisitContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/df/controller/ModelTraverser;->getRouterForType(Ljava/lang/String;)Lcom/metamoji/df/controller/IModelTraverseRouter;

    move-result-object v0

    .line 80
    invoke-interface {v0, p1, p0, p2}, Lcom/metamoji/df/controller/IModelTraverseRouter;->route(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/ModelVisitContext;)V

    return-void
.end method
