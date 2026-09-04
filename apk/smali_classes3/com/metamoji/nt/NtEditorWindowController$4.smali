.class Lcom/metamoji/nt/NtEditorWindowController$4;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->genericEditDocument(Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;ZLcom/metamoji/cm/CmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$discardOption:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

.field final synthetic val$editOption:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

.field final synthetic val$mruItem:Lcom/metamoji/nt/NtMRUDocList$ItemBase;

.field final synthetic val$onCompleted:Lcom/metamoji/nt/NtEditorWindowController$GenericEditDocumentCompleted;

.field final synthetic val$options:Lcom/metamoji/cm/CmContext;

.field final synthetic val$prepareEditor:Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$GenericEditDocumentCompleted;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 683
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$4;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$4;->val$discardOption:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    iput-object p3, p0, Lcom/metamoji/nt/NtEditorWindowController$4;->val$prepareEditor:Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;

    iput-object p4, p0, Lcom/metamoji/nt/NtEditorWindowController$4;->val$options:Lcom/metamoji/cm/CmContext;

    iput-object p5, p0, Lcom/metamoji/nt/NtEditorWindowController$4;->val$editOption:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    iput-object p6, p0, Lcom/metamoji/nt/NtEditorWindowController$4;->val$mruItem:Lcom/metamoji/nt/NtMRUDocList$ItemBase;

    iput-object p7, p0, Lcom/metamoji/nt/NtEditorWindowController$4;->val$onCompleted:Lcom/metamoji/nt/NtEditorWindowController$GenericEditDocumentCompleted;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 687
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$4;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    .line 690
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->closeDetailWindow()V

    .line 693
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$4;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v2, p0, Lcom/metamoji/nt/NtEditorWindowController$4;->val$discardOption:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtEditorWindowController;->closeDocument(Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;)V

    .line 695
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$4;->val$prepareEditor:Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;

    invoke-interface {v1}, Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;->createDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 708
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->resetNoteLoadingError()V

    .line 711
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$4;->val$options:Lcom/metamoji/cm/CmContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 712
    const-string v3, "pageId"

    invoke-virtual {v1, v3, v2}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    :cond_0
    move-object v7, v2

    .line 714
    iget-object v2, p0, Lcom/metamoji/nt/NtEditorWindowController$4;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getOwnerView()Lcom/metamoji/nt/INtOwnerView;

    move-result-object v3

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getDisplaySize()Lcom/metamoji/cm/SizeF;

    move-result-object v5

    iget-object v6, p0, Lcom/metamoji/nt/NtEditorWindowController$4;->val$editOption:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    iget-object v8, p0, Lcom/metamoji/nt/NtEditorWindowController$4;->val$mruItem:Lcom/metamoji/nt/NtMRUDocList$ItemBase;

    iget-object v9, p0, Lcom/metamoji/nt/NtEditorWindowController$4;->val$onCompleted:Lcom/metamoji/nt/NtEditorWindowController$GenericEditDocumentCompleted;

    invoke-virtual/range {v2 .. v9}, Lcom/metamoji/nt/NtEditorWindowController;->editDocument(Lcom/metamoji/df/controller/IOwnerView;Lcom/metamoji/nt/doceditor/NtDocumentEditor;Lcom/metamoji/cm/SizeF;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Ljava/lang/String;Lcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;)V

    return-void

    .line 697
    :cond_1
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "DocumentEditor creation error."

    invoke-direct {v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
