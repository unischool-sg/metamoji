.class public Lcom/metamoji/df/controller/ModelTreeTraverseRouter;
.super Ljava/lang/Object;
.source "ModelTreeTraverseRouter.java"

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
    .locals 1

    .line 25
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {p2, p1, p3}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    .line 28
    invoke-virtual {p3}, Lcom/metamoji/df/controller/ModelVisitContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
