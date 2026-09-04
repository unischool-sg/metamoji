.class public interface abstract Lcom/metamoji/un/draw2/module/undo/DrUndoManager;
.super Ljava/lang/Object;
.source "DrUndoManager.java"


# virtual methods
.method public abstract beginRegistration()V
.end method

.method public abstract cancelRegistration()V
.end method

.method public abstract delayEndRegistration()Z
.end method

.method public abstract endRegistration()V
.end method

.method public abstract isRegistering()Z
.end method

.method public abstract registerUndoModel(Lcom/metamoji/df/model/IModel;)V
.end method

.method public abstract setDelayEndRegistration(Z)V
.end method

.method public abstract setNeedIntegrationToUndoModel()V
.end method

.method public abstract undoModel()Lcom/metamoji/df/model/IModel;
.end method
