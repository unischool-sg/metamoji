.class public interface abstract Lcom/metamoji/un/text/ITUInputConnectionClient;
.super Ljava/lang/Object;
.source "ITUInputConnectionClient.java"


# virtual methods
.method public abstract applyBackgroundColorToMazec()V
.end method

.method public abstract endReconvertTaskIfNeeded()V
.end method

.method public abstract getComposingSpan()Lcom/metamoji/un/text/model/TextRange;
.end method

.method public abstract getMazecAction()Lcom/metamoji/un/text/MazecAction;
.end method

.method public abstract getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;
.end method

.method public abstract getTextModel()Lcom/metamoji/un/text/model/TextModel;
.end method

.method public abstract getUndoDatasForComposingText()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertStrokes(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract requestCursorUpdates(I)Z
.end method

.method public abstract selectRangeAfterSendStrokes(I)V
.end method

.method public abstract setComposingSpan(Lcom/metamoji/un/text/model/TextRange;)V
.end method

.method public abstract setDuringInsertComposingText(Z)V
.end method

.method public abstract setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;)V
.end method

.method public abstract setQueueing(Z)V
.end method

.method public abstract setSupportReedit(Z)V
.end method

.method public abstract skipStrokeReedit()V
.end method

.method public abstract updateImmSelection()V
.end method
