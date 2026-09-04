.class Lcom/metamoji/nt/NtEditorWindowController$39;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->handleApplySheetTemplate(Lcom/metamoji/cm/CmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$options:Lcom/metamoji/cm/CmContext;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4854
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$39;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$39;->val$options:Lcom/metamoji/cm/CmContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 4857
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$39;->val$options:Lcom/metamoji/cm/CmContext;

    const-string/jumbo v1, "storageFile"

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 4858
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$39;->val$options:Lcom/metamoji/cm/CmContext;

    const-string/jumbo v2, "sheetChangeType"

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    .line 4860
    sget-object v2, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->AddCover:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    if-ne v1, v2, :cond_1

    .line 4861
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    .line 4862
    const-string v3, "MMJNtDocumentSettings"

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtDocumentSettings;

    if-eqz v2, :cond_0

    .line 4863
    invoke-virtual {v2}, Lcom/metamoji/nt/NtDocumentSettings;->hasFrontCover()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 4865
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$39;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v2, p0, Lcom/metamoji/nt/NtEditorWindowController$39;->val$options:Lcom/metamoji/cm/CmContext;

    sget-object v3, Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;->ChangeCover:Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;

    invoke-static {v1, v2, v3, v0}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$maddCover(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;Ljava/io/File;)V

    return-void

    .line 4867
    :cond_0
    iget-object v2, p0, Lcom/metamoji/nt/NtEditorWindowController$39;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v3, p0, Lcom/metamoji/nt/NtEditorWindowController$39;->val$options:Lcom/metamoji/cm/CmContext;

    invoke-static {v2, v3, v1, v0}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$maddCover(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;Ljava/io/File;)V

    return-void

    .line 4870
    :cond_1
    iget-object v2, p0, Lcom/metamoji/nt/NtEditorWindowController$39;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v2, v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$mapplyFormTemplateFromStatefile(Lcom/metamoji/nt/NtEditorWindowController;Ljava/io/File;Lcom/metamoji/ui/library/sheet/LibrarySheetViewDialog$SheetChangeType;)Z

    return-void
.end method
