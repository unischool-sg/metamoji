.class Lcom/metamoji/ui/ImportActivity$9;
.super Ljava/lang/Object;
.source "ImportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ImportActivity;->doImport(Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V
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

    .line 523
    iput-object p1, p0, Lcom/metamoji/ui/ImportActivity$9;->this$0:Lcom/metamoji/ui/ImportActivity;

    iput-object p2, p0, Lcom/metamoji/ui/ImportActivity$9;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/metamoji/ui/ImportActivity$9;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 527
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    const/4 v2, 0x0

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$9;->val$intent:Landroid/content/Intent;

    const-string v3, "closeDocument"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Lcom/metamoji/ui/ImportActivity$CancelException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "insertDocument"

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$9;->val$intent:Landroid/content/Intent;

    .line 530
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 531
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-nez v0, :cond_1

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$9;->this$0:Lcom/metamoji/ui/ImportActivity;

    invoke-static {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->restoreCurrentEditing(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 536
    const-string v4, "Import: pausing document will be closed."

    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 537
    invoke-static {v0}, Lcom/metamoji/nt/NtEditorWindowController;->closeLastEditingDocument(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$9;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/cm/IntentContent;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 543
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$9;->this$0:Lcom/metamoji/ui/ImportActivity;

    iget-object v1, p0, Lcom/metamoji/ui/ImportActivity$9;->val$intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/metamoji/ui/ImportActivity$9;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-static {v0, v1, v3}, Lcom/metamoji/ui/ImportActivity;->-$$Nest$mimportImage(Lcom/metamoji/ui/ImportActivity;Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V
    :try_end_1
    .catch Lcom/metamoji/ui/ImportActivity$CancelException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 624
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$9;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    if-eqz v0, :cond_2

    .line 625
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/cm/IntentContent;->dispose()V

    .line 627
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    return-void

    .line 545
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$9;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/cm/IntentContent;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 547
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$9;->this$0:Lcom/metamoji/ui/ImportActivity;

    iget-object v1, p0, Lcom/metamoji/ui/ImportActivity$9;->val$intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/metamoji/ui/ImportActivity$9;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-static {v0, v1, v3}, Lcom/metamoji/ui/ImportActivity;->-$$Nest$mimportAudio(Lcom/metamoji/ui/ImportActivity;Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V
    :try_end_2
    .catch Lcom/metamoji/ui/ImportActivity$CancelException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 624
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$9;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 549
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$9;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/cm/IntentContent;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 550
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$9;->this$0:Lcom/metamoji/ui/ImportActivity;

    iget-object v1, p0, Lcom/metamoji/ui/ImportActivity$9;->val$intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/metamoji/ui/ImportActivity$9;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-static {v0, v1, v3}, Lcom/metamoji/ui/ImportActivity;->-$$Nest$mimportVideo(Lcom/metamoji/ui/ImportActivity;Landroid/content/Intent;Lcom/metamoji/noteanytime/cm/IntentContent;)V
    :try_end_3
    .catch Lcom/metamoji/ui/ImportActivity$CancelException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 624
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$9;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 554
    :cond_5
    :try_start_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 555
    iget-object v4, p0, Lcom/metamoji/ui/ImportActivity$9;->val$intent:Landroid/content/Intent;

    invoke-static {v4}, Lcom/metamoji/ui/ImportActivity;->isCustomEditAction(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/metamoji/ui/ImportActivity$9;->val$intent:Landroid/content/Intent;

    const-string v5, "discard"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v1

    goto :goto_1

    :cond_6
    move v4, v2

    .line 556
    :goto_1
    iget-object v5, p0, Lcom/metamoji/ui/ImportActivity$9;->val$intent:Landroid/content/Intent;

    invoke-virtual {v5, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    move v4, v1

    :cond_7
    if-eqz v4, :cond_8

    .line 560
    const-string v4, "NtDocument:temporary"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_8
    iget-object v1, p0, Lcom/metamoji/ui/ImportActivity$9;->this$0:Lcom/metamoji/ui/ImportActivity;

    iget-object v4, p0, Lcom/metamoji/ui/ImportActivity$9;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-static {v1, v4, v0}, Lcom/metamoji/ui/ImportActivity;->-$$Nest$mimportFile(Lcom/metamoji/ui/ImportActivity;Lcom/metamoji/noteanytime/cm/IntentContent;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 563
    iget-object v1, p0, Lcom/metamoji/ui/ImportActivity$9;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 564
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/metamoji/ui/ImportActivity$9;->this$0:Lcom/metamoji/ui/ImportActivity;

    const-class v3, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 565
    const-string v1, "command"

    const-string v3, "insertNote"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    const-string v1, "importedDocId"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    .line 567
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 568
    iget-object v1, p0, Lcom/metamoji/ui/ImportActivity$9;->this$0:Lcom/metamoji/ui/ImportActivity;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/ImportActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Lcom/metamoji/ui/ImportActivity$CancelException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 624
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$9;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 572
    :cond_9
    :try_start_5
    const-string v1, "doc_decrypter"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/metamoji/cm/PBE;

    .line 573
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/metamoji/cv/CvResult$Import;

    .line 574
    const-string v1, "converterErrorCode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/Integer;

    .line 575
    const-string v1, "import:errorMessage"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 576
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v5, Lcom/metamoji/ui/ImportActivity$9$1;
    :try_end_5
    .catch Lcom/metamoji/ui/ImportActivity$CancelException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v6, p0

    :try_start_6
    invoke-direct/range {v5 .. v11}, Lcom/metamoji/ui/ImportActivity$9$1;-><init>(Lcom/metamoji/ui/ImportActivity$9;Ljava/lang/String;Lcom/metamoji/cm/PBE;Ljava/lang/String;Lcom/metamoji/cv/CvResult$Import;Ljava/lang/Integer;)V

    invoke-virtual {v0, v5}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z
    :try_end_6
    .catch Lcom/metamoji/ui/ImportActivity$CancelException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 624
    iget-object v0, v6, Lcom/metamoji/ui/ImportActivity$9;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    if-eqz v0, :cond_2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v6, p0

    .line 616
    :goto_2
    :try_start_7
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v3, Lcom/metamoji/ui/ImportActivity$9$2;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/ui/ImportActivity$9$2;-><init>(Lcom/metamoji/ui/ImportActivity$9;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 624
    iget-object v0, v6, Lcom/metamoji/ui/ImportActivity$9;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    if-eqz v0, :cond_a

    goto :goto_3

    :catch_0
    move-object v6, p0

    .line 614
    :catch_1
    :try_start_8
    iget-object v0, v6, Lcom/metamoji/ui/ImportActivity$9;->this$0:Lcom/metamoji/ui/ImportActivity;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/metamoji/ui/ImportActivity;->-$$Nest$monFailure(Lcom/metamoji/ui/ImportActivity;ZLjava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 624
    iget-object v0, v6, Lcom/metamoji/ui/ImportActivity$9;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    if-eqz v0, :cond_a

    .line 625
    :goto_3
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/cm/IntentContent;->dispose()V

    .line 627
    :cond_a
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    return-void

    :catchall_2
    move-exception v0

    .line 624
    iget-object v1, v6, Lcom/metamoji/ui/ImportActivity$9;->val$content:Lcom/metamoji/noteanytime/cm/IntentContent;

    if-eqz v1, :cond_b

    .line 625
    invoke-virtual {v1}, Lcom/metamoji/noteanytime/cm/IntentContent;->dispose()V

    .line 627
    :cond_b
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 628
    throw v0
.end method
