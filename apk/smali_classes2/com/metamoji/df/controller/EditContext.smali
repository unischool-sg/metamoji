.class public Lcom/metamoji/df/controller/EditContext;
.super Ljava/lang/Object;
.source "EditContext.java"


# instance fields
.field private extraInfo:Ljava/lang/Object;

.field private significantUndoExist:Z

.field private undoModel:Lcom/metamoji/df/model/IModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/metamoji/df/controller/EditContext;->undoModel:Lcom/metamoji/df/model/IModel;

    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcom/metamoji/df/controller/EditContext;->significantUndoExist:Z

    .line 48
    iput-object v0, p0, Lcom/metamoji/df/controller/EditContext;->extraInfo:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addUndo(Lcom/metamoji/df/model/IModel;Z)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/metamoji/df/controller/EditContext;->undoModel:Lcom/metamoji/df/model/IModel;

    if-nez v0, :cond_0

    .line 69
    iput-object p1, p0, Lcom/metamoji/df/controller/EditContext;->undoModel:Lcom/metamoji/df/model/IModel;

    goto :goto_0

    .line 70
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "compoundundo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/metamoji/df/controller/EditContext;->undoModel:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_1

    .line 71
    invoke-interface {v1, p1}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/df/model/CompoundUndo;->newUndoModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/df/controller/EditContext;->undoModel:Lcom/metamoji/df/model/IModel;

    .line 75
    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 76
    iget-object v0, p0, Lcom/metamoji/df/controller/EditContext;->undoModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    :goto_0
    if-eqz p2, :cond_2

    const/4 p1, 0x1

    .line 80
    iput-boolean p1, p0, Lcom/metamoji/df/controller/EditContext;->significantUndoExist:Z

    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/metamoji/df/controller/EditContext;->undoModel:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->destroy()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/metamoji/df/controller/EditContext;->undoModel:Lcom/metamoji/df/model/IModel;

    :cond_0
    return-void
.end method

.method public detachUndo()Lcom/metamoji/df/model/IModel;
    .locals 3

    .line 92
    iget-boolean v0, p0, Lcom/metamoji/df/controller/EditContext;->significantUndoExist:Z

    .line 94
    iget-object v1, p0, Lcom/metamoji/df/controller/EditContext;->undoModel:Lcom/metamoji/df/model/IModel;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 95
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->destroy()V

    :cond_1
    move-object v1, v2

    .line 97
    :goto_0
    iput-object v2, p0, Lcom/metamoji/df/controller/EditContext;->undoModel:Lcom/metamoji/df/model/IModel;

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/metamoji/df/controller/EditContext;->significantUndoExist:Z

    return-object v1
.end method

.method public getExtraInfo()Ljava/lang/Object;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/df/controller/EditContext;->extraInfo:Ljava/lang/Object;

    return-object v0
.end method

.method public getUndoModel()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/metamoji/df/controller/EditContext;->undoModel:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method public isSignificantUndoExist()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/metamoji/df/controller/EditContext;->significantUndoExist:Z

    return v0
.end method

.method public setExtraInfo(Ljava/lang/Object;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/metamoji/df/controller/EditContext;->extraInfo:Ljava/lang/Object;

    return-void
.end method

.method public setSignificantUndoExist(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/metamoji/df/controller/EditContext;->significantUndoExist:Z

    return-void
.end method

.method public setUndoModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/metamoji/df/controller/EditContext;->undoModel:Lcom/metamoji/df/model/IModel;

    return-void
.end method
