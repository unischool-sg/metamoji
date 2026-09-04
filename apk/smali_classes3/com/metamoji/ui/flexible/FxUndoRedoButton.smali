.class public Lcom/metamoji/ui/flexible/FxUndoRedoButton;
.super Lcom/metamoji/ui/flexible/FxButton;
.source "FxUndoRedoButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field _fxmanager:Lcom/metamoji/ui/flexible/FxManager;

.field gestureDetector:Landroid/view/GestureDetector;

.field m_redoEnable:Z

.field m_undoEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/metamoji/ui/flexible/FxManager;)V
    .locals 2

    .line 22
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_UNDO_REDO_COMB:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/flexible/FxButton;-><init>(Landroid/content/Context;Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->m_undoEnable:Z

    .line 17
    iput-boolean p1, p0, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->m_redoEnable:Z

    .line 23
    iput-object p2, p0, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    .line 24
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 26
    invoke-virtual {p2}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 28
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_UNDO:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p2, v0}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 29
    iput-boolean v1, p0, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->m_undoEnable:Z

    .line 31
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_REDO:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p2, v0}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 32
    iput-boolean v1, p0, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->m_redoEnable:Z

    .line 36
    :cond_1
    iget-boolean p2, p0, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->m_redoEnable:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->m_undoEnable:Z

    if-nez p2, :cond_2

    .line 37
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->setEnabled(Z)V

    .line 39
    :cond_2
    invoke-virtual {p0, p0}, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-virtual {p0, p0}, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V
    .locals 1

    .line 45
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_UNDO:Lcom/metamoji/nt/NtCommand;

    if-ne p1, v0, :cond_0

    .line 46
    iput-boolean p2, p0, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->m_undoEnable:Z

    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_REDO:Lcom/metamoji/nt/NtCommand;

    if-ne p1, v0, :cond_3

    .line 48
    iput-boolean p2, p0, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->m_redoEnable:Z

    .line 52
    :goto_0
    iget-boolean p1, p0, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->m_undoEnable:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->m_redoEnable:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->setEnabled(Z)V

    return-void

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 61
    iget-boolean p1, p0, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->m_undoEnable:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_UNDO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v1, p0, v0, v2}, Lcom/metamoji/ui/flexible/FxManager;->execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    return-void

    .line 63
    :cond_0
    iget-boolean p1, p0, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->m_redoEnable:Z

    if-eqz p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_UNDO_REDO_COMB:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v1, p0, v0, v2}, Lcom/metamoji/ui/flexible/FxManager;->execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 70
    iget-object p1, p0, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_UNDO_REDO_COMB:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v1, 0x0

    sget-object v2, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v0, p0, v1, v2}, Lcom/metamoji/ui/flexible/FxManager;->execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    const/4 p1, 0x1

    return p1
.end method
