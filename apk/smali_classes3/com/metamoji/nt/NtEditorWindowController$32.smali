.class Lcom/metamoji/nt/NtEditorWindowController$32;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->editNoteInDriveFromHistory(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$item:Lcom/metamoji/nt/NtMRUDocList$Item;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtMRUDocList$Item;)V
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

    .line 4291
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$32;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$32;->val$item:Lcom/metamoji/nt/NtMRUDocList$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4322
    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/metamoji/nt/NtEditorWindowController$32;->openDriveDocumentEditor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public openDriveDocumentEditor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 4294
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$32;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    new-instance v1, Lcom/metamoji/nt/NtEditorWindowController$32$1;

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move-object v6, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/nt/NtEditorWindowController$32$1;-><init>(Lcom/metamoji/nt/NtEditorWindowController$32;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object p1, v2

    sget-object v2, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->Auto:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    sget-object v3, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->FromHistory:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    iget-object v4, p1, Lcom/metamoji/nt/NtEditorWindowController$32;->val$item:Lcom/metamoji/nt/NtMRUDocList$Item;

    new-instance v5, Lcom/metamoji/nt/NtEditorWindowController$32$2;

    invoke-direct {v5, p0}, Lcom/metamoji/nt/NtEditorWindowController$32$2;-><init>(Lcom/metamoji/nt/NtEditorWindowController$32;)V

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/nt/NtEditorWindowController;->genericEditDocument(Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;Z)V

    return-void
.end method
