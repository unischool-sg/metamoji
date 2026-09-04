.class Lcom/metamoji/un/text/SearchWordUtil$1$1;
.super Ljava/lang/Object;
.source "SearchWordUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/SearchWordUtil$1;->perform(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/SearchWordUtil$1;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/SearchWordUtil$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 746
    iput-object p1, p0, Lcom/metamoji/un/text/SearchWordUtil$1$1;->this$0:Lcom/metamoji/un/text/SearchWordUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 753
    iget-object v0, p0, Lcom/metamoji/un/text/SearchWordUtil$1$1;->this$0:Lcom/metamoji/un/text/SearchWordUtil$1;

    iget-object v0, v0, Lcom/metamoji/un/text/SearchWordUtil$1;->val$noteCtrlr:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq v0, v1, :cond_4

    .line 754
    iget-object v0, p0, Lcom/metamoji/un/text/SearchWordUtil$1$1;->this$0:Lcom/metamoji/un/text/SearchWordUtil$1;

    iget-object v0, v0, Lcom/metamoji/un/text/SearchWordUtil$1;->val$noteCtrlr:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/text/SearchWordUtil$1$1;->this$0:Lcom/metamoji/un/text/SearchWordUtil$1;

    iget-object v1, v1, Lcom/metamoji/un/text/SearchWordUtil$1;->val$textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v0, :cond_5

    .line 756
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->canFocus()Z

    move-result v1

    .line 761
    iget-object v2, p0, Lcom/metamoji/un/text/SearchWordUtil$1$1;->this$0:Lcom/metamoji/un/text/SearchWordUtil$1;

    iget-object v2, v2, Lcom/metamoji/un/text/SearchWordUtil$1;->val$noteCtrlr:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    move v1, v4

    :cond_0
    if-eqz v1, :cond_1

    .line 766
    iget-object v2, p0, Lcom/metamoji/un/text/SearchWordUtil$1$1;->this$0:Lcom/metamoji/un/text/SearchWordUtil$1;

    iget-object v2, v2, Lcom/metamoji/un/text/SearchWordUtil$1;->val$noteCtrlr:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_TEXT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    if-eqz v4, :cond_3

    .line 771
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 774
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->closeDetailWindow()V

    .line 778
    :cond_2
    iget-object v1, p0, Lcom/metamoji/un/text/SearchWordUtil$1$1;->this$0:Lcom/metamoji/un/text/SearchWordUtil$1;

    iget-object v1, v1, Lcom/metamoji/un/text/SearchWordUtil$1;->val$noteCtrlr:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->endTextSelectModeIfNeeded()V

    .line 779
    iget-object v1, p0, Lcom/metamoji/un/text/SearchWordUtil$1$1;->this$0:Lcom/metamoji/un/text/SearchWordUtil$1;

    iget-object v1, v1, Lcom/metamoji/un/text/SearchWordUtil$1;->val$noteCtrlr:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtNoteController;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)V

    .line 780
    iget-object v1, p0, Lcom/metamoji/un/text/SearchWordUtil$1$1;->this$0:Lcom/metamoji/un/text/SearchWordUtil$1;

    iget-object v1, v1, Lcom/metamoji/un/text/SearchWordUtil$1;->val$range:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    goto :goto_1

    .line 783
    :cond_3
    iget-object v1, p0, Lcom/metamoji/un/text/SearchWordUtil$1$1;->this$0:Lcom/metamoji/un/text/SearchWordUtil$1;

    iget-object v1, v1, Lcom/metamoji/un/text/SearchWordUtil$1;->val$range:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->setSearchResultTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 787
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getViewForSoftInput()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtEditorWindowController;->hideSoftInput(Landroid/view/View;)Z

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_1
    const/4 v1, 0x1

    .line 793
    invoke-static {v0, v1}, Lcom/metamoji/un/text/SearchWordUtil;->processAfterSearchText(Lcom/metamoji/un/text/UnTextUnit;Z)V

    return-void
.end method
