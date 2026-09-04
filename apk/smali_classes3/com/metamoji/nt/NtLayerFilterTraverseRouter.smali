.class public Lcom/metamoji/nt/NtLayerFilterTraverseRouter;
.super Ljava/lang/Object;
.source "NtLayerFilterTraverseRouter.java"

# interfaces
.implements Lcom/metamoji/df/controller/IModelTraverseRouter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtLayerFilterTraverseRouter$FilterProc;
    }
.end annotation


# instance fields
.field private _filterProc:Lcom/metamoji/nt/NtLayerFilterTraverseRouter$FilterProc;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtLayerFilterTraverseRouter$FilterProc;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/metamoji/nt/NtLayerFilterTraverseRouter;->_filterProc:Lcom/metamoji/nt/NtLayerFilterTraverseRouter$FilterProc;

    return-void
.end method


# virtual methods
.method public route(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/ModelVisitContext;)V
    .locals 3

    .line 35
    const-string v0, "$page"

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 40
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    .line 42
    const-string v1, "$layer"

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/metamoji/nt/NtLayerFilterTraverseRouter;->_filterProc:Lcom/metamoji/nt/NtLayerFilterTraverseRouter$FilterProc;

    invoke-interface {v1, p1, v0}, Lcom/metamoji/nt/NtLayerFilterTraverseRouter$FilterProc;->perform(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    invoke-virtual {p2, v0, p3}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p2, v0, p3}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    .line 51
    :cond_2
    :goto_1
    invoke-virtual {p3}, Lcom/metamoji/df/controller/ModelVisitContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 54
    :cond_3
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method
