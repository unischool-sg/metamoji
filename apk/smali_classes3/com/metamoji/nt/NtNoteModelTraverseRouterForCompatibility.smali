.class public Lcom/metamoji/nt/NtNoteModelTraverseRouterForCompatibility;
.super Lcom/metamoji/df/controller/ModelTreeTraverseRouter;
.source "NtNoteModelTraverseRouterForCompatibility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/metamoji/df/controller/ModelTreeTraverseRouter;-><init>()V

    return-void
.end method


# virtual methods
.method public route(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/ModelVisitContext;)V
    .locals 1

    .line 23
    const-string v0, "attachments"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p2, v0, p3}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    .line 27
    invoke-virtual {p3}, Lcom/metamoji/df/controller/ModelVisitContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    const-string v0, "mediafiles"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p2, v0, p3}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    .line 38
    invoke-virtual {p3}, Lcom/metamoji/df/controller/ModelVisitContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    const-string/jumbo v0, "settings"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {p2, v0, p3}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    .line 50
    invoke-virtual {p3}, Lcom/metamoji/df/controller/ModelVisitContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 56
    :cond_2
    const-string v0, "recordings"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 58
    invoke-virtual {p2, v0, p3}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    .line 59
    invoke-virtual {p3}, Lcom/metamoji/df/controller/ModelVisitContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    .line 65
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/df/controller/ModelTreeTraverseRouter;->route(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/ModelVisitContext;)V

    return-void
.end method
