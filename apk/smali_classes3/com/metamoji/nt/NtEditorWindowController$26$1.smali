.class Lcom/metamoji/nt/NtEditorWindowController$26$1;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController$26;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtEditorWindowController$26;

.field final synthetic val$docEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController$26;Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V
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

    .line 3851
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$26$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$26;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$26$1;->val$docEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;
    .locals 2

    .line 3855
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$26$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$26;

    iget-object v0, v0, Lcom/metamoji/nt/NtEditorWindowController$26;->val$encryptor:Lcom/metamoji/cm/PBE;

    if-eqz v0, :cond_0

    .line 3856
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$26$1;->val$docEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$26$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$26;

    iget-object v1, v1, Lcom/metamoji/nt/NtEditorWindowController$26;->val$encryptor:Lcom/metamoji/cm/PBE;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->setEncryptor(Lcom/metamoji/cm/PBE;)V

    .line 3858
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$26$1;->val$docEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    return-object v0
.end method
