.class Lcom/metamoji/nt/NtEditorWindowController$32$1;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController$32;->openDriveDocumentEditor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtEditorWindowController$32;

.field final synthetic val$copiedDocID:Ljava/lang/String;

.field final synthetic val$docID:Ljava/lang/String;

.field final synthetic val$driveID:Ljava/lang/String;

.field final synthetic val$isReadOnly:Z


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController$32;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4295
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$32$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$32;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$32$1;->val$docID:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/nt/NtEditorWindowController$32$1;->val$copiedDocID:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/metamoji/nt/NtEditorWindowController$32$1;->val$isReadOnly:Z

    iput-object p5, p0, Lcom/metamoji/nt/NtEditorWindowController$32$1;->val$driveID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;
    .locals 4

    .line 4298
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$32$1;->val$docID:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4301
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$32$1;->val$copiedDocID:Ljava/lang/String;

    .line 4304
    iget-object v2, p0, Lcom/metamoji/nt/NtEditorWindowController$32$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$32;

    if-eqz v0, :cond_1

    .line 4302
    iget-object v0, v2, Lcom/metamoji/nt/NtEditorWindowController$32;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v2, p0, Lcom/metamoji/nt/NtEditorWindowController$32$1;->val$copiedDocID:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/metamoji/nt/NtEditorWindowController$32$1;->val$isReadOnly:Z

    invoke-virtual {v0, v2, v1, v3}, Lcom/metamoji/nt/NtEditorWindowController;->getDriveDocumentEditor(Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v0

    return-object v0

    .line 4304
    :cond_1
    iget-object v0, v2, Lcom/metamoji/nt/NtEditorWindowController$32;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$32$1;->val$docID:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/nt/NtEditorWindowController$32$1;->val$driveID:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/metamoji/nt/NtEditorWindowController$32$1;->val$isReadOnly:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/nt/NtEditorWindowController;->getDriveDocumentEditor(Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v0

    return-object v0
.end method
