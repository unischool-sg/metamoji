.class Lcom/metamoji/ui/ImportActivity$10;
.super Ljava/lang/Object;
.source "ImportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ImportActivity;->doImportImage(Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V
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

    .line 638
    iput-object p1, p0, Lcom/metamoji/ui/ImportActivity$10;->this$0:Lcom/metamoji/ui/ImportActivity;

    iput-object p2, p0, Lcom/metamoji/ui/ImportActivity$10;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/metamoji/ui/ImportActivity$10;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 642
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 644
    :try_start_0
    iget-object v3, p0, Lcom/metamoji/ui/ImportActivity$10;->val$intent:Landroid/content/Intent;

    const-string v4, "closeDocument"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 646
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->restoreCurrentEditing(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 648
    invoke-static {v3}, Lcom/metamoji/nt/NtEditorWindowController;->closeLastEditingDocument(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V

    .line 652
    :cond_0
    iget-object v3, p0, Lcom/metamoji/ui/ImportActivity$10;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-virtual {v3}, Lcom/metamoji/noteanytime/cm/IntentContent;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isImage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/metamoji/ui/ImportActivity$10;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-virtual {v3}, Lcom/metamoji/noteanytime/cm/IntentContent;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isVideo(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 654
    iget-object v3, p0, Lcom/metamoji/ui/ImportActivity$10;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-virtual {v3}, Lcom/metamoji/noteanytime/cm/IntentContent;->checkImageMimeType()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/metamoji/ui/ImportActivity$10;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    .line 655
    invoke-virtual {v3}, Lcom/metamoji/noteanytime/cm/IntentContent;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isImage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/metamoji/ui/ImportActivity$10;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-virtual {v3}, Lcom/metamoji/noteanytime/cm/IntentContent;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isVideo(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 656
    :cond_1
    iget-object v3, p0, Lcom/metamoji/ui/ImportActivity$10;->this$0:Lcom/metamoji/ui/ImportActivity;

    sget v4, Lcom/metamoji/noteanytime/R$string;->ImportImageMessage:I

    invoke-static {v3, v1, v0, v4}, Lcom/metamoji/ui/ImportActivity;->-$$Nest$monFailure(Lcom/metamoji/ui/ImportActivity;ZLjava/lang/String;I)V
    :try_end_0
    .catch Lcom/metamoji/ui/ImportActivity$CancelException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 725
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$10;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    if-eqz v0, :cond_2

    .line 726
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/cm/IntentContent;->dispose()V

    .line 728
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    return-void

    .line 661
    :cond_3
    :try_start_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 662
    iget-object v4, p0, Lcom/metamoji/ui/ImportActivity$10;->val$intent:Landroid/content/Intent;

    invoke-static {v4}, Lcom/metamoji/ui/ImportActivity;->isCustomEditAction(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/metamoji/ui/ImportActivity$10;->val$intent:Landroid/content/Intent;

    const-string v5, "discard"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 664
    const-string v4, "NtDocument:temporary"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    :cond_4
    iget-object v1, p0, Lcom/metamoji/ui/ImportActivity$10;->this$0:Lcom/metamoji/ui/ImportActivity;

    iget-object v4, p0, Lcom/metamoji/ui/ImportActivity$10;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-static {v1, v4, v3}, Lcom/metamoji/ui/ImportActivity;->-$$Nest$mimportFile(Lcom/metamoji/ui/ImportActivity;Lcom/metamoji/noteanytime/cm/IntentContent;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 667
    const-string v1, "doc_decrypter"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/metamoji/cm/PBE;

    .line 668
    const-string v1, "errorCode"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/metamoji/cv/CvResult$Import;

    .line 669
    const-string v1, "converterErrorCode"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/Integer;

    .line 670
    const-string v1, "import:errorMessage"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    .line 671
    const-string v1, "import:editorExternalCommand"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/metamoji/noteanytime/EditorExternalCommand;

    .line 672
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v5, Lcom/metamoji/ui/ImportActivity$10$1;
    :try_end_1
    .catch Lcom/metamoji/ui/ImportActivity$CancelException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, p0

    :try_start_2
    invoke-direct/range {v5 .. v12}, Lcom/metamoji/ui/ImportActivity$10$1;-><init>(Lcom/metamoji/ui/ImportActivity$10;Ljava/lang/String;Lcom/metamoji/cm/PBE;Lcom/metamoji/noteanytime/EditorExternalCommand;Ljava/lang/String;Lcom/metamoji/cv/CvResult$Import;Ljava/lang/Integer;)V

    invoke-virtual {v1, v5}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Lcom/metamoji/ui/ImportActivity$CancelException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 725
    iget-object v0, v6, Lcom/metamoji/ui/ImportActivity$10;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    if-eqz v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v6, p0

    .line 717
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v3, Lcom/metamoji/ui/ImportActivity$10$2;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/ui/ImportActivity$10$2;-><init>(Lcom/metamoji/ui/ImportActivity$10;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 725
    iget-object v0, v6, Lcom/metamoji/ui/ImportActivity$10;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    if-eqz v0, :cond_5

    goto :goto_2

    :catch_0
    move-object v6, p0

    .line 715
    :catch_1
    :try_start_4
    iget-object v1, v6, Lcom/metamoji/ui/ImportActivity$10;->this$0:Lcom/metamoji/ui/ImportActivity;

    invoke-static {v1, v2, v0, v2}, Lcom/metamoji/ui/ImportActivity;->-$$Nest$monFailure(Lcom/metamoji/ui/ImportActivity;ZLjava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 725
    iget-object v0, v6, Lcom/metamoji/ui/ImportActivity$10;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    if-eqz v0, :cond_5

    .line 726
    :goto_2
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/cm/IntentContent;->dispose()V

    .line 728
    :cond_5
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    return-void

    :catchall_2
    move-exception v0

    .line 725
    iget-object v1, v6, Lcom/metamoji/ui/ImportActivity$10;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    if-eqz v1, :cond_6

    .line 726
    invoke-virtual {v1}, Lcom/metamoji/noteanytime/cm/IntentContent;->dispose()V

    .line 728
    :cond_6
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 729
    throw v0
.end method
