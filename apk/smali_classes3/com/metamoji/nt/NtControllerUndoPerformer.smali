.class public abstract Lcom/metamoji/nt/NtControllerUndoPerformer;
.super Ljava/lang/Object;
.source "NtControllerUndoPerformer.java"

# interfaces
.implements Lcom/metamoji/df/model/IUndoPerformer;


# static fields
.field static final MMJNT_MODELPROP_CONTROLLERUNDOPERFORMER_TARGET:Ljava/lang/String; = "_tcm"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 40
    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 41
    const-string v0, "_tcm"

    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-object p1
.end method

.method public static makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lcom/metamoji/nt/NtControllerUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 25
    invoke-interface {p0, p2}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    return-object p0
.end method


# virtual methods
.method public abstract checkUndoModelVersion(Lcom/metamoji/df/model/IModel;)Z
.end method

.method public performUndoOrRedo(Lcom/metamoji/df/model/IModel;Z)V
    .locals 2

    .line 53
    const-string v0, "_tcm"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    .line 55
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtDocument;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p2, p1}, Lcom/metamoji/df/controller/DfController;->performUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    :cond_0
    return-void
.end method
