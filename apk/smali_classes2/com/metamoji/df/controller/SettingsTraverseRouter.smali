.class public Lcom/metamoji/df/controller/SettingsTraverseRouter;
.super Ljava/lang/Object;
.source "SettingsTraverseRouter.java"

# interfaces
.implements Lcom/metamoji/df/controller/IModelTraverseRouter;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public route(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/ModelVisitContext;)V
    .locals 3

    .line 23
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 25
    invoke-static {v1}, Lcom/metamoji/df/model/ModelProperty;->isPreloadProperty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 26
    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 27
    instance-of v2, v1, Lcom/metamoji/df/model/IModel;

    if-eqz v2, :cond_0

    .line 28
    check-cast v1, Lcom/metamoji/df/model/IModel;

    .line 29
    invoke-virtual {p2, v1, p3}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    .line 30
    invoke-virtual {p3}, Lcom/metamoji/df/controller/ModelVisitContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method
