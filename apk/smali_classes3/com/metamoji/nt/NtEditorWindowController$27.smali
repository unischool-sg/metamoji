.class Lcom/metamoji/nt/NtEditorWindowController$27;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->handleCopyCurrentNote(Lcom/metamoji/cm/CmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$docID:Ljava/lang/String;

.field final synthetic val$driveID:Ljava/lang/String;

.field final synthetic val$encryptor:Lcom/metamoji/cm/PBE;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cm/PBE;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 3972
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$27;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$27;->val$driveID:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/nt/NtEditorWindowController$27;->val$docID:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/nt/NtEditorWindowController$27;->val$encryptor:Lcom/metamoji/cm/PBE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;
    .locals 2

    .line 3976
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$27;->val$driveID:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$27;->val$docID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/dvm/DvmUtil;->editCopiedDocument(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    if-eqz v0, :cond_1

    .line 3980
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$27;->val$encryptor:Lcom/metamoji/cm/PBE;

    if-eqz v1, :cond_0

    .line 3982
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->setEncryptor(Lcom/metamoji/cm/PBE;)V

    :cond_0
    return-object v0

    .line 3978
    :cond_1
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "handleCopyCurrentNote() : copy document error."

    invoke-direct {v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
