.class Lcom/metamoji/nt/NtEditorWindowController$25$1;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController$25;->onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtEditorWindowController$25;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController$25;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3661
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$25$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3663
    new-instance v0, Lcom/metamoji/nt/NtNoteTemplateSettings;

    invoke-direct {v0}, Lcom/metamoji/nt/NtNoteTemplateSettings;-><init>()V

    .line 3664
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$25$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$25;

    iget-object v1, v1, Lcom/metamoji/nt/NtEditorWindowController$25;->val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getTitleRule()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->titleRule:Ljava/lang/String;

    .line 3665
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$25$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$25;

    iget-object v1, v1, Lcom/metamoji/nt/NtEditorWindowController$25;->val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getHeader()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->header:Ljava/lang/String;

    .line 3666
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$25$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$25;

    iget-object v1, v1, Lcom/metamoji/nt/NtEditorWindowController$25;->val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getFooter()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->footer:Ljava/lang/String;

    .line 3667
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$25$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$25;

    iget-object v1, v1, Lcom/metamoji/nt/NtEditorWindowController$25;->val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getFrontCover()Z

    move-result v1

    iput-boolean v1, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->hasFrontCover:Z

    .line 3668
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$25$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$25;

    iget-object v1, v1, Lcom/metamoji/nt/NtEditorWindowController$25;->val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getNoFrontCoverOnPrinting()Z

    move-result v1

    iput-boolean v1, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->noFrontCoverOnPrinting:Z

    .line 3669
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$25$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$25;

    iget-object v1, v1, Lcom/metamoji/nt/NtEditorWindowController$25;->val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getUseNoteSettingsForText()Z

    move-result v1

    iput-boolean v1, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->useNoteTextSettings:Z

    .line 3670
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$25$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$25;

    iget-object v1, v1, Lcom/metamoji/nt/NtEditorWindowController$25;->val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getUnitStyles()Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    .line 3671
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$25$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$25;

    iget-object v1, v1, Lcom/metamoji/nt/NtEditorWindowController$25;->val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getShareTemplateDic()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->shareTemplateDic:Ljava/util/Map;

    .line 3672
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$25$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$25;

    iget-object v1, v1, Lcom/metamoji/nt/NtEditorWindowController$25;->val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getPasswordHash()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/nt/NtNoteTemplateSettings;->passwordHash:Ljava/lang/String;

    .line 3675
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$25$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$25;

    iget-object v1, v1, Lcom/metamoji/nt/NtEditorWindowController$25;->val$doc:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteTemplateSettings;->applyToModelMgr(Lcom/metamoji/df/model/IModelManager;)V

    .line 3677
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$25$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$25;

    iget-object v0, v0, Lcom/metamoji/nt/NtEditorWindowController$25;->val$doc:Lcom/metamoji/nt/NtDocument;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 3686
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$25$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$25;

    iget-object v0, v0, Lcom/metamoji/nt/NtEditorWindowController$25;->val$doc:Lcom/metamoji/nt/NtDocument;

    const-string v1, "MMJNtDocumentSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3687
    instance-of v1, v0, Lcom/metamoji/nt/NtDocumentSettings;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3689
    :cond_0
    check-cast v0, Lcom/metamoji/nt/NtDocumentSettings;

    .line 3690
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$25$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$25;

    iget-object v1, v1, Lcom/metamoji/nt/NtEditorWindowController$25;->val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getFrontCover()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocumentSettings;->setFrontCover(Z)V

    .line 3692
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v0, :cond_1

    .line 3694
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$25$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$25;

    iget-object v0, v0, Lcom/metamoji/nt/NtEditorWindowController$25;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->hover_refresh()V

    :cond_1
    :goto_0
    return-void
.end method
