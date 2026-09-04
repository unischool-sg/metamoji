.class Lcom/metamoji/df/model/CompoundUndoPerformer;
.super Ljava/lang/Object;
.source "CompoundUndo.java"

# interfaces
.implements Lcom/metamoji/df/model/IUndoPerformer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUndoModelVersion(Lcom/metamoji/df/model/IModel;)Z
    .locals 4

    .line 71
    const-string v0, "!version"

    const v1, 0x7fffffff

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    return v1

    .line 78
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 79
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 81
    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModelManager;->callUndoPerformerForCheckVersion(Lcom/metamoji/df/model/IModel;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    .line 84
    :cond_1
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public performUndoOrRedo(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    .line 62
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 63
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getLastChild()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 65
    invoke-interface {v0, p1, p2}, Lcom/metamoji/df/model/IModelManager;->callUndoPerformer(Lcom/metamoji/df/model/IModel;Z)V

    if-eqz p2, :cond_1

    .line 66
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getPrevSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-void
.end method
