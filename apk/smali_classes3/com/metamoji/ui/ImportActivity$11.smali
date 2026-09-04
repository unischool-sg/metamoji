.class Lcom/metamoji/ui/ImportActivity$11;
.super Ljava/lang/Object;
.source "ImportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ImportActivity;->doImportAudio(Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/ImportActivity;

.field final synthetic val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ImportActivity;Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V
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

    .line 738
    iput-object p1, p0, Lcom/metamoji/ui/ImportActivity$11;->this$0:Lcom/metamoji/ui/ImportActivity;

    iput-object p2, p0, Lcom/metamoji/ui/ImportActivity$11;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/metamoji/ui/ImportActivity$11;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 742
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    const/4 v2, 0x0

    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$11;->val$intent:Landroid/content/Intent;

    const-string v3, "closeDocument"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->restoreCurrentEditing(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 748
    invoke-static {v0}, Lcom/metamoji/nt/NtEditorWindowController;->closeLastEditingDocument(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$11;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/cm/IntentContent;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isAudio(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/metamoji/ui/ImportActivity$CancelException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    .line 813
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$11;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    if-eqz v0, :cond_1

    .line 814
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/cm/IntentContent;->dispose()V

    .line 816
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    return-void

    .line 755
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 756
    iget-object v3, p0, Lcom/metamoji/ui/ImportActivity$11;->val$intent:Landroid/content/Intent;

    invoke-static {v3}, Lcom/metamoji/ui/ImportActivity;->isCustomEditAction(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/metamoji/ui/ImportActivity$11;->val$intent:Landroid/content/Intent;

    const-string v4, "discard"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 758
    const-string v3, "NtDocument:temporary"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    :cond_3
    iget-object v1, p0, Lcom/metamoji/ui/ImportActivity$11;->this$0:Lcom/metamoji/ui/ImportActivity;

    iget-object v3, p0, Lcom/metamoji/ui/ImportActivity$11;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-static {v1, v3, v0}, Lcom/metamoji/ui/ImportActivity;->-$$Nest$mimportFile(Lcom/metamoji/ui/ImportActivity;Lcom/metamoji/noteanytime/cm/IntentContent;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 761
    const-string v1, "doc_decrypter"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/metamoji/cm/PBE;

    .line 762
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/metamoji/cv/CvResult$Import;

    .line 763
    const-string v1, "converterErrorCode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/Integer;

    .line 764
    const-string v1, "import:errorMessage"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 765
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v4, Lcom/metamoji/ui/ImportActivity$11$1;
    :try_end_1
    .catch Lcom/metamoji/ui/ImportActivity$CancelException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, p0

    :try_start_2
    invoke-direct/range {v4 .. v10}, Lcom/metamoji/ui/ImportActivity$11$1;-><init>(Lcom/metamoji/ui/ImportActivity$11;Ljava/lang/String;Lcom/metamoji/cm/PBE;Ljava/lang/String;Lcom/metamoji/cv/CvResult$Import;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Lcom/metamoji/ui/ImportActivity$CancelException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 813
    iget-object v0, v5, Lcom/metamoji/ui/ImportActivity$11;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v5, p0

    .line 805
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v3, Lcom/metamoji/ui/ImportActivity$11$2;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/ui/ImportActivity$11$2;-><init>(Lcom/metamoji/ui/ImportActivity$11;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 813
    iget-object v0, v5, Lcom/metamoji/ui/ImportActivity$11;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    if-eqz v0, :cond_4

    goto :goto_2

    :catch_0
    move-object v5, p0

    .line 803
    :catch_1
    :try_start_4
    iget-object v0, v5, Lcom/metamoji/ui/ImportActivity$11;->this$0:Lcom/metamoji/ui/ImportActivity;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/metamoji/ui/ImportActivity;->-$$Nest$monFailure(Lcom/metamoji/ui/ImportActivity;ZLjava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 813
    iget-object v0, v5, Lcom/metamoji/ui/ImportActivity$11;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    if-eqz v0, :cond_4

    .line 814
    :goto_2
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/cm/IntentContent;->dispose()V

    .line 816
    :cond_4
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    return-void

    :catchall_2
    move-exception v0

    .line 813
    iget-object v1, v5, Lcom/metamoji/ui/ImportActivity$11;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    if-eqz v1, :cond_5

    .line 814
    invoke-virtual {v1}, Lcom/metamoji/noteanytime/cm/IntentContent;->dispose()V

    .line 816
    :cond_5
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 817
    throw v0
.end method
