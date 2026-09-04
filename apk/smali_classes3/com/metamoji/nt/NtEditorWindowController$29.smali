.class Lcom/metamoji/nt/NtEditorWindowController$29;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->newDocTemplateFromCurrent(Lcom/metamoji/nt/NtNoteTemplateSettings;Lcom/metamoji/cm/PBE;Z)V
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

.field final synthetic val$settings:Lcom/metamoji/nt/NtNoteTemplateSettings;

.field final synthetic val$updateThumbnail:Z


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;ZLcom/metamoji/cm/PBE;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4136
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$29;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$29;->val$driveID:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/nt/NtEditorWindowController$29;->val$docID:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/nt/NtEditorWindowController$29;->val$settings:Lcom/metamoji/nt/NtNoteTemplateSettings;

    iput-boolean p5, p0, Lcom/metamoji/nt/NtEditorWindowController$29;->val$updateThumbnail:Z

    iput-object p6, p0, Lcom/metamoji/nt/NtEditorWindowController$29;->val$encryptor:Lcom/metamoji/cm/PBE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;
    .locals 4

    .line 4143
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$29;->val$driveID:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$29;->val$docID:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/nt/NtEditorWindowController$29;->val$settings:Lcom/metamoji/nt/NtNoteTemplateSettings;

    iget-boolean v3, p0, Lcom/metamoji/nt/NtEditorWindowController$29;->val$updateThumbnail:Z

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/dvm/DvmUtil;->newNoteTemplate(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;Z)Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    if-eqz v0, :cond_1

    .line 4145
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$29;->val$encryptor:Lcom/metamoji/cm/PBE;

    if-eqz v1, :cond_0

    .line 4146
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->setEncryptor(Lcom/metamoji/cm/PBE;)V

    :cond_0
    return-object v0

    .line 4150
    :cond_1
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "cannot create document editor from template."

    invoke-direct {v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
