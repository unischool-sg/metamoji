.class Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput$1;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Lcom/metamoji/un/text/ITUInputConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;->createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4485
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyBackgroundColorToMazec()V
    .locals 0

    return-void
.end method

.method public endReconvertTaskIfNeeded()V
    .locals 0

    return-void
.end method

.method public getComposingSpan()Lcom/metamoji/un/text/model/TextRange;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMazecAction()Lcom/metamoji/un/text/MazecAction;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextModel()Lcom/metamoji/un/text/model/TextModel;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUndoDatasForComposingText()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public insertStrokes(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
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

    return-void
.end method

.method public requestCursorUpdates(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public selectRangeAfterSendStrokes(I)V
    .locals 0

    return-void
.end method

.method public setComposingSpan(Lcom/metamoji/un/text/model/TextRange;)V
    .locals 0

    return-void
.end method

.method public setDuringInsertComposingText(Z)V
    .locals 0

    return-void
.end method

.method public setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;)V
    .locals 0

    return-void
.end method

.method public setQueueing(Z)V
    .locals 0

    return-void
.end method

.method public setSupportReedit(Z)V
    .locals 0

    return-void
.end method

.method public skipStrokeReedit()V
    .locals 0

    return-void
.end method

.method public updateImmSelection()V
    .locals 0

    return-void
.end method
