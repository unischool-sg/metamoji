.class Lcom/metamoji/noteanytime/EditorActivity$13;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->restoreEditingNote(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$editor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

.field final synthetic val$restoringDocEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/nt/doceditor/NtDocumentEditor;Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 1403
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$13;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$13;->val$editor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    iput-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$13;->val$restoringDocEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1408
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$13;->val$editor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$13;->val$restoringDocEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    if-eq v0, v1, :cond_1

    .line 1409
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$13;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-static {v0, v1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->restoreCurrentEditing(Lcom/metamoji/nt/doceditor/NtDocumentEditor;Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1410
    :cond_0
    const-string v0, "EA0002:cannot restore editing state."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1411
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "EA0002"

    const-string v2, "cannot restore editing state."

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
