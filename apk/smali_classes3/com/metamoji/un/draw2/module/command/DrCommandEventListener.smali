.class public interface abstract Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;
.super Ljava/lang/Object;
.source "DrCommandEventListener.java"


# virtual methods
.method public abstract handleDidBeginCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V
.end method

.method public abstract handleDidExecuteCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V
.end method

.method public abstract handleDidRegisterUndoModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V
.end method

.method public abstract handleDidSendCollaborationData(Ljava/lang/Object;Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V
.end method

.method public abstract handleWillEndCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V
.end method

.method public abstract handleWillExecuteCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V
.end method

.method public abstract handleWillRegisterUndoModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V
.end method

.method public abstract handleWillSendCollaborationData(Ljava/lang/Object;Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V
.end method

.method public abstract ignoreCommandEventType(Lcom/metamoji/un/draw2/module/command/DrCommandEventType;Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)Z
.end method
