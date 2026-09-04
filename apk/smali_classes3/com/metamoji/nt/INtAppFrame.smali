.class public interface abstract Lcom/metamoji/nt/INtAppFrame;
.super Ljava/lang/Object;
.source "INtAppFrame.java"


# virtual methods
.method public abstract addUndoOrRedoListener(Lcom/metamoji/nt/IUndoOrRedoEventHandler;)V
.end method

.method public abstract getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;
.end method

.method public abstract getFocusUnit()Lcom/metamoji/nt/NtUnitController;
.end method

.method public abstract getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;
.end method

.method public abstract removeUndoOrRedoListener(Lcom/metamoji/nt/IUndoOrRedoEventHandler;)V
.end method

.method public abstract requestKillFocus()V
.end method

.method public abstract requestKillFocus(Lcom/metamoji/nt/NtFocusOption;)V
.end method

.method public abstract requestSetFocus(Lcom/metamoji/nt/NtUnitController;)V
.end method

.method public abstract requestSetFocus(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)V
.end method

.method public abstract shareAttachmentsOnCollabo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract shareAttachmentsOnCollabo(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract shareAttachmentsOnCollaboByTickets(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
