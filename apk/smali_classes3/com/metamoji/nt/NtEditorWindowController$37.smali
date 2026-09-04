.class Lcom/metamoji/nt/NtEditorWindowController$37;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->handleSelectDocNewPage(Lcom/metamoji/cm/CmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$dlg:Lcom/metamoji/forSchool/ui/ScSelectNote;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/forSchool/ui/ScSelectNote;)V
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

    .line 4672
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$37;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$37;->val$dlg:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 4676
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$37;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4678
    iget-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$37;->val$dlg:Lcom/metamoji/forSchool/ui/ScSelectNote;

    iget-object p2, p2, Lcom/metamoji/forSchool/ui/ScSelectNote;->DocumentID:Ljava/lang/String;

    iget-object p3, p0, Lcom/metamoji/nt/NtEditorWindowController$37;->val$dlg:Lcom/metamoji/forSchool/ui/ScSelectNote;

    iget-object p3, p3, Lcom/metamoji/forSchool/ui/ScSelectNote;->DriveID:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/nt/NtNoteController;->addPageWithDoc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
