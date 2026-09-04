.class Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;
.super Ljava/lang/Object;
.source "NtMazecImsManager.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtMazecImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputConnectionWrapper"
.end annotation


# instance fields
.field private _ic:Landroid/view/inputmethod/InputConnection;


# direct methods
.method static bridge synthetic -$$Nest$fget_ic(Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;->_ic:Landroid/view/inputmethod/InputConnection;

    return-object p0
.end method

.method public constructor <init>(Landroid/view/inputmethod/InputConnection;)V
    .locals 0

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;->_ic:Landroid/view/inputmethod/InputConnection;

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 2

    .line 622
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$sfget_handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$11;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$11;-><init>(Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2

    .line 649
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$sfget_handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$14;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$14;-><init>(Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public closeConnection()V
    .locals 0

    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 2

    .line 577
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$sfget_handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$6;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$6;-><init>(Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;Landroid/view/inputmethod/CompletionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 0
    .param p3    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 2

    .line 586
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$sfget_handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$7;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$7;-><init>(Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;Landroid/view/inputmethod/CorrectionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2

    .line 568
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$sfget_handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$5;-><init>(Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public deleteSurroundingText(II)Z
    .locals 2

    .line 527
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$sfget_handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$1;-><init>(Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public endBatchEdit()Z
    .locals 2

    .line 631
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$sfget_handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$12;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$12;-><init>(Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public finishComposingText()Z
    .locals 2

    .line 559
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$sfget_handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$4;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$4;-><init>(Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;->_ic:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result p1

    return p1
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;->_ic:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object p1

    return-object p1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;->_ic:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;->_ic:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;->_ic:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public performContextMenuAction(I)Z
    .locals 2

    .line 613
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$sfget_handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$10;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$10;-><init>(Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public performEditorAction(I)Z
    .locals 2

    .line 604
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$sfget_handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$9;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$9;-><init>(Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    .line 667
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$sfget_handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$16;-><init>(Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public reportFullscreenMode(Z)Z
    .locals 2

    .line 658
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$sfget_handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$15;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$15;-><init>(Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public requestCursorUpdates(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 640
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$sfget_handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$13;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$13;-><init>(Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public setComposingRegion(II)Z
    .locals 2

    .line 550
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$sfget_handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$3;-><init>(Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2

    .line 541
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$sfget_handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$2;-><init>(Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public setSelection(II)Z
    .locals 2

    .line 595
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$sfget_handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper$8;-><init>(Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method
