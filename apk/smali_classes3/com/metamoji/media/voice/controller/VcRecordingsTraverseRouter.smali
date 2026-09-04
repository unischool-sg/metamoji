.class public Lcom/metamoji/media/voice/controller/VcRecordingsTraverseRouter;
.super Ljava/lang/Object;
.source "VcRecordingsTraverseRouter.java"

# interfaces
.implements Lcom/metamoji/df/controller/IModelTraverseRouter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public route(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/ModelVisitContext;)V
    .locals 3

    .line 24
    const-string v0, "recordings"

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 31
    invoke-static {v1}, Lcom/metamoji/df/model/ModelProperty;->isPreloadProperty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 32
    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 34
    invoke-virtual {p2, v1, p3}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    .line 35
    invoke-virtual {p3}, Lcom/metamoji/df/controller/ModelVisitContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    :goto_0
    return-void
.end method
