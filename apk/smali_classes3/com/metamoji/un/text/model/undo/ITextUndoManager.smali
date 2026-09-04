.class public interface abstract Lcom/metamoji/un/text/model/undo/ITextUndoManager;
.super Ljava/lang/Object;
.source "ITextUndoManager.java"


# virtual methods
.method public abstract addUndoData(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract endEditTextTask()V
.end method

.method public abstract startEditTextTask(Ljava/lang/String;)V
.end method
