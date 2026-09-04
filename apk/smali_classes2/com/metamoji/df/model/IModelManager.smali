.class public interface abstract Lcom/metamoji/df/model/IModelManager;
.super Ljava/lang/Object;
.source "IModelManager.java"


# virtual methods
.method public abstract addChildModel(II)V
.end method

.method public abstract addUndo(Lcom/metamoji/df/model/IModel;)V
.end method

.method public abstract callUndoPerformer(Lcom/metamoji/df/model/IModel;Z)V
.end method

.method public abstract callUndoPerformerForCheckVersion(Lcom/metamoji/df/model/IModel;)Z
.end method

.method public abstract canRedo()Z
.end method

.method public abstract canUndo()Z
.end method

.method public abstract checkUndoVersion()Z
.end method

.method public abstract cleanupModels(Lcom/metamoji/df/model/ModelManagerCleanupContext;)V
.end method

.method public abstract clearAllUndo()V
.end method

.method public abstract close()V
.end method

.method public abstract ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V
.end method

.method public abstract getModelByID(I)Lcom/metamoji/df/model/IModel;
.end method

.method public abstract getOnMemoryModelAsByteArray()[B
.end method

.method public abstract getRootModel()Lcom/metamoji/df/model/IModel;
.end method

.method public abstract getUsedVersionInfo()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract importModel(Lcom/metamoji/df/model/IModel;ZLcom/metamoji/df/model/ModelManagerImportContext;)Lcom/metamoji/df/model/IModel;
.end method

.method public abstract importModels(Ljava/util/List;ZLcom/metamoji/df/model/ModelManagerImportContext;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;Z",
            "Lcom/metamoji/df/model/ModelManagerImportContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lock()V
.end method

.method public abstract newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;
.end method

.method public abstract redo()V
.end method

.method public abstract registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V
.end method

.method public abstract replaceRootModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
.end method

.method public abstract setUsedVersionInfo(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract undo()V
.end method

.method public abstract unlock()V
.end method
